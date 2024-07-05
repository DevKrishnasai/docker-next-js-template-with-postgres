FROM node:20

WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
# development
CMD [ "npm","run","dev"]
USER node
# production
# RUN prisma generate && prisma migrate deploy && npm run build
# CMD ["npm", "start"]
