FROM node:latest
RUN sudo apt update -y && sudo apt upgrade -y
RUN npm install -g newman newman-reporter-html

WORKDIR .

ENTRYPOINT ["newman"]
# FROM postman/newman
# COPY . /etc/newman
# WORKDIR /etc/newman
# ENTRYPOINT [ "newman" ]