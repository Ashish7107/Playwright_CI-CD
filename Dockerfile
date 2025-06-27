# Use the official Playwright Docker image
FROM mcr.microsoft.com/playwright:v1.40.0-jammy

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy Playwright config and tests
COPY playwright.config.ts ./
COPY tests/ ./tests/

# Install Playwright browsers
RUN npx playwright install --with-deps

# Expose port for Playwright UI (optional)
EXPOSE 9323

# Default command to run tests
CMD ["npx", "playwright", "test"] 