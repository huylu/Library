FROM node:0.12.7

RUN ["npm", "install", "gulp", "-g"]
RUN ["npm", "install", "bower", "-g"]
RUN ["npm", "install", "grunt-cli", "-g"]

COPY . /app
WORKDIR /app

RUN ["npm", "install"]
RUN ["bower", "--allow-root", "install"]

EXPOSE 4000

ENTRYPOINT ["gulp"]
