# EUCP Jupyterlab environment specification
Dockerfile for the EUCP project - based on the Jupyter datascience notebook\
[View on dockerhub](https://hub.docker.com/repository/docker/eucp/notebook/general)

## Branches
- master: for regular development and updates. Merging via approved pull requests. Linked to 'latest' tag on dockerhub.
- stable: standard branch for jupyterhub deployment. Linked to the 'stable' tag on dockerhub.
- feature branches: make a separate branch for each PR/feature that you want to add.

## Update process
1. Checkout, build and run the docker image locally
2. Make desired changes to the environment
3. Build and run updated docker image locally for testing
4. Document changes made to the environment in the changelog below
4. Make a pull request to the master branch of this repository

## Changelog

May 20, 2020:
- Inherit from newer jupyter/datascience-notebook
- Updated jupyter hub & jupyter lab versions
- Added explicit dependency of matplotlib
- Removed some packages as they are now part of base- or scipy-nb
- Removed some packages as they were installed as dependencies of others
- Moved all pip-installs to conda
- Add esmvalcore and esmvaltool-python
- Upgrade several packages to newer versions
- Disable not-working jupyter-thredds plugin

May 19, 2020:
- Pin versions to current environment configuration

May 18, 2020:
- Start changelog
- Enable autobuild on dockerhub
- Create master and stable branches
