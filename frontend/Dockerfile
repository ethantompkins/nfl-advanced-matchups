# Use an official Node.js image
FROM node:16

# Set the working directory
WORKDIR /frontend

# Copy the package.json and install dependencies
COPY package.json /frontend/
RUN npm install

# Copy the rest of the application code
COPY . /frontend

# Build the React application
RUN npm run build

# Use a minimal web server to serve the built files
RUN npm install -g serve
CMD ["serve", "-s", "build"]

# Expose the port the app runs on
EXPOSE 3000
