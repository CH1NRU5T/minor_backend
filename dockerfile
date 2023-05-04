FROM node:14

WORKDIR /DCRYPTOR-BACKEND

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install
RUN apt-get update -y
RUN apt-get install python -y
RUN apt-get install python3-pip -y
RUN pip3 install -r requirements.txt
COPY . .

EXPOSE 80
CMD  ["npm", "start"]