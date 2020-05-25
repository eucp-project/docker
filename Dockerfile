# Docker notebook for climate analysis - European Climate Prediction project

FROM jupyter/datascience-notebook:3b1f4f5e6cc1

LABEL maintainer="EUCP-NLESC <e.rol@esciencecenter.nl>"

USER root

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    tcsh \
    zsh \
    less \
    htop \
    grads \
    ncl-ncarg \
    cmake \
    libgl1-mesa-dev \
    gcc \
    g++ \
    git \
    gnuplot \
    imagemagick \
    qtbase5-dev \
    libncurses5-dev \
    libqwt-qt5-dev \
    libqt5opengl5-dev \
    libboost-all-dev \
    libgdal-dev \
    python3-numpy \
    python3-docopt \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

USER $NB_UID

# Notes:
# - grads is not available under Conda
# - installing ncl under Conda messes up the notebook; for example, the R kernel disappears from the menu
# - pyngl and pynio have incompatible dependencies with some other packages
# - cfunits is not cf-units: cf(dm/-python/-lplot) uses cfunits, iris uses cf-units (imported as cf_units)

RUN conda install --quiet --yes --channel esmvalgroup --channel pcmdi/label/nightly --channel ncas \
    # Ensure backwards compatibility:
    'boost=1.72.0'\
    'cartopy=0.18.0' \
    'cdms2=3.1.3' \
    'cf-plot=3.0.20' \
    'cf-python=3.1.0' \
    'cfdm=1.7.11' \
    'cmor=2019.05.16.master.numpy' \
    'eofs=1.4.0' \
    'esmvalcore=2.0.0b9' \
    'esmvaltool-python=2.0.0b4' \
    'imod=0.9.0' \
    'ipyleaflet=0.12.6' \
    'iris-sample-data=2.2.0' \
    'iris=2.4.0' \
    'matplotlib=3.2.1' \
    'metpy=0.12.1' \
    'nc-time-axis=1.2.0' \
    'nco=4.9.2' \
    'pcraster=4.3.0' \
    'python-cdo=1.5.3' \
    'python=3.7.6' \
    'xarray=0.15.1' \
    'zarr=2.4.0' \
 && conda clean --all -f -y \
 && fix-permissions $CONDA_DIR \
 && fix-permissions /home/$NB_USER

RUN jupyter labextension install jupyter-leaflet

# Try to enable thredds browser extension (see https://github.com/eWaterCycle/jupyterlab_thredds)
# This doesn't actually seem to work in the notebook, so I'm disabling it for now.
# RUN pip install jupyterlab_thredds && jupyter labextension install @ewatercycle/jupyterlab_thredds
