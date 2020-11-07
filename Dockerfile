# download a base image for initialization
FROM node 

# Create a working directory in the file snapshot system of the base image which will house our nodejs code.
WORKDIR /app

# Copy first package.json to app folder in FS System
COPY package.json /app

# The run command is used when we want to execute line of code when we are CREATING A IMAGE
RUN npm install 

# Then copy all the files 
# The change is done because whenever we change our source code then the image don't get updated automatically for that we have to run docker build
COPY . /app

# A command for documentation that helps us understand which tells us which port is availaible for listening
EXPOSE 8080

# This line is executed when we have created the image and when we create a container out of it. In this case npm start runs when container is created.
CMD ["npm", "start"]