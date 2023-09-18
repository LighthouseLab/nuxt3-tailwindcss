FROM node:18.17.1-alpine3.17 as node-base
# docker build --no-cache --progress plain -t ricardobalk/nuxt3-tailwindcss:latest --target <target> -f Dockerfile .

RUN apk add --no-cache git

USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm
ENV PATH=$PATH:/home/node/.npm/bin


RUN mkdir -p  "${HOME}/app" \
              "${NPM_CONFIG_PREFIX}/bin"

RUN printf  "Node version %s, npm version %s, yarn version %s\n\n" \
            "$(node -v)" "$(npm -v)" "$(yarn -v)"

FROM node-base as dependencies
USER node
WORKDIR /home/node/app
COPY --chown=node:node . .
RUN yarn
ENTRYPOINT ["yarn", "run"]

FROM dependencies as development
USER node
EXPOSE 3000
CMD ["dev"]
# && docker run -it -p 3000:3000 -v "$(pwd):/home/node/app:cached" ricardobalk/nuxt3-tailwindcss:latest

FROM dependencies as build
USER node
RUN ["yarn", "run", "generate"]

FROM nginx:1.25.2-alpine3.18-slim as deployment
COPY --from=build /home/node/app/.output/public /usr/share/nginx/html
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
# && docker run -it -p 80:80 -p 443:443 -v "$(pwd)/nginx.conf:/etc/nginx/conf.d/default.conf:cached" ricardobalk/nuxt3-tailwindcss:latest