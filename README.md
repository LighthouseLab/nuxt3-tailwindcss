# Nuxt 3 Starter Kit

This is a Nuxt 3 Starter Kit with Vite, Vue 3, TypeScript, PostCSS and TailwindCSS!

## Features

This starter kit includes the following features:

- **Nuxt 3** &mdash; a Vue 3 framework for creating modern web applications.
- **Vite** &mdash; a fast and lightweight bundler so you can start developing right away.
- **TypeScript** &mdash; a typed superset of JavaScript that improves the developer experience and reduces the number of bugs in your application.
- **TailwindCSS** &mdash; a utility-first CSS framework for rapidly building custom user interfaces.

With the included TailwindCSS set-up, both Tailwind classes and 'semantic' classes can be used, so you can rapidly prototype your application, and refactor it later to using more 'semantic' class names.

Example 1 (using a TailwindCSS class name):

```vue
<template>
  <span class="text-red-500">This is red</span>
</template>
```

You would use this when you're rapidly prototyping your application.

Example 2 (using a 'semantic' class name)):

```vue
<template>
  <span class="some-red-span">This is red</span>
</template>

<style lang="postcss">
.some-red-span {
  @apply text-red-500;
}
</style>
```

You would use this when you're refactoring your application to be using reusable components containing more 'semantic' class names.


You can also use other TailwindCSS directives and you can also extend your theme in the `tailwind.config.js` file. See the [TailwindCSS documentation][] for more details.

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

**a) Using VSCode Remote Containers / Dev Containers (the easiest way)**

You can use [VSCode][vscode] with the [Remote Containers / Dev Containers][vscode-remote-containers] extension to start developing right away. With the right extensions installed, just open the project in VSCode and it will ask you if you want to open it in a container.

**b) Using Docker Compose (the easiest way without VSCode)**

You can use [Docker Compose][docker-compose] to start developing right away:

```sh
docker-compose -f docker-compose.dev.yml up
```

**c) Using Docker (Method 1, building the image)**
You can use [Docker][docker] to start developing right away:

  1. Build image: `docker build --no-cache -t LighthouseLab/nuxt3-tailwindcss:latest --target development -f Dockerfile .`
  2. Run image in container: `docker run --rm -it -p 3000:3000 -v "$(pwd):/home/node/app:cached" LighthouseLab/nuxt3-tailwindcss:latest`
  
**d) Using Docker (Method 2, without building the image)**

You can even use Docker without building the image from the Dockerfile. Just run the following command:

```sh
docker run -it --rm -v "$(pwd):/app" -p 3000:3000 -w /app node:18.15.0-alpine3.16 yarn && yarn dev
```


> Tip: The dockerfile has a multi-stage build, to keep the final image as small as possible. Take a look at the `Dockerfile` for more details.

**3. Using a local Node.js installation (when your machine has Node.js)**

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
[online-dev-env-github-codespaces]: http://github.dev/LighthouseLab/nuxt3-tailwindcss
[online-dev-env-stackblitz]: https://stackblitz.com/github/LighthouseLab/nuxt3-tailwindcss
[online-dev-env-vscode-web]: https://vscode.dev/github/LighthouseLab/nuxt3-tailwindcss
[TailwindCSS documentation]: https://tailwindcss.com/docs
[vscode-remote-containers]: https://code.visualstudio.com/docs/remote/containers
[vscode]: https://code.visualstudio.com/