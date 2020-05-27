![GitHub release (latest by date)](https://img.shields.io/github/v/release/eucp-project/docker)
[![DOI](https://zenodo.org/badge/234047969.svg)](https://zenodo.org/badge/latestdoi/234047969)
![GitHub](https://img.shields.io/github/license/eucp-project/docker)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/eucp/notebook)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/eucp/notebook)

# EUCP Jupyterlab environment specification

Dockerfile for the EUCP project - based on the Jupyter datascience notebook\
[View on dockerhub](https://hub.docker.com/repository/docker/eucp/notebook/general)

## Branches

- master: for regular development and updates. Merging via approved pull requests. Linked to 'latest' tag on dockerhub.
- feature branches: make a separate branch for each PR/feature that you want to add.

## Releases

- We'll configure the login environment such that you can select which release you want to use for your compute environment.

## Update process

1. Checkout, build and run the docker image locally
1. Make desired changes to the environment
1. Build and run updated docker image locally for testing
1. Use `conda list --export > package_list_for_change_diffs.txt`, download and commit the result
1. Summarize changes made to the environment in the changelog below
1. Make a pull request to the master branch of this repository
1. Once the PR is merged, test changed in the 'live' environment by choosing 'latest'.
1. Consider making a new release and adding it to the ansible setup

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
- Add `package_list_for_change_diffs.txt` for keeping track of environment changes.

May 18, 2020:

- Start changelog
- Enable autobuild on dockerhub
- Create master and stable branches
