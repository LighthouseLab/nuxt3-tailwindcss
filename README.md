# Nuxt 3 Starter Kit

This is a Nuxt 3 Starter Kit with Vite, Vue 3, TypeScript, PostCSS and TailwindCSS!

## Features

This starter kit includes the following features:

- Nuxt 3, a Vue 3 framework for creating modern web applications.
- Vite, a fast and lightweight bundler so you can start developing right away.
- TypeScript, a typed superset of JavaScript that improves the developer experience and reduces the number of bugs in your application.
- TailwindCSS for styling your application and PostCSS for processing your CSS.

With the included TailwindCSS set-up, both Tailwind classes and 'semantic' classes can be used, so you can rapidly prototype your application, and refactor it later to using more 'semantic' class names.

For example, you can use `<span class="text-red-500">`,
or `<span class="some-red-span">` in your `<template>` with `.some-red-span { @apply text-red-500; }` in your `<style>`.

You can also use other TailwindCSS directives and extend your theme them in the `tailwind.config.js` file.

See the [TailwindCSS documentation][] for more details.

## Getting started

For starting the dev server, you have multiple options:

**1. Using an online development environment**

You can use an online development environment to start developing right away. The benefits of using an online development environment is that you don't need to install anything locally on your machine. Just start hacking right away. Some of the online development environments I recommend are:

  - [Stackblitz][online-dev-env-stackblitz]
  - [GitHub Codespaces][online-dev-env-github-codespaces]
  - [VSCode on the web][online-dev-env-vscode-web] 

**2. Using a local, containerized development environment**

If you're a more serious developer, you can use a local, containerized development environment. 

The benefits of using a local, containerized development environment is that you don't need to install the right versions of Node.js, Yarn, Git, etc as it's all included, configured and ready to use in the container.

There are various ways to use a local, containerized development environment with this starter kit:

- You can use [VSCode][vscode] with the [Remote Containers / Dev Containers][vscode-remote-containers] extension to start developing right away.
  - With the right extensions installed, just open the project in VSCode and it will ask you if you want to open it in a container.
- You can use [Docker Compose][docker-compose] to start developing right away:
  - `docker-compose -f docker-compose.dev.yml up`
- You can use [Docker][docker] to start developing right away:
  - Using the included Dockerfile:
    1. Build image: `docker build --no-cache -t ricardobalk/nuxt3-tailwindcss:latest --target development -f Dockerfile .`
    2. Run image in container: `docker run --rm -it -p 3000:3000 -v "$(pwd):/home/node/app:cached" ricardobalk/nuxt3-tailwindcss:latest`
  - Without using the included Dockerfile:
    - `docker run -it --rm -v "$(pwd):/app" -p 3000:3000 -w /app node:18.15.0-alpine3.16 yarn dev`


> Note: For the other geeks out there, take a look at the `Dockerfile` and `docker-compose.*.yml` to see how the containers are set up. The dockerfile has a multi-stage build, to keep the final image as small as possible.

**3. Using a local Node.js installation**

You can also use a local Node.js installation. 

  - `yarn install` to install the dependencies
  - `yarn dev` to start the development server on http://localhost:3000
  - `yarn build` to build the application for production
  - `yarn start` to start the production server
  - or `yarn generate` to generate the application for static hosting

See the [official Nuxt 3 deployment documentation][] for more details.

## License

[ISC License](LICENSE)

<!-- Links used in the document -->
[docker-compose]: https://docs.docker.com/compose/
[docker]: https://www.docker.com/
[official Nuxt 3 deployment documentation]: https://nuxt.com/docs/getting-started/deployment
[online-dev-env-github-codespaces]: http://github.dev/ricardobalk/nuxt3-tailwindcss
[online-dev-env-stackblitz]: https://stackblitz.com/github/ricardobalk/nuxt3-tailwindcss
[online-dev-env-vscode-web]: https://vscode.dev/github/ricardobalk/nuxt3-tailwindcss
[TailwindCSS documentation]: https://tailwindcss.com/docs
[vscode-remote-containers]: https://code.visualstudio.com/docs/remote/containers
[vscode]: https://code.visualstudio.com/