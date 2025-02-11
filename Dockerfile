# Use the official Node.js 14 image as the base
FROM node:14

# Create and set the working directory in the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your application will run on
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "index.js" ]
