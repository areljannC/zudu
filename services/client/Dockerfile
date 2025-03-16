# use Node 18 on Alpine Linux
FROM node:18-alpine

# set container working directory name
WORKDIR /service

# copy package.json from host to container working directory
COPY package*.json ./

# install dependencies
RUN npm install

# copy project files from host to container working directory
COPY . .

# use port 3000
EXPOSE 3000

# run service
CMD ["npm", "run", "dev"]
