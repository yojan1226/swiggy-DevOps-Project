# Using Node.js 16 as the base image
FROM node:16

# Setting up the working directory
WORKDIR /app

# Copying the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Installation of npm dependency
RUN npm install

# Copy the application code
COPY . .

# Buildinf of the React app
RUN npm run build

# installation of g serve
RUN npm install -g serve

# Expose port 3000 to access app
EXPOSE 3000

# Start your Node.js server
CMD ["serve", "-s", "build", "-l", "3000"]
