from node:alpine

WORKDIR '/app'
COPY package.jon .
RUN npm install
COPY . .

CMD ["node,"index.js"]
