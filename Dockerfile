FROM node:8
MAINTAINER snia
COPY Swordfish-basic-web-client /
RUN node -v && npm -v 
WORKDIR /
#RUN git clone https://github.com/SNIA/Swordfish-basic-web-client.git 
WORKDIR /Swordfish-basic-web-client
RUN npm install -g express && npm install -g @angular/cli@1.0.0
RUN echo "angular version is: " && ng -v
RUN npm install && ls  
WORKDIR /Swordfish-basic-web-client/views
RUN npm install && ls && ng build && ls
WORKDIR /Swordfish-basic-web-client/
ENTRYPOINT npm start
