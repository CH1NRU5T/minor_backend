FROM node:14

WORKDIR ./

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY . .

RUN npm install
RUN apt-get update -y
RUN apt-get install python -y
RUN apt-get install python3-bs4 -y
RUN apt-get install python3-requests -y
# RUN apt-get install python3-pip -y
# RUN pip3 install -r requirements.txt
# RUN pip install bs4
# RUN pip install requests

EXPOSE 80
CMD  ["npm", "start"]