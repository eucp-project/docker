# Docker notebook for climate analysis - European Climate Prediction project

FROM jupyter/datascience-notebook:1386e2046833


LABEL maintainer="EUCP-NLESC <e.rol@esciencecenter.nl>"


ENV PCRASTER_DIR=/usr/local/pcraster

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

RUN mkdir -p $PCRASTER_DIR \
 && chown $NB_UID $PCRASTER_DIR \
 && fix-permissions $PCRASTER_DIR


USER $NB_UID

# Notes:
# - grads is not available under Conda
# - installing ncl under Conda messes up the notebook; for example, the R kernel disappears from the menu
# - Downgrade Matplotlib to 2.2 for Iris
# - pyngl and pynio have incompatible dependencies with some other packages
RUN conda install --quiet --yes --channel esmvalgroup --channel conda-forge --channel pcmdi/label/nightly --override-channels \
    'python=3.7.6' \
    'boost=1.72.0'\
    'cartopy=0.17.0' \
    'cdms2=3.1.3' \
    # 'cdo=1.5.3' \
    'cftime=1.1.1.2' \
    'cmor=2019.05.16.master.numpy' \
    'dask=2.2.0' \
    'eofs=1.4.0' \
    'esmpy=8.0.0' \
    'gdal=3.0.4' \
    'h5py=2.10.0' \
    'imod=0.9.0' \
    'ipyleaflet=0.12.4' \
    'ipywidgets=7.5.1' \
    'iris=2.4.0' \
    'iris-sample-data=2.2.0' \
    'nc-time-axis=1.2.0' \
    'nco=4.9.1' \
    'netcdf4=1.5.3' \
    'pcraster=4.3.0' \
    'pyproj=2.6.0' \
    'rasterio=1.1.3' \
    'xarray=0.15.1' \
    'zarr=2.4.0' \
#    'esmvalcore' \
 && conda clean --all -f -y \
 && fix-permissions $CONDA_DIR \
 && fix-permissions /home/$NB_USER

# For some reason, Conda's cdo does not appear to include the Python
# interface, so it's installed through pip
# The installation of cf-plot will install matplotlib 3.1, which is technically
# different than 2.2; the latter is used by Iris.
# Note: cfunits is not cf-units: cf(dm/-python/-lplot) uses cfunits,
# Iris uses cf-units (imported as cf_units)
RUN pip install \
  cdo==1.5.3 \
  cfdm==1.7.7 \
  cf-python==3.0.1 \
  cf-plot==3.0.5 \
  cfunits==3.1.1 \
  MetPy==0.11.1


RUN pip install jupyterlab_thredds
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-leaflet
#RUN jupyter labextension install @ewatercycle/jupyterlab_thredds


ENV PATH=${PATH}:${PCRASTER_DIR}/bin
ENV PYTHONPATH=${PYTHONPATH}:${PCRASTER_DIR}/python
# set path explicitly, because otherwise cfunits can't be imported
ENV UDUNITS2_XML_PATH=/opt/conda/share/udunits/udunits2.xml
