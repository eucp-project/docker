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


RUN cd /tmp \
 && curl -O http://pcraster.geo.uu.nl/pcraster/4.2.1/pcraster-4.2.1.tar.bz2 \
 && tar -jxvf pcraster-4.2.1.tar.bz2 \
 && cd pcraster-4.2.1 \
 && mkdir build \
 && cd build \
 && PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
 && cmake -Wno-dev -DPYTHON_EXECUTABLE:FILEPATH=/usr/bin/python3 -DFERN_BUILD_ALGORITHM:BOOL=TRUE  -DCMAKE_INSTALL_PREFIX:PATH=$PCRASTER_DIR .. \
 && cmake --build . \
 && make install
RUN rm -r /tmp/pcraster*


USER $NB_UID

# Notes:
# - grads is not available under Conda
# - installing ncl under Conda messes up the notebook; for example, the R kernel disappears from the menu
# - Downgrade Matplotlib to 2.2 for Iris
# - pyngl and pynio have incompatible dependencies with some other packages
RUN conda install --quiet --yes --channel esmvalgroup --channel conda-forge --channel pcmdi/label/nightly --override-channels \
    'ipyleaflet' \
    'ipywidgets' \
    'iris' \
    'iris-sample-data' \
    'cftime' \
    'nc-time-axis' \
    'h5py' \
    'netcdf4' \
    'pyproj' \
    'cartopy' \
    'dask' \
    'xarray' \
    'boost' \
    'gdal' \
    'cdo' \
    'nco' \
    'cdms2' \
    'eofs' \
    'esmpy' \
#    'esmvalcore' \
    'cmor' \
    'python=3.7' \
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
