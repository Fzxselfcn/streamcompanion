# Use an official Node runtime as the base image
FROM node:20.11.1

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json into the directory /app in the container
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of the working directory contents into the container at /app
COPY . .

# Make port 8100 available to the world outside this container
EXPOSE 8100

# Run the app when the container launches
CMD ["npm", "start"]