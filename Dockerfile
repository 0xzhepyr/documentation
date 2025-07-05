FROM node:22-alpine

WORKDIR /app

COPY . .

RUN if [ -f package.json ]; then npm install; fi

EXPOSE 3000

CMD ["npm", "start"]
