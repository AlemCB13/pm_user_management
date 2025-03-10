# User Management Microservice (`pm_user_management`)

This microservice handles user management, including creating, updating, deleting, and retrieving users. It uses **PostgreSQL** as the database and is built with **Spring Boot** and **Java 17**.

---

## Table of Contents

1. [Requirements](#requirements)
2. [Getting Started](#getting-started)
   - [Running with Docker](#running-with-docker)
   - [Running Locally](#running-locally)
3. [API Endpoints](#api-endpoints)
4. [Testing](#testing)
   - [Using Postman](#using-postman)
   - [Test Cases](#test-cases)
5. [Contributing](#contributing)
6. [License](#license)

---

## Requirements

- **Docker**: Ensure Docker and Docker Compose are installed on your machine.
- **Postman** (optional): For testing the API endpoints.

---

## Getting Started

### Running with Docker

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/pm_user_management.git
   cd pm_user_management
   ```
2. **Build and Run the Containers**:
   ```bash
   docker-compose up --build
   ```
3. **Access the Microservice**:
   - The microservice will be available at [http://localhost:8081](http://localhost:8081).

### Running Locally

1. **Install Java 17**:
   - Download and install Java 17 from the [official website](https://adoptium.net/).

2. **Install Maven**:
   - Download and install Maven from the [official website](https://maven.apache.org/download.cgi).

3. **Run the Microservice**:
   ```bash
   mvn clean install
   mvn spring-boot:run
   ```
4. **Access the Microservice**:
   - The microservice will be available at [http://localhost:8080](http://localhost:8080).

---

## API Endpoints

### Register a User
**Method:** `POST`

**URL:** `/users`

**Body (JSON):**
```json
{
  "username": "testuser",
  "password": "testpass",
  "email": "test@example.com",
  "role": "USER"
}
```

### Get a User by ID
**Method:** `GET`

**URL:** `/users/{id}`

### Update a User
**Method:** `PUT`

**URL:** `/users/{id}`

**Body (JSON):**
```json
{
  "username": "updateduser",
  "password": "updatedpass",
  "email": "updated@example.com",
  "role": "ADMIN"
}
```

### Delete a User
**Method:** `DELETE`

**URL:** `/users/{id}`

---

## Testing

### Using Postman
1. **Import the Collection**:
   - Import the provided Postman collection to test the endpoints.
2. **Set Environment Variables**:
   - Create an environment in Postman and set the token variable after logging in.

### Test Cases
- **Register a User**:
  - Send a `POST` request to `/users` with valid user data.
- **Get a User by ID**:
  - Send a `GET` request to `/users/{id}` with a valid user ID.
- **Update a User**:
  - Send a `PUT` request to `/users/{id}` with updated user data.
- **Delete a User**:
  - Send a `DELETE` request to `/users/{id}` with a valid user ID.
- **Test Edge Cases**:
  - Try to register a user with invalid data.
  - Try to get, update, or delete a user that does not exist.

---

## Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**.
2. **Create a new branch**:
   ```bash
   git checkout -b feature/YourFeature
   ```
3. **Commit your changes**:
   ```bash
   git commit -m 'Add some feature'
   ```
4. **Push to the branch**:
   ```bash
   git push origin feature/YourFeature
   ```
5. **Open a pull request**.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## Contact

For any questions or issues, please open an issue on GitHub or contact the maintainer.
