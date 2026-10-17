FROM node:22-alpine AS web
WORKDIR /src
COPY package.json package-lock.json .npmrc ./
RUN npm ci
COPY . .
RUN npm run build

FROM traccar/traccar:6.16.0
RUN rm -rf /opt/traccar/web
COPY --from=web /src/build /opt/traccar/web
EXPOSE 8082
