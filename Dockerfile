# Use an official Node.js image to build and run the application
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Build the React application
RUN npm run build

# Install a simple HTTP server to serve the static files
RUN npm install -g serve

# Expose port 3000
EXPOSE 3000

# Start the server to serve the static files
CMD ["serve", "-s", "build", "-l", "3000"]
