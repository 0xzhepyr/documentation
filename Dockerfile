FROM node:22-alpine

WORKDIR /app

# Install Mintlify CLI (mint) secara global
RUN npm install -g mint

COPY . .

RUN if [ -f package.json ]; then npm install; fi

EXPOSE 3000

CMD ["mint", "dev"]
