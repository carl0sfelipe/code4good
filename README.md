# Code4Good

**Code4Good** is a collaborative platform for developing non-profit web applications aimed at solving social issues and supporting NGOs. Users can suggest ideas, form development teams, and turn those ideas into complete projects.

## Technologies Used

- **Frontend**: React with Vite
- **Backend**: Node.js with Express
- **Database**: PostgreSQL
- **Containerization**: Docker and Docker Compose

## Project Structure

```plaintext
code4good/
├── backend/
│   ├── Dockerfile
│   ├── src/
│   │   ├── app.js
│   │   ├── controllers/
│   │   ├── routes/
│   │   └── config/
│   └── package.json
├── frontend/
│   ├── Dockerfile
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   ├── App.jsx
│   │   ├── index.jsx
│   └── package.json
└── docker-compose.yml
```

## Setup Instructions

### Prerequisites

- Docker and Docker Compose installed on your system.

### Steps

1. **Clone the repository**:
   ```bash
   git clone <REPOSITORY_URL>
   cd code4good
   ```

2. **Build and start the containers**:
   ```bash
   docker-compose up --build
   ```

### Access the Application

- **Backend**: [http://localhost:5000](http://localhost:5000)
- **Frontend**: [http://localhost:5173](http://localhost:5173)

## Key Features

### Backend

- **API Endpoints**:
  - **GET /api/users**: Retrieve all users.
  - **POST /api/users**: Create a new user.

### Frontend

- **Create User Form**: Form to create a new user and submit the data to the backend.

## Initial Database Setup

**database/init.sql**:

```sql
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
);

CREATE TABLE ideas (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  description TEXT,
  user_id INT REFERENCES users(id)
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  idea_id INT REFERENCES ideas(id)
);

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  description TEXT,
  project_id INT REFERENCES projects(id)
);
```

## Contributions

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License.

## Contact

For any inquiries or issues, please contact [your_email@example.com].
