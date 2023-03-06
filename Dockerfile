FROM node:16.19.0-alpine3.17 as build
# node:10 AS ui-build
# node:16.19.0-alpine3.17
WORKDIR /usr/src/app
COPY ./ ./my-app/
RUN cd my-app && npm install @angular/cli && npm install && npm run build
EXPOSE 3000
CMD ["npm", "run","start"]

#FROM node:16.19.0-alpine3.17 AS server-build
#WORKDIR /root/
#COPY --from=ui-build /usr/src/app/my-app/dist ./my-app/dist
#COPY package*.json ./
#RUN npm install
##COPY server.js .
#
#EXPOSE 3000
#
##CMD ["node", "server.js"]
#CMD ["npm", "run","start"]

# v10.24.1
