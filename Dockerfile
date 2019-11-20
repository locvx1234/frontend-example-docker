FROM ubuntu:16.04
RUN apt update -y
RUN apt install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

WORKDIR /code
COPY . /code
RUN npm install
CMD npm start
EXPOSE 5000 
