FROM node:14.21.3-alpine3.17

# mkdir and cd
WORKDIR /project

# copy package.json into /project
ADD package.json /project 

# install dependencies
RUN yarn

# install dependencies before copy whole project will utilize the docker cache and prevent it from installing packages every time you need to build your image
ADD . /project 

CMD yarn dev