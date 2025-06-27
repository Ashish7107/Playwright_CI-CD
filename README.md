# Playwright CI/CD Framework

A Playwright testing framework configured for both local development and CI/CD pipelines with Docker support.

## Prerequisites

- Node.js (v16 or higher)
- Docker and Docker Compose
- Git

## Local Development

### Without Docker
```bash
# Install dependencies
npm install

# Run tests
npm test

# Run tests with UI
npm run test:ui

# Run tests in headed mode
npm run test:headed
```

### With Docker
```bash
# Build and run tests in Docker
npm run docker:build
npm run docker:run

# Or use Docker Compose for development
npm run docker:dev

# Clean up Docker resources
npm run docker:clean
```

## Docker Commands

### Build the Docker image
```bash
docker build -t playwright-tests .
```

### Run tests in container
```bash
docker run --rm playwright-tests
```

### Run with Docker Compose (recommended for development)
```bash
docker-compose up --build
```

### Access Playwright UI
When running with Docker Compose, the Playwright UI will be available at:
- http://localhost:9323

## Project Structure

```
├── tests/                 # Test files
├── tests-examples/        # Example test files
├── playwright.config.ts   # Playwright configuration
├── Dockerfile            # Docker configuration
├── docker-compose.yml    # Docker Compose configuration
├── .dockerignore         # Docker ignore file
└── package.json          # Node.js dependencies and scripts
```

## Test Results

Test results and reports are automatically generated in:
- `test-results/` - Screenshots, videos, and traces
- `playwright-report/` - HTML test reports

## CI/CD Integration

This setup is ready for CI/CD integration. The Docker configuration includes:
- Optimized for CI environments
- Proper volume mounting for test artifacts
- Environment-specific configurations
- Cross-platform compatibility (Windows, macOS, Linux)

## Available Scripts

- `npm test` - Run tests in headless mode
- `npm run test:headed` - Run tests with browser visible
- `npm run test:ui` - Run tests with Playwright UI
- `npm run test:debug` - Run tests in debug mode
- `npm run docker:build` - Build Docker image
- `npm run docker:run` - Run tests in Docker
- `npm run docker:dev` - Start development environment with Docker Compose
- `npm run docker:clean` - Clean up Docker resources