# Inception

## Overview
Inception is a project designed to create a scalable web infrastructure using Docker and Docker Compose. It focuses on setting up and managing multiple services, such as Nginx, WordPress, and MariaDB, while emphasizing best practices in containerization, networking, and data persistence.

## Features
- **Service Deployment**: Set up multiple services in isolated containers.
- **Container Orchestration**: Utilize Docker Compose for efficient service management.
- **Data Persistence**: Implement volumes to maintain data between container restarts.
- **Networking**: Configure inter-service communication using Docker networks.
- **Security**: Basic implementation of security measures, including HTTPS configuration.

## Technologies Used
- **Docker**: For containerization of applications.
- **Docker Compose**: For managing multi-container applications.
- **Nginx**: As a reverse proxy server.
- **WordPress**: For content management.
- **MariaDB**: For database management.

## Getting Started

### Prerequisites
- Install Docker: [Get Docker](https://docs.docker.com/get-docker/)
- Install Docker Compose: [Get Docker Compose](https://docs.docker.com/compose/install/)

### Installation
1. Clone this repository:
  ```
     bash
     git clone https://github.com/yourusername/inception.git
     cd inception
  ```
2.Build and run the containers:
  ```
    docker-compose up -d
  ```
3. Access the Services:
- Nginx: `http://localhost`
- WordPress: `http://localhost:8000`
- phpMyAdmin (if included): `http://localhost:8080`

### Configuration
- Modify the `docker-compose.yml` file to customize service settings.
- Use `.env` files to manage environment variables for sensitive information.

## Contributing
Contributions are welcome! Please create a pull request or open an issue for any enhancements or bugs.

## License
This project is licensed under the MIT License.
