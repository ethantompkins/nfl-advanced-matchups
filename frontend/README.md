# Frontend Setup

## Prerequisites
- Node.js
- Docker

## Setup Instructions

1. **Install Dependencies**
   ```sh
   npm install
   ```

2. **Run the React App Locally**
   ```sh
   npm start
   ```

3. **Build and Run Docker Container**
   ```sh
   docker build -t nfl-frontend .
   docker run -d -p 3000:3000 --name nfl-frontend nfl-frontend
   ```