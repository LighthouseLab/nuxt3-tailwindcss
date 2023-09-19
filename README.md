# Nuxt 3 Starter Kit

A Nuxt 3 Starter Kit with Vite, Vue 3, TypeScript, PostCSS, and TailwindCSS.

## Features

This starter kit includes the following technologies:

- **Nuxt 3**: A Vue 3 framework for modern web applications.
- **Vite**: A fast and lightweight bundler for quick development.
- **TypeScript**: A typed superset of JavaScript for improved developer experience and reduced bugs.
- **TailwindCSS**: A utility-first CSS framework for rapid UI development.

With the included TailwindCSS setup, you can use both Tailwind classes and 'semantic' classes. This allows you to prototype your application quickly and refactor it later with more 'semantic' class names.

Example 1 (using a TailwindCSS class name):

```vue
<template>
  <span class="text-red-500">This is red</span>
</template>
```

Example 2 (using a 'semantic' class name):

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

You can also use other TailwindCSS directives and extend your theme in the `tailwind.config.js` file. Refer to the [TailwindCSS documentation][] for more details.

## Getting Started

To start the development server, you have multiple options:

**1. Online Development Environment**

You can use online development environments for hassle-free development without local installations. Recommended options include:

- [Stackblitz][online-dev-env-stackblitz]
- [GitHub Codespaces][online-dev-env-github-codespaces]
- [VSCode on the web][online-dev-env-vscode-web]

**2. Local, Containerized Development Environment**

For more serious development, consider a local, containerized setup. Benefits include pre-configured dependencies. Options:

**a) Using VSCode Remote Containers / Dev Containers (easiest)**

Use [VSCode][vscode] with the [Remote Containers / Dev Containers][vscode-remote-containers] extension.

**b) Using Docker Compose (easiest without VSCode)**

Run this command:

```sh
docker-compose -f docker-compose.dev.yml up
```

**c) Using Docker (Method 1, building the image)**

Build and run the image:

```sh
docker build --no-cache -t LighthouseLab/nuxt3-tailwindcss:latest --target development -f Dockerfile .
docker run --rm -it -p 3000:3000 -v "$(pwd):/home/node/app:cached" LighthouseLab/nuxt3-tailwindcss:latest
```

**d) Using Docker (Method 2, without building the image)**

Run this command:

```sh
docker run -it --rm -v "$(pwd):/app" -p 3000:3000 -w /app node:18.15.0-alpine3.16 yarn && yarn dev
```

> Tip: The Dockerfile uses a multi-stage build to keep the final image small. Refer to the `Dockerfile` for details.

**3. Local Node.js Installation**

If you have Node.js installed locally:

- Run `yarn install` to install dependencies.
- Use `yarn dev` to start the development server (http://localhost:3000).
- Run `yarn build` for production build.
- Start the production server with `yarn start`.
- Generate the application for static hosting using `yarn generate`.

For more details, consult the [official Nuxt 3 deployment documentation][].

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