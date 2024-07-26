# SSD
# Student Success Dashboard

## Overview
The Student Success Dashboard is a web application designed to help manage student and advisor data. The application provides a portal for students and advisors to interact, view grades, and manage courses.

## Setup and Installation

### Prerequisites
- Python 3.8+
- PostgreSQL
- Docker (for production deployment)
- GitHub Actions (for CI/CD)

### Local Development Setup
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/student-success-dashboard.git
    cd student-success-dashboard
    ```

2. Create a virtual environment and activate it:
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. Install the dependencies:
    ```bash
    pip install -r requirements.txt
    ```

4. Create a `.env` file in the root directory and add the following variables:
    ```env
    DB_NAME=ssdDatabase
    DB_USER=postgres
    DB_PASSWORD=sql123
    SECRET_KEY=your_secret_key
    FLASK_ENV=development
    ```

5. Run the PostgreSQL server locally on port 5433.

6. Run the Flask application:
    ```bash
    flask run
    ```

### Docker Setup
1. Build and start the Docker containers:
    ```bash
    docker-compose up --build
    ```

2. Access the application at `http://localhost`.

### CI/CD with GitHub Actions
1. Create GitHub Secrets for `DB_PASSWORD`, `DOCKER_USERNAME`, `DOCKER_PASSWORD`, and `HEROKU_API_KEY`.

2. The GitHub Actions workflow is configured to:
    - Build the Docker image
    - Push the Docker image to Docker Hub
    - Deploy the Docker image to Heroku

## Configuration
The application uses a single `.env` file for configuration. The `config.py` file dynamically sets the database host and port based on the `FLASK_ENV` environment variable.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

## License
This project is licensed under the MIT License.

