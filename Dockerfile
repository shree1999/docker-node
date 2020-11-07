# download a base image for initialization
FROM node 

# Create a working directory in the file snapshot system of the base image which will house our nodejs code.
WORKDIR /app

# Copy the contents of the file from root directory where docker file is there to the working directory
COPY . /app

# The run command is used when we want to execute line of code when we are CREATING A IMAGE
RUN npm install 

# A command for documentation that helps us understand which tells us which port is availaible for listening
EXPOSE 8080

# This line is executed when we have created the image and when we create a container out of it. In this case npm start runs when container is created.
CMD ["npm", "start"]