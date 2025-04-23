# Hub Image Template
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nmfs-opensci/hub-image-template/HEAD)
[![Build and push container image](https://github.com/nmfs-opensci/hub-image-template/actions/workflows/repo2docker.yaml/badge.svg)](https://github.com/nmfs-opensci/py-rocket-2/actions/workflows/repo2docker.yaml)

A repository for creating images for a Jupyter Hub. The main purpose is to help users create custom images for JupyterHubs, expecially if they need to add command line tools to the image.  The base image for the NMFS Openscapes JupyterHub is based on [py-rocket](https://github.com/nmfs-opensci/py-rocket-2/tree/main).

## How to use? 

You can do everything on GitHub without cloning the repo to your local computer.

1. Click the green "use this template" button to create your own copy.
2. Edit the .github/workflows/repo2docker.yaml file. Scroll to very bottom and change `nmfs-opensci/hub-image-template` to `<your username>/<your repo>`.
3. Edit the files in binder directory. Read the [repo2docker](https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment) documentation on configuration files
4. See an example of a full feature [environment.yaml](https://github.com/nmfs-opensci/hub-image-template/blob/main/examples/earth-sci-env.yaml) for scientific Python in the `examples` directory.
5. If you need to add command line tools, edit `binder/appendix`. See an example in the `examples` directory.

## How to test

Go to [mybinder.org](https://mybinder.org/). Copy the url for the repo into the box. Or you can click the 'Open in Binder' badge.

## Using this in JupyterHub

The image will appear under packages in the right nav area of your GitHub repo. If the JupyterHub has the **Bring your own image** feature, then you can paste in `ghcr.io/nmfs-opensci/hub-image-template:latest` to the image and a server with your image will spin up. Change to `ghcr.io/<your username>/<your repo name>:latest`

<img width="772" alt="image" src="https://github.com/user-attachments/assets/13f1d200-b8a6-44e1-a9db-537260b21ec4">

