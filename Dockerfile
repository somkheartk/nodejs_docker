FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

# ปิดการตรวจสอบ SSL ชั่วคราว
RUN npm config set strict-ssl false && npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
