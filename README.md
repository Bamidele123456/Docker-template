# Dockerized Flask + Redis Template

This project is a simple template for running a Flask web application with a Redis backend using Docker and Docker Compose. It demonstrates how to increment a counter stored in Redis every time the root page is visited.

## Features
- **Flask** web server
- **Redis** as a backend service
- **Docker** and **Docker Compose** for easy setup
- Example test script for Redis

## Project Structure
```
├── app.py              # Main Flask app with Redis integration
├── main.py             # Minimal Flask app (Hello World)
├── test.py             # Simple Redis test script
├── requirements.txt    # Python dependencies
├── Dockerfile          # Container build instructions
├── docker-compose.yml  # Multi-container orchestration
├── .dockerignore       # Files to ignore in Docker build
```

## Getting Started

### Prerequisites
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)

### Quick Start
1. **Clone the repository:**
   ```sh
   git clone https://github.com/Bamidele123456/Docker-template.git
   cd Docker-template
   ```
2. **Build and start the services:**
   ```sh
   docker-compose up --build
   ```
3. **Visit the app:**
   Open [http://localhost:5000](http://localhost:5000) in your browser. You should see a message showing how many times the page has been visited (tracked in Redis).

### Stopping the services
```sh
docker-compose down
```

## File Descriptions
- **app.py**: Flask app that connects to Redis and increments a counter on each visit.
- **main.py**: Minimal Flask app for demonstration (not used in Docker setup).
- **test.py**: Standalone script to test Redis connection and basic operations.
- **requirements.txt**: Lists all Python dependencies.
- **Dockerfile**: Builds the Flask app image.
- **docker-compose.yml**: Defines the Flask and Redis services.
- **.dockerignore**: Prevents .env and other files from being added to the Docker image.

## Environment Variables
- `REDIS_HOST`: Hostname for the Redis server (default: `redis`). Set in `docker-compose.yml` for the web service.

## Running Tests
You can test the Redis connection and basic set/get operations by running:
```sh
python test.py
```
Make sure Redis is running (either via Docker Compose or locally) and accessible at `localhost:6379`.

## Customization
- Modify `app.py` to add more routes or logic.
- Add more dependencies to `requirements.txt` as needed.

## License
MIT 