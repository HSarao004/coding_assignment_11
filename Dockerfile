# Dockerfile

# Use an official Node.js runtime as a parent image
FROM node:lts-buster

# Set the working directory inside the container
WORKDIR /sarao_harsimran_site/

# Copy package.json and package-lock.json to workdir
COPY package.json package-lock.json /sarao_harsimran_site/

# Install dependencies
RUN npm install

# Copy the entire project to workdir
COPY . /sarao_harsimran_site/

# Expose port 7775 to outside world
EXPOSE 7775

# Command to run the application
CMD ["npm", "start"]
