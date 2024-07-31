# Creating a base image
FROM node:latest

# Setting the working directory to /app
WORKDIR /usr/src/app

# Copying the package*.json files
COPY package*.json ./
COPY . . 
#Installing dependencies
RUN npm install

# copying the rest of the files
# copy . . 

# exposing the app to public
EXPOSE 3001

# runnuing the application in the container
CMD ["node", "main.js"]
ENTRYPOINT ["node", "app.js"]

