# WebXR - RockStory

This codebook is for an immersive historical WebXR site project, inspired by an existing initiative from the tourism office of la Roche-sur-Foron.

This project will be implemented in three formats:
1. A responsive classic website serving as the entry point and information hub.
2. An augmented reality website for mobile devices, featuring remote discovery activities and geolocation.
3. An XR site enhancing immersivity and compatible with VR headsets.

## The technologies implemented

For the website's classic side, the HTML, CSS and JavaScript trio forms the foundation. However, for the immersive aspect, I plan to use the WebXR and WebGL APIs.

The target devices are classical web browsers, mobiles devices for the AR aspect and VR headsets for the fully immersive XR experience.

Regarding the JavaScript APIs used in the project, I will not be using any frameworks. Instead, I plan to implement my own code.

## Setting Up the Local Developement Environment

To set up my local development environment, I will use a [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) with [Visual Studio Code](https://code.visualstudio.com/). I have already created a [devcontainer configuration](./.devcontainer/devcontainer.json) in the repository. To prepare the development environment and get started with building the project, follow the steps below:

1. **Clone this repository**

```
git clone https://github.com/XavierBeheydt/webxr-first-steps
code webxr-first-steps
```

2. **Create the dev container**:

In VSCode, typing in your keyboard <kbd>CTLR</kbd>+<kbd>SHIFT</kbd>+<kbd>P</kbd> to open the command prompt and run the command : `>Open Folder in Container`. _Make sure that Docker daemon is running._

3. **Install dependencies**:

```bash
# NPM way
npm install

# Makefile way
make deps
```

4. **Run the local development server**:

```bash
# NPM way
npm run dev

# Makefile way
make serve
```

After running the above command, your development server will be available at `localhost:8081` or `<dev-ip-machine>:8081`.

> You can change the port number inside [Webpack configuration](./webpack.config.cjs) file.

## Deploying the App with GitHub Pages

This repository includes a ready-to-use GitHub Actions workflow located at `.github/workflows/deploy.yml`, which automates both the build and deployment to GitHub Pages. Once enabled, every time you push changes to the `main` branch, a new build will automatically be deployed.

## License

This project is licensed under the MIT License - see the [LICENSE.md](./LICENSE) file for details.