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

<details>
<summary>Full diff: </summary>
package_list_current.txt                package_list_new.txt
# This file may be used to create an e  # This file may be used to create an e
nvironment using:                       nvironment using:
# $ conda create --name <env> --file <  # $ conda create --name <env> --file <
this file>                              this file>
# platform: linux-64                    # platform: linux-64
_libgcc_mutex=0.1=main                  _libgcc_mutex=0.1=conda_forge
                                        _openmp_mutex=4.5=0_gnu
_r-mutex=1.0.1=anacondar_1              _r-mutex=1.0.1=anacondar_1
affine=2.3.0=py_0                       affine=2.3.0=py_0
aiohttp=3.6.2=pypi_0                    alembic=1.4.2=pyh9f0ad1d_0
alembic=1.1.0=py_0
antlr-python-runtime=4.7.2=py37_1001    antlr-python-runtime=4.7.2=py37_1001
appdirs=1.4.3=pypi_0                    appdirs=1.4.3=py_1
asciitree=0.3.3=py_2                    asciitree=0.3.3=py_2
asn1crypto=0.24.0=py37_1003
async-timeout=3.0.1=pypi_0
async_generator=1.10=py_0               async_generator=1.10=py_0
attrs=19.1.0=py_0                       attrs=19.3.0=py_0
backcall=0.1.0=py_0                     backcall=0.1.0=py_0
beautifulsoup4=4.8.0=py37_0             beautifulsoup4=4.9.0=py37hc8dfbb8_0
binutils_impl_linux-64=2.31.1=h6176602  binutils_impl_linux-64=2.34=h53a641e_0
_1
binutils_linux-64=2.31.1=h6176602_8     binutils_linux-64=2.34=hc952b39_18
blas=2.12=openblas                      blas=2.14=openblas
bleach=3.1.0=py_0                       bleach=3.1.4=pyh9f0ad1d_0
blinker=1.4=py_1                        blinker=1.4=py_1
bokeh=1.3.4=py37_0                      blosc=1.18.1=he1b5a44_0
                                        bokeh=2.0.1=py37hc8dfbb8_0
boost=1.72.0=py37h9de70de_0             boost=1.72.0=py37h9de70de_0
boost-cpp=1.72.0=h8e57a91_0             boost-cpp=1.72.0=h8e57a91_0
                                        bottleneck=1.3.2=py37h03ebfcd_1
branca=0.3.1=py_0                       branca=0.3.1=py_0
                                        brotlipy=0.7.0=py37h8f50634_1000
bwidget=1.9.11=0                        bwidget=1.9.14=0
bzip2=1.0.8=h516909a_0                  bzip2=1.0.8=h516909a_2
ca-certificates=2020.4.5.1=hecc5488_0   ca-certificates=2020.4.5.1=hecc5488_0
cairo=1.16.0=hfb77d84_1002              cairo=1.16.0=hcf35c78_1003
cartopy=0.17.0=py37h6078e7d_1013        cartopy=0.18.0=py37h4b180d9_0
cdat_info=8.2=py_7                      cdat_info=8.2=py_7
cdms2=3.1.3=pypi_0                      cdms2=3.1.3=pypi_0
cdo=1.5.3=pypi_0                        cdo=1.9.8=h6e5f144_8
cdtime=3.1.3=py37ha439f24_1             cdsapi=0.2.7=py_0
                                        cdtime=3.1.3=py37h006a570_3
certifi=2020.4.5.1=py37hc8dfbb8_0       certifi=2020.4.5.1=py37hc8dfbb8_0
certipy=0.1.3=py_0                      certipy=0.1.3=py_0
cf-plot=3.0.5=pypi_0                    cf-plot=3.0.20=py37h39e3cac_0
cf-python=3.0.1=pypi_0                  cf-python=3.1.0=py37_0
cf-units=2.1.4=py37h03ebfcd_0           cf-units=2.1.4=py37h03ebfcd_0
cfdm=1.7.7=pypi_0                       cfdm=1.7.11=py37_0
cffi=1.12.3=py37h8022711_0              cffi=1.14.0=py37hd463f26_0
cfitsio=3.470=hb60a0a2_2                cfitsio=3.470=h3eac812_5
cftime=1.1.1.2=py37h03ebfcd_0           cftime=1.1.3=py37h03ebfcd_0
cfunits=3.1.1=pypi_0                    cfunits=3.2.4=py37_0
chardet=3.0.4=py37_1003                 chardet=3.0.4=py37hc8dfbb8_1006
click=7.0=py_0                          click=7.1.2=pyh9f0ad1d_0
click-plugins=1.1.1=py_0                click-plugins=1.1.1=py_0
cligj=0.5.0=py_0                        cligj=0.5.0=py_0
cloudpickle=1.2.2=py_0                  cloudpickle=1.4.1=py_0
                                        cmocean=2.0=py_3
cmor=2019.05.16.master.numpy=py37h9ac9  cmor=2019.05.16.master.numpy=py37h9ac9
557_0                                   557_0
                                        colorspacious=1.1.2=pyh24bf2e0_0
conda=4.7.10=py37_0                     conda=4.8.2=py37_0
conda-package-handling=1.4.0=py37_0     conda-package-handling=1.6.0=py37h8f50
                                        634_2
configurable-http-proxy=4.1.0=node11_1  configurable-http-proxy=4.2.1=node13_h
                                        e01fd0c_0
cryptography=2.7=py37h72c5cf5_0         cryptography=2.9.2=py37hb09aad4_0
curl=7.65.3=hf8cf82a_0                  curl=7.69.1=h33f0ec9_0
cycler=0.10.0=py_1                      cycler=0.10.0=py_2
cython=0.29.13=py37he1b5a44_0           cython=0.29.17=py37h3340039_0
cytoolz=0.10.0=py37h516909a_0           cytoolz=0.10.1=py37h516909a_0
dask=2.2.0=py_0                         dask=2.15.0=py_0
dask-core=2.2.0=py_0                    dask-core=2.15.0=py_0
dbus=1.13.6=he372182_0                  dbus=1.13.6=he372182_0
decorator=4.4.0=py_0                    decorator=4.4.2=py_0
defusedxml=0.5.0=py_1                   defusedxml=0.6.0=py_0
dill=0.3.0=py37_2                       dill=0.3.1.1=py37hc8dfbb8_1
distarray=2.12.2=py_1                   distarray=2.12.2=py_1
distributed=2.3.2=py_1                  distributed=2.15.2=py37hc8dfbb8_0
eccodes=2.17.0=h0533f67_0               eccodes=2.17.0=h59f7be3_1
                                        ecmwf-api-client=1.5.4=py_0
entrypoints=0.3=py37_1000               entrypoints=0.3=py37hc8dfbb8_1001
eofs=1.4.0=py_0                         eofs=1.4.0=py_0
esmf=8.0.0=nompi_he6d0a24_5             esmf=8.0.0=nompi_hb0fcdcb_6
esmpy=8.0.0=nompi_py37hf0e99fa_1        esmpy=8.0.0=nompi_py37hf0e99fa_1
                                        esmvalcore=2.0.0b9=py_0
                                        esmvaltool-python=2.0.0b4=py_0
expat=2.2.9=he1b5a44_2                  expat=2.2.9=he1b5a44_2
fastcache=1.1.0=py37h516909a_0          fastcache=1.1.0=py37h8f50634_1
fasteners=0.14.1=py_3                   fasteners=0.14.1=py_3
fftw=3.3.8=nompi_h7f3a6c3_1110          fftw=3.3.8=nompi_h7f3a6c3_1110
fiona=1.8.13=py37h900e953_0             fiona=1.8.13=py37h0492a4a_1
fontconfig=2.13.1=h86ecdb6_1001         fontconfig=2.13.1=h86ecdb6_1001
freetype=2.10.0=he983fc9_1              freetype=2.10.1=he06d7ca_0
freexl=1.0.5=h14c3975_1002              freexl=1.0.5=h14c3975_1002
fribidi=1.0.5=h516909a_1002             fribidi=1.0.9=h516909a_0
fsspec=0.4.4=py_0                       fsspec=0.7.3=py_0
future=0.18.2=py37hc8dfbb8_1            future=0.18.2=py37hc8dfbb8_1
g2clib=1.6.0=hf3f1b0b_9                 g2clib=1.6.0=hf3f1b0b_9
gcc_impl_linux-64=7.3.0=habb00fd_1      gcc_impl_linux-64=7.3.0=hd420e75_5
gcc_linux-64=7.3.0=h553295d_8           gcc_linux-64=7.3.0=h553295d_18
gdal=3.0.4=py37h4b180d9_2               gdal=3.0.4=py37h4b180d9_6
geopandas=0.7.0=py_1                    geopandas=0.7.0=py_1
geos=3.8.1=he1b5a44_0                   geos=3.8.1=he1b5a44_0
geotiff=1.5.1=hcbe54f9_9                geotiff=1.5.1=h05acad5_10
gettext=0.19.8.1=hc5be6a0_1002          gettext=0.19.8.1=hc5be6a0_1002
gfortran_impl_linux-64=7.3.0=hdf63c60_  gfortran_impl_linux-64=7.3.0=hdf63c60_
1                                       5
gfortran_linux-64=7.3.0=h553295d_8      gfortran_linux-64=7.3.0=h553295d_18
giflib=5.2.1=h516909a_2                 giflib=5.2.1=h516909a_2
glib=2.58.3=h6f030ca_1002               glib=2.64.2=h6f030ca_0
gmp=6.1.2=hf484d3e_1000                 gmp=6.2.0=he1b5a44_2
gmpy2=2.1.0b1=py37h04dde30_0            gmpy2=2.1.0b1=py37h04dde30_0
graphite2=1.3.13=hf484d3e_1000          graphite2=1.3.13=he1b5a44_1001
                                        graphviz=2.42.3=h0511662_0
gsl=2.5=h294904e_1                      gsl=2.6=h294904e_0
gst-plugins-base=1.14.5=h0935bb2_2      gst-plugins-base=1.14.5=h0935bb2_2
gstreamer=1.14.5=h36ae1b5_2             gstreamer=1.14.5=h36ae1b5_2
gxx_impl_linux-64=7.3.0=hdf63c60_1      gxx_impl_linux-64=7.3.0=hdf63c60_5
gxx_linux-64=7.3.0=h553295d_8           gxx_linux-64=7.3.0=h553295d_18
h5py=2.10.0=nompi_py37h513d04c_102      h5py=2.10.0=nompi_py37h513d04c_102
harfbuzz=2.4.0=h9f30f68_3               harfbuzz=2.4.0=h9f30f68_3
hdf4=4.2.13=hf30be14_1003               hdf4=4.2.13=hf30be14_1003
hdf5=1.10.5=nompi_h3c11f04_1103         hdf5=1.10.5=nompi_h3c11f04_1104
heapdict=1.0.0=py37_1000                heapdict=1.0.1=py_0
                                        html5lib=1.0.1=py_0
icu=64.2=he1b5a44_0                     icu=64.2=he1b5a44_1
idna=2.8=py37_1000                      idna=2.9=py_1
imageio=2.5.0=py37_0                    imageio=2.8.0=py_0
imod=0.9.0=py_1                         imod=0.9.0=py_1
ipykernel=5.1.2=py37h5ca1d4c_0          importlib-metadata=1.6.0=py37hc8dfbb8_
                                        0
                                        importlib_metadata=1.6.0=0
                                        ipykernel=5.2.1=py37h43977f1_0
ipyleaflet=0.12.4=pyh9f0ad1d_0          ipyleaflet=0.12.6=pyh9f0ad1d_0
                                        ipympl=0.5.6=pyh9f0ad1d_1
ipython=7.8.0=py37h5ca1d4c_0            ipython=7.14.0=py37hc8dfbb8_0
ipython_genutils=0.2.0=py_1             ipython_genutils=0.2.0=py_1
ipywidgets=7.5.1=py_0                   ipywidgets=7.5.1=py_0
iris=2.4.0=py37_0                       iris=2.4.0=py37_0
iris-sample-data=2.2.0=py_0             iris-sample-data=2.2.0=py_0
                                        isodate=0.6.0=py_1
jasper=1.900.1=h07fcdf6_1006            jasper=1.900.1=h07fcdf6_1006
jedi=0.15.1=py37_0                      jedi=0.17.0=py37hc8dfbb8_0
jinja2=2.10.1=py_0                      jinja2=2.11.2=pyh9f0ad1d_0
joblib=0.13.2=py_0                      joblib=0.14.1=py_0
jpeg=9c=h14c3975_1001                   jpeg=9c=h14c3975_1001
json-c=0.13.1=h14c3975_1001             json-c=0.13.1=hbfbb72e_1002
json5=0.8.5=py_0                        json5=0.9.0=py_0
jsonschema=3.0.2=py37_0                 jsonschema=3.2.0=py37hc8dfbb8_1
jupyter_client=5.3.1=py_0               jupyter_client=6.1.3=py_0
jupyter_core=4.4.0=py_0                 jupyter_core=4.6.3=py37hc8dfbb8_1
                                        jupyter_telemetry=0.0.5=py_0
jupyterhub=1.0.0=py37_0                 jupyterhub=1.1.0=py37_2
                                        jupyterhub-base=1.1.0=py37_2
jupyterlab=1.1.3=py_0                   jupyterlab=2.1.1=py_0
jupyterlab-thredds=0.4.1=pypi_0
jupyterlab_server=1.0.6=py_0            jupyterlab_server=1.1.1=py_0
kealib=1.4.13=hec59c27_0                kealib=1.4.13=hec59c27_0
                                        keepalive=0.5=py_1
kiwisolver=1.1.0=py37hc9558a2_0         kiwisolver=1.2.0=py37h99015e2_0
krb5=1.16.4=h2fd8d38_0                  krb5=1.17.1=h2fd8d38_0
lazy-object-proxy=1.4.3=py37h8f50634_2  lazy-object-proxy=1.4.3=py37h8f50634_2
ld_impl_linux-64=2.34=h53a641e_0        ld_impl_linux-64=2.34=h53a641e_0
libaec=1.0.4=he1b5a44_1                 libaec=1.0.4=he1b5a44_1
libarchive=3.3.3=hc47fbbf_1007
libblas=3.8.0=12_openblas               libblas=3.8.0=14_openblas
libcblas=3.8.0=12_openblas              libcblas=3.8.0=14_openblas
libcdms=3.1.2=ha54dda3_8                libcdms=3.1.2=hf60d256_111
libcf=1.0.3=py37hdee1361_5              libcf=1.0.3=py37hda0e254_108
libclang=9.0.1=default_hde54327_0       libclang=9.0.1=default_hde54327_0
libcurl=7.65.3=hda55be3_0               libcurl=7.69.1=hf7181ac_0
libdap4=3.20.4=hd3bb157_0               libdap4=3.20.6=h1d1bd15_0
libdrs=3.1.2=h9b7ed86_9
libdrs_f=3.1.2=h322d3c2_5               libdrs=3.1.2=hc2e2db3_112
                                        libdrs_f=3.1.2=hae7e664_110
libedit=3.1.20170329=hf8c457e_1001      libedit=3.1.20170329=hf8c457e_1001
libffi=3.2.1=he1b5a44_1006              libffi=3.2.1=he1b5a44_1007
libgcc-ng=9.1.0=hdf63c60_0              libgcc-ng=9.2.0=h24d8f2e_2
libgdal=3.0.4=hce44138_2                libgdal=3.0.4=h3dfc09a_6
libgfortran-ng=7.3.0=hdf63c60_0         libgfortran-ng=7.3.0=hdf63c60_5
libglu=9.0.0=he1b5a44_1001              libglu=9.0.0=he1b5a44_1001
                                        libgomp=9.2.0=h24d8f2e_2
libiconv=1.15=h516909a_1005             libiconv=1.15=h516909a_1006
libkml=1.3.0=hb574062_1011              libkml=1.3.0=hb574062_1011
liblapack=3.8.0=12_openblas             liblapack=3.8.0=14_openblas
liblapacke=3.8.0=12_openblas            liblapacke=3.8.0=14_openblas
                                        libllvm8=8.0.1=hc9558a2_0
libllvm9=9.0.1=he513fc3_1               libllvm9=9.0.1=he513fc3_1
libnetcdf=4.7.3=nompi_h9f9fd6a_101      libnetcdf=4.7.4=nompi_h9f9fd6a_101
libopenblas=0.3.7=h6e990d7_1            libopenblas=0.3.7=h5ec1e0e_6
libpng=1.6.37=hed695b0_0                libpng=1.6.37=hed695b0_1
libpq=12.2=hae5116b_0                   libpq=12.2=h5513abc_1
libprotobuf=3.9.1=h8b12597_0            libprotobuf=3.11.4=h8b12597_0
libsodium=1.0.17=h516909a_0             libsodium=1.0.17=h516909a_0
libspatialindex=1.9.3=he1b5a44_3        libspatialindex=1.9.3=he1b5a44_3
libspatialite=4.3.0a=heb269f5_1037      libspatialite=4.3.0a=h2482549_1038
libssh2=1.8.2=h22169c7_2                libssh2=1.8.2=h22169c7_2
libstdcxx-ng=9.1.0=hdf63c60_0           libstdcxx-ng=9.2.0=hdf63c60_2
libtiff=4.1.0=hc3755c2_3                libtiff=4.1.0=hc7e4089_6
                                        libtool=2.4.6=h14c3975_1002
                                        libunwind=1.3.1=hf484d3e_1000
libuuid=2.32.1=h14c3975_1000            libuuid=2.32.1=h14c3975_1000
libwebp=1.0.2=h56121f0_5                libuv=1.34.0=h516909a_0
                                        libwebp-base=1.1.0=h516909a_3
libxcb=1.13=h14c3975_1002               libxcb=1.13=h14c3975_1002
libxkbcommon=0.10.0=he1b5a44_0          libxkbcommon=0.10.0=he1b5a44_0
libxml2=2.9.10=hee79883_0               libxml2=2.9.10=hee79883_0
                                        libxslt=1.1.33=h31b3aaa_0
llvmlite=0.29.0=py37hfd453ef_1          llvmlite=0.31.0=py37h5202443_1
locket=0.2.0=py_2                       locket=0.2.0=py_2
                                        lxml=4.5.0=py37he3881c9_1
lz4-c=1.8.3=he1b5a44_1001               lz4-c=1.9.2=he1b5a44_1
lzo=2.10=h14c3975_1000                  lzo=2.10=h14c3975_1000
make=4.2.1=h14c3975_2004                make=4.3=h516909a_0
mako=1.1.0=py_0                         mako=1.1.0=py_0
markupsafe=1.1.1=py37h14c3975_0         markupsafe=1.1.1=py37h8f50634_1
                                        matplotlib=3.2.1=0
matplotlib-base=3.1.1=py37he7580a8_1    matplotlib-base=3.2.1=py37h30547a4_0
metpy=0.11.1=pypi_0                     metpy=0.12.1=py_0
mistune=0.8.4=py37h14c3975_1000         mistune=0.8.4=py37h8f50634_1001
                                        mock=4.0.2=py37hc8dfbb8_0
monotonic=1.5=py_0                      monotonic=1.5=py_0
mpc=1.1.0=hb20f59a_1006                 mpc=1.1.0=h04dde30_1007
mpfr=4.0.2=ha14ba45_0                   mpfr=4.0.2=he80fd80_1
mpmath=1.1.0=py_0                       mpmath=1.1.0=py_0
msgpack-python=0.6.1=py37h6bb024c_0     msgpack-python=1.0.0=py37h99015e2_1
multidict=4.7.5=pypi_0
munch=2.5.0=py_0                        munch=2.5.0=py_0
nbconvert=5.6.0=py37_1                  nbconvert=5.6.1=py37hc8dfbb8_1
nbformat=4.4.0=py_1                     nbformat=5.0.6=py_0
nc-time-axis=1.2.0=py_1                 nc-time-axis=1.2.0=py_1
nco=4.9.1=nompi_hc6225f9_0              nco=4.9.2=nompi_h5be8af1_2
ncurses=6.1=hf484d3e_1002               ncurses=6.1=hf484d3e_1002
netcdf-fortran=4.5.2=nompi_h09cde99_10  netcdf-fortran=4.5.2=nompi_h45d7149_10
3                                       4
netcdf4=1.5.3=nompi_py37hd35fb8e_102    netcdf4=1.5.3=nompi_py37hec16513_103
networkx=2.3=py_0                       networkx=2.4=py_1
nodejs=11.14.0=he1b5a44_1               nodejs=13.13.0=hf5d1a2b_0
notebook=6.0.0=py37_0                   notebook=6.0.3=py37_0
nspr=4.25=he1b5a44_0                    nspr=4.25=he1b5a44_0
nss=3.47=he751ad9_0                     nss=3.47=he751ad9_0
numba=0.45.1=py37hb3f55d8_0             numba=0.48.0=py37hb3f55d8_0
numcodecs=0.6.4=py37he1b5a44_0          numcodecs=0.6.4=py37he1b5a44_0
numexpr=2.6.9=py37h637b7d7_1000         numexpr=2.7.1=py37h0da4684_1
numpy=1.17.2=py37h95a1406_0             numpy=1.18.4=py37h8960a57_0
oauthlib=3.0.1=py_0                     oauthlib=3.0.1=py_0
olefile=0.46=py_0                       olefile=0.46=py_0
openblas=0.3.7=h6e990d7_1               openblas=0.3.7=he1df0ab_6
openjpeg=2.3.1=h981e76c_3               openjpeg=2.3.1=h981e76c_3
openssl=1.1.1g=h516909a_0               openssl=1.1.1g=h516909a_0
ossuuid=1.6.2=hf484d3e_1000             ossuuid=1.6.2=hf484d3e_1000
owslib=0.19.2=py_1                      owslib=0.19.2=py_1
packaging=19.0=py_0                     packaging=20.1=py_0
pamela=1.0.0=py_0                       pamela=1.0.0=py_0
pandas=0.25.1=py37hb3f55d8_0            pandas=1.0.3=py37h0da4684_1
pandoc=2.7.3=0                          pandoc=2.9.2.1=0
pandocfilters=1.4.2=py_1                pandocfilters=1.4.2=py_1
pango=1.42.4=ha030887_1                 pango=1.42.4=h7062337_4
parso=0.5.1=py_0                        parso=0.7.0=pyh9f0ad1d_0
partd=1.0.0=py_0                        partd=1.1.0=py_0
patsy=0.5.1=py_0                        patsy=0.5.1=py_0
pcraster=4.3.0=py37h9b3db4b_2           pcraster=4.3.0=py37h9b3db4b_3
pcre=8.44=he1b5a44_0                    pcre=8.44=he1b5a44_0
pexpect=4.7.0=py37_0                    pexpect=4.8.0=py37hc8dfbb8_1
pickleshare=0.7.5=py37_1000             pickleshare=0.7.5=py37hc8dfbb8_1001
pillow=6.1.0=py37h6b7be26_1             pillow=7.1.2=py37h718be6c_0
pint=0.11=pypi_0                        pint=0.11=py_1
pip=19.2.1=py37_0                       pip=20.1=pyh9f0ad1d_0
pixman=0.38.0=h516909a_1003             pixman=0.38.0=h516909a_1003
pooch=1.1.0=pypi_0                      pooch=1.1.1=py_0
poppler=0.67.0=h14e79db_8               poppler=0.67.0=h14e79db_8
poppler-data=0.4.9=1                    poppler-data=0.4.9=1
postgresql=12.2=hf1211e9_0              postgresql=12.2=h8573dbc_1
proj=6.3.1=hc80f0dc_1                   proj=7.0.0=h966b41f_4
prometheus_client=0.7.1=py_0            prometheus_client=0.7.1=py_0
prompt_toolkit=2.0.9=py_0               prompt-toolkit=3.0.5=py_0
protobuf=3.9.1=py37he1b5a44_0           protobuf=3.11.4=py37h3340039_1
psutil=5.6.3=py37h516909a_0             prov=1.5.3=py_1
                                        psutil=5.7.0=py37h8f50634_1
pthread-stubs=0.4=h14c3975_1001         pthread-stubs=0.4=h14c3975_1001
ptyprocess=0.6.0=py_1001                ptyprocess=0.6.0=py_1001
pycosat=0.6.3=py37h14c3975_1001         pycosat=0.6.3=py37h8f50634_1004
pycparser=2.19=py37_1                   pycparser=2.20=py_0
pycurl=7.43.0.2=py37h16ce93b_1          pycurl=7.43.0.5=py37h16ce93b_0
                                        pydot=1.4.1=py37hc8dfbb8_1002
pyepsg=0.4.0=py_0                       pyepsg=0.4.0=py_0
pygments=2.4.2=py_0                     pygments=2.6.1=py_0
pyjwt=1.7.1=py_0                        pyjwt=1.7.1=py_0
pykdtree=1.3.1=py37h03ebfcd_1003
pyke=1.1.1=py37hc8dfbb8_1002            pyke=1.1.1=py37hc8dfbb8_1002
pyopenssl=19.0.0=py37_0                 pyopenssl=19.1.0=py_1
pyparsing=2.4.2=py_0                    pyparsing=2.4.7=pyh9f0ad1d_0
pyproj=2.6.0=py37heba2c01_0             pyproj=2.6.1.post1=py37h34dd122_0
                                        pyqt=5.12.3=py37h8685d9f_3
                                        pyqt5-sip=4.19.18=pypi_0
                                        pyqtchart=5.12=pypi_0
                                        pyqtwebengine=5.12.1=pypi_0
pyrsistent=0.15.4=py37h516909a_0        pyrsistent=0.16.0=py37h8f50634_0
pyshp=2.1.0=py_0                        pyshp=2.1.0=py_0
pysocks=1.7.0=py37_0                    pysocks=1.7.1=py37hc8dfbb8_1
                                        pytables=3.6.1=py37h9f153d1_1
python=3.7.6=h8356626_5_cpython         python=3.7.6=h8356626_5_cpython
                                        python-cdo=1.5.3=py_0
python-dateutil=2.8.0=py_0              python-dateutil=2.8.1=py_0
python-editor=1.0.4=py_0                python-editor=1.0.4=py_0
python-libarchive-c=2.8=py37_1004       python-json-logger=0.1.11=py_0
                                        python-stratify=0.1.1=py37h03ebfcd_100
                                        2
python_abi=3.7=1_cp37m                  python_abi=3.7=1_cp37m
pytz=2019.2=py_0                        pytz=2020.1=pyh9f0ad1d_0
pywavelets=1.0.3=py37hd352d35_1         pywavelets=1.1.1=py37h03ebfcd_1
pyyaml=5.1.2=py37h516909a_0             pyyaml=5.3.1=py37h8f50634_0
pyzmq=18.0.2=py37h1768529_2             pyzmq=19.0.0=py37hac76be4_1
qt=5.12.5=hd8c4c69_1                    qt=5.12.5=hd8c4c69_1
r-askpass=1.1=r36hcdcec82_1             r-askpass=1.1=r36hcdcec82_2
r-assertthat=0.2.1=r36h6115d3f_1        r-assertthat=0.2.1=r36h6115d3f_2
r-backports=1.1.4=r36hcdcec82_1         r-backports=1.1.6=r36hcdcec82_2
r-base=3.6.1=hba50c9b_4                 r-base=3.6.3=h316533a_2
r-base64enc=0.1_3=r36hcdcec82_1003      r-base64enc=0.1_3=r36hcdcec82_1004
r-bit=1.1_14=r36hcdcec82_1              r-bit=1.1_15.2=r36hcdcec82_1
r-bit64=0.9_7=r36hcdcec82_1001          r-bit64=0.9_7=r36hcdcec82_1002
r-bitops=1.0_6=r36hcdcec82_1003         r-bitops=1.0_6=r36hcdcec82_1004
r-blob=1.2.0=r36_1                      r-blob=1.2.1=r36h6115d3f_1
r-brew=1.0_6=r36h6115d3f_1002           r-brew=1.0_6=r36h6115d3f_1003
r-broom=0.5.2=r36h6115d3f_1             r-broom=0.5.6=r36h6115d3f_1
r-callr=3.3.1=r36h6115d3f_0             r-callr=3.4.3=r36h6115d3f_1
r-caret=6.0_84=r36hcdcec82_1            r-caret=6.0_86=r36hcdcec82_1
r-cellranger=1.1.0=r36h6115d3f_1002     r-cellranger=1.1.0=r36h6115d3f_1003
r-class=7.3_15=r36hcdcec82_1001         r-class=7.3_17=r36hcdcec82_1
r-cli=1.1.0=r36h6115d3f_2               r-cli=2.0.2=r36h6115d3f_1
r-clipr=0.7.0=r36h6115d3f_0             r-clipr=0.7.0=r36h6115d3f_1
r-clisymbols=1.2.0=r36h6115d3f_1002
r-codetools=0.2_16=r36h6115d3f_1001     r-codetools=0.2_16=r36h6115d3f_1002
r-colorspace=1.4_1=r36hcdcec82_1        r-colorspace=1.4_1=r36hcdcec82_2
r-commonmark=1.7=r36hcdcec82_1001       r-commonmark=1.7=r36hcdcec82_1002
r-config=0.3=r36h6115d3f_1002           r-covr=3.5.0=r36h0357c0b_1
r-crayon=1.3.4=r36h6115d3f_1002         r-crayon=1.3.4=r36h6115d3f_1003
                                        r-crosstalk=1.1.0.1=r36h6115d3f_1
r-curl=4.0=r36hcdcec82_0                r-curl=4.3=r36hcdcec82_1
r-data.table=1.12.2=r36hcdcec82_1       r-data.table=1.12.8=r36hcdcec82_1
r-dbi=1.0.0=r36h6115d3f_1002            r-dbi=1.1.0=r36h6115d3f_1
r-dbplyr=1.4.2=r36h6115d3f_1            r-dbplyr=1.4.3=r36h6115d3f_1
r-desc=1.2.0=r36h6115d3f_1002           r-desc=1.2.0=r36h6115d3f_1003
r-devtools=2.1.0=r36h6115d3f_1          r-devtools=2.3.0=r36h6115d3f_0
r-digest=0.6.20=r36h0357c0b_1           r-digest=0.6.25=r36h0357c0b_2
r-dplyr=0.8.3=r36h0357c0b_3             r-dplyr=0.8.5=r36h0357c0b_1
                                        r-dt=0.13=r36h6115d3f_1
r-ellipsis=0.2.0.1=r36hcdcec82_1        r-ellipsis=0.3.0=r36hcdcec82_1
r-evaluate=0.14=r36h6115d3f_1           r-evaluate=0.14=r36h6115d3f_2
r-fansi=0.4.0=r36hcdcec82_1001          r-fansi=0.4.1=r36hcdcec82_1
                                        r-farver=2.0.3=r36h0357c0b_1
                                        r-fastmap=1.0.1=r36h0357c0b_1
r-forcats=0.4.0=r36h6115d3f_1           r-forcats=0.5.0=r36h6115d3f_1
r-foreach=1.4.7=r36h6115d3f_0           r-foreach=1.5.0=r36h6115d3f_1
r-forecast=8.7=r36h0357c0b_1            r-forecast=8.12=r36hc8faad4_0
r-forge=0.2.0=r36h6115d3f_1             r-fracdiff=1.5_1=r36hc57f18f_1
r-fracdiff=1.4_2=r36hcdcec82_1003
r-fs=1.3.1=r36h0357c0b_1                r-fs=1.4.1=r36h0357c0b_1
r-generics=0.0.2=r36h6115d3f_1002       r-generics=0.0.2=r36h6115d3f_1003
r-ggplot2=3.2.1=r36h6115d3f_0           r-ggplot2=3.3.0=r36h6115d3f_0
r-gh=1.0.1=r36h6115d3f_1002             r-gh=1.1.0=r36h6115d3f_1
r-git2r=0.26.1=r36h5ca76e2_1            r-git2r=0.27.1=r36h7253d3a_0
r-glue=1.3.1=r36hcdcec82_1              r-glue=1.4.0=r36hcdcec82_1
r-gower=0.2.1=r36hcdcec82_1             r-gower=0.2.1=r36hcdcec82_2
r-gtable=0.3.0=r36h6115d3f_2            r-gtable=0.3.0=r36h6115d3f_3
r-haven=2.1.1=r36h0357c0b_1             r-haven=2.2.0=r36hde08347_1
r-hexbin=1.27.3=r36h9bbef5b_2           r-hexbin=1.28.1=r36h9bbef5b_1
r-highr=0.8=r36h6115d3f_1               r-highr=0.8=r36h6115d3f_2
r-hms=0.5.1=r36h6115d3f_0               r-hms=0.5.3=r36h6115d3f_1
r-htmltools=0.3.6=r36he1b5a44_1003      r-htmltools=0.4.0=r36h0357c0b_1
r-htmlwidgets=1.3=r36h6115d3f_1001      r-htmlwidgets=1.5.1=r36h6115d3f_1
r-httpuv=1.5.2=r36h0357c0b_1            r-httpuv=1.5.2=r36h0357c0b_2
r-httr=1.4.1=r36h6115d3f_1              r-httr=1.4.1=r36h6115d3f_2
r-ini=0.3.1=r36h6115d3f_1002            r-ini=0.3.1=r36h6115d3f_1003
r-ipred=0.9_9=r36hcdcec82_1             r-ipred=0.9_9=r36hcdcec82_2
r-irdisplay=0.7=r36_1001                r-irdisplay=0.7=r36_1002
r-irkernel=1.0.2=r36h6115d3f_2          r-irkernel=1.1=r36h6115d3f_1
                                        r-isoband=0.2.1=r36h0357c0b_0
r-iterators=1.0.12=r36h6115d3f_0        r-iterators=1.0.12=r36h6115d3f_1
r-jsonlite=1.6=r36hcdcec82_1001         r-jsonlite=1.6.1=r36hcdcec82_1
r-kernsmooth=2.23_15=r36h9bbef5b_1004   r-kernsmooth=2.23_17=r36hfa343cc_1
r-knitr=1.24=r36h6115d3f_0              r-knitr=1.28=r36h6115d3f_1
r-labeling=0.3=r36h6115d3f_1002         r-labeling=0.3=r36h6115d3f_1003
r-later=0.8.0=r36h0357c0b_2             r-later=1.0.0=r36h0357c0b_1
r-lattice=0.20_38=r36hcdcec82_1002      r-lattice=0.20_41=r36hcdcec82_2
r-lava=1.6.6=r36h6115d3f_0              r-lava=1.6.7=r36h6115d3f_1
r-lazyeval=0.2.2=r36hcdcec82_1          r-lazyeval=0.2.2=r36hcdcec82_2
                                        r-lifecycle=0.2.0=r36h6115d3f_1
r-lmtest=0.9_37=r36h9bbef5b_2           r-lmtest=0.9_37=r36h9bbef5b_3
r-lubridate=1.7.4=r36h0357c0b_1002      r-lubridate=1.7.8=r36h0357c0b_1
r-magrittr=1.5=r36h6115d3f_1002         r-magrittr=1.5=r36h6115d3f_1003
r-markdown=1.1=r36hcdcec82_0            r-markdown=1.1=r36hcdcec82_1
r-mass=7.3_51.4=r36hcdcec82_1           r-mass=7.3_51.6=r36hcdcec82_2
r-matrix=1.2_17=r36hcdcec82_1           r-matrix=1.2_18=r36h7fa42b6_3
r-memoise=1.1.0=r36h6115d3f_1003        r-memoise=1.1.0=r36h6115d3f_1004
r-mgcv=1.8_28=r36hcdcec82_1             r-mgcv=1.8_31=r36h7fa42b6_1
r-mime=0.7=r36hcdcec82_1                r-mime=0.9=r36hcdcec82_1
r-modelmetrics=1.2.2=r36h0357c0b_1      r-modelmetrics=1.2.2.2=r36h0357c0b_1
r-modelr=0.1.5=r36h6115d3f_0            r-modelr=0.1.7=r36h6115d3f_1
r-munsell=0.5.0=r36h6115d3f_1002        r-munsell=0.5.0=r36h6115d3f_1003
r-nlme=3.1_141=r36h9bbef5b_1            r-nlme=3.1_147=r36h9bbef5b_1
r-nnet=7.3_12=r36hcdcec82_1003          r-nnet=7.3_14=r36hcdcec82_1
r-numderiv=2016.8_1.1=r36h6115d3f_1     r-numderiv=2016.8_1.1=r36h6115d3f_2
r-nycflights13=1.0.0=r36_1001           r-nycflights13=1.0.1=r36h6115d3f_0
r-openssl=1.4.1=r36h9c8475f_0           r-openssl=1.4.1=r36he5c4762_1
r-pbdzmq=0.3_3=r36h559a7a4_1002         r-pbdzmq=0.3_3=r36h559a7a4_1003
r-pillar=1.4.2=r36h6115d3f_2            r-pillar=1.4.3=r36h6115d3f_1
r-pkgbuild=1.0.5=r36h6115d3f_0          r-pkgbuild=1.0.7=r36h6115d3f_0
r-pkgconfig=2.0.2=r36h6115d3f_1003      r-pkgconfig=2.0.3=r36h6115d3f_1
r-pkgload=1.0.2=r36h0357c0b_1001        r-pkgload=1.0.2=r36h0357c0b_1001
r-plogr=0.2.0=r36h6115d3f_1002          r-plogr=0.2.0=r36h6115d3f_1003
r-plyr=1.8.4=r36h0357c0b_1003           r-plyr=1.8.6=r36h0357c0b_1
r-praise=1.0.0=r36h6115d3f_1003         r-praise=1.0.0=r36h6115d3f_1004
r-prettyunits=1.0.2=r36h6115d3f_1002    r-prettyunits=1.1.1=r36h6115d3f_1
                                        r-proc=1.16.2=r36h0357c0b_1
r-processx=3.4.1=r36hcdcec82_0          r-processx=3.4.2=r36hcdcec82_1
r-prodlim=2018.04.18=r36h0357c0b_1003   r-prodlim=2019.11.13=r36h0357c0b_1
r-progress=1.2.2=r36h6115d3f_1          r-progress=1.2.2=r36h6115d3f_2
r-promises=1.0.1=r36h0357c0b_1001       r-promises=1.1.0=r36h0357c0b_1
r-ps=1.3.0=r36hcdcec82_1001             r-ps=1.3.2=r36hcdcec82_1
r-purrr=0.3.2=r36hcdcec82_1             r-purrr=0.3.4=r36hcdcec82_1
r-quadprog=1.5_7=r36h9bbef5b_2          r-quadprog=1.5_8=r36hfa343cc_2
r-quantmod=0.4_15=r36h6115d3f_1         r-quantmod=0.4.17=r36h6115d3f_1
r-r2d3=0.2.3=r36h6115d3f_1001
r-r6=2.4.0=r36h6115d3f_2                r-r6=2.4.1=r36h6115d3f_1
r-randomforest=4.6_14=r36h9bbef5b_1002  r-randomforest=4.6_14=r36h9bbef5b_1003
r-rappdirs=0.3.1=r36hcdcec82_1003
r-rcmdcheck=1.3.3=r36h6115d3f_2         r-rcmdcheck=1.3.3=r36h6115d3f_2
r-rcolorbrewer=1.1_2=r36h6115d3f_1002   r-rcolorbrewer=1.1_2=r36h6115d3f_1003
r-rcpp=1.0.2=r36h0357c0b_0              r-rcpp=1.0.4.6=r36h0357c0b_1
r-rcpparmadillo=0.9.700.2.0=r36h0357c0  r-rcpparmadillo=0.9.870.2.0=r36h51c796
b_0                                     c_1
r-rcurl=1.95_4.12=r36hcdcec82_1         r-rcurl=1.98_1.2=r36hcdcec82_1
r-readr=1.3.1=r36h0357c0b_1002          r-readr=1.3.1=r36h0357c0b_1003
r-readxl=1.3.1=r36h0357c0b_1            r-readxl=1.3.1=r36hde08347_4
r-recipes=0.1.6=r36h6115d3f_1           r-recipes=0.1.12=r36h6115d3f_1
r-rematch=1.0.1=r36h6115d3f_1002        r-rematch=1.0.1=r36h6115d3f_1003
                                        r-rematch2=2.1.2=r36h6115d3f_1
r-remotes=2.1.0=r36h6115d3f_1           r-remotes=2.1.1=r36h6115d3f_1
r-repr=1.0.1=r36h6115d3f_1              r-repr=1.1.0=r36h6115d3f_1
r-reprex=0.3.0=r36h6115d3f_1            r-reprex=0.3.0=r36h6115d3f_1
r-reshape2=1.4.3=r36h0357c0b_1004       r-reshape2=1.4.4=r36h0357c0b_1
                                        r-rex=1.2.0=r36h6115d3f_1
r-rlang=0.4.0=r36hcdcec82_1             r-rlang=0.4.6=r36hcdcec82_0
r-rmarkdown=1.14=r36h6115d3f_1          r-rmarkdown=2.1=r36h6115d3f_0
r-roxygen2=6.1.1=r36h0357c0b_1001       r-roxygen2=7.1.0=r36h0357c0b_0
r-rpart=4.1_15=r36hcdcec82_1            r-rpart=4.1_15=r36hcdcec82_2
r-rprojroot=1.3_2=r36h6115d3f_1002      r-rprojroot=1.3_2=r36h6115d3f_1003
r-rsqlite=2.1.2=r36h0357c0b_1           r-rsqlite=2.2.0=r36h0357c0b_2
r-rstudioapi=0.10=r36h6115d3f_2         r-rstudioapi=0.11=r36h6115d3f_1
                                        r-rversions=2.0.1=r36h6115d3f_1
r-rvest=0.3.4=r36h6115d3f_1             r-rvest=0.3.5=r36h6115d3f_1
r-scales=1.0.0=r36h0357c0b_1002         r-scales=1.1.0=r36h6115d3f_1
r-selectr=0.4_1=r36h6115d3f_1001        r-selectr=0.4_2=r36h6115d3f_1
r-sessioninfo=1.1.1=r36h6115d3f_1001    r-sessioninfo=1.1.1=r36h6115d3f_1002
r-shiny=1.3.2=r36h6115d3f_1             r-shiny=1.4.0.2=r36h6115d3f_1
r-sourcetools=0.1.7=r36he1b5a44_1001    r-sourcetools=0.1.7=r36he1b5a44_1002
r-sparklyr=1.0.2=r36h6115d3f_1
r-squarem=2017.10_1=r36h6115d3f_1002    r-squarem=2020.2=r36h6115d3f_1
r-stringi=1.4.3=r36h0e574ca_3           r-stringi=1.4.6=r36h0e574ca_2
r-stringr=1.4.0=r36h6115d3f_1           r-stringr=1.4.0=r36h6115d3f_2
r-survival=2.44_1.1=r36hcdcec82_1       r-survival=3.1_12=r36hcdcec82_1
r-sys=3.3=r36hcdcec82_0                 r-sys=3.3=r36hcdcec82_1
r-testthat=2.2.1=r36h0357c0b_0          r-testthat=2.3.2=r36h0357c0b_0
r-tibble=2.1.3=r36hcdcec82_1            r-tibble=3.0.1=r36hcdcec82_1
r-tidyr=0.8.3=r36h0357c0b_1             r-tidyr=1.0.2=r36h0357c0b_1
r-tidyselect=0.2.5=r36h0357c0b_1001     r-tidyselect=1.0.0=r36h6115d3f_1
r-tidyverse=1.2.1=r36h6115d3f_1002      r-tidyverse=1.3.0=r36h6115d3f_1
r-timedate=3043.102=r36h6115d3f_1001    r-timedate=3043.102=r36h6115d3f_1002
r-tinytex=0.15=r36h6115d3f_0            r-tinytex=0.22=r36h6115d3f_1
r-tseries=0.10_47=r36h9bbef5b_2         r-tseries=0.10_47=r36hfa343cc_4
r-ttr=0.23_4=r36h9bbef5b_1002           r-ttr=0.23_6=r36hcdcec82_1
r-urca=1.3_0=r36h9bbef5b_1004           r-urca=1.3_0=r36h9bbef5b_1005
r-usethis=1.5.1=r36h6115d3f_1           r-usethis=1.6.1=r36h6115d3f_1
r-utf8=1.1.4=r36hcdcec82_1001           r-utf8=1.1.4=r36hcdcec82_1003
r-uuid=0.1_2=r36hcdcec82_1002           r-uuid=0.1_4=r36hcdcec82_1
r-vctrs=0.2.0=r36hcdcec82_1             r-vctrs=0.2.4=r36hcdcec82_1
r-viridislite=0.3.0=r36h6115d3f_1002    r-viridislite=0.3.0=r36h6115d3f_1003
r-whisker=0.4=r36h6115d3f_0             r-whisker=0.4=r36h6115d3f_1
r-withr=2.1.2=r36h6115d3f_1001          r-withr=2.2.0=r36h6115d3f_1
r-xfun=0.9=r36h6115d3f_0                r-xfun=0.13=r36h6115d3f_1
r-xml2=1.2.2=r36h0357c0b_0              r-xml2=1.3.2=r36h0357c0b_1
r-xopen=1.0.0=r36h6115d3f_1002          r-xopen=1.0.0=r36h6115d3f_1003
r-xtable=1.8_4=r36h6115d3f_2            r-xtable=1.8_4=r36h6115d3f_3
r-xts=0.11_2=r36hcdcec82_1              r-xts=0.12_0=r36hcdcec82_1
r-yaml=2.2.0=r36hcdcec82_1002           r-yaml=2.2.1=r36hcdcec82_1
r-zeallot=0.1.0=r36h6115d3f_1001        r-zeallot=0.1.0=r36h6115d3f_1002
r-zoo=1.8_6=r36hcdcec82_1               r-zoo=1.8_8=r36hcdcec82_0
rasterio=1.1.3=py37h900e953_0           rasterio=1.1.4=py37h0492a4a_0
                                        rdflib=5.0.0=py37hc8dfbb8_2
readline=8.0=hf8c457e_0                 readline=8.0=hf8c457e_0
regrid2=3.1.3=pypi_0                    regrid2=3.1.3=pypi_0
requests=2.22.0=py37_1                  requests=2.23.0=pyh8c360ce_2
rpy2=2.9.4=py37r36hd767a1f_3            rpy2=3.1.0=py37r36hc1659b7_3
rtree=0.9.4=py37h8526d28_1              rtree=0.9.4=py37h8526d28_1
                                        ruamel.yaml=0.16.6=py37h8f50634_1
                                        ruamel.yaml.clib=0.2.0=py37h8f50634_1
ruamel_yaml=0.15.71=py37h14c3975_1000   ruamel_yaml=0.15.80=py37h8f50634_1001
scikit-image=0.15.0=py37hb3f55d8_2      scikit-image=0.16.2=py37hb3f55d8_0
scikit-learn=0.21.3=py37hcdab131_0      scikit-learn=0.22.2.post1=py37hcdab131
                                        _0
scipy=1.3.1=py37h921218d_2              scipy=1.4.1=py37ha3d9a3c_3
seaborn=0.9.0=py_1                      seaborn=0.10.1=py_0
                                        seawater=3.3.4=py_1
sed=4.7=h1bed415_1000                   sed=4.7=h1bed415_1000
send2trash=1.5.0=py_0                   send2trash=1.5.0=py_0
setuptools=46.1.3=pypi_0                setuptools=46.1.3=py37hc8dfbb8_0
shapely=1.7.0=py37hc88ce51_3            shapely=1.7.0=py37hc88ce51_3
simplegeneric=0.8.1=py_1                simplegeneric=0.8.1=py_1
siphon=0.8.0=pypi_0
six=1.12.0=py37_1000                    six=1.14.0=py_1
snuggs=1.4.7=py_0                       snuggs=1.4.7=py_0
sortedcontainers=2.1.0=py_0             sortedcontainers=2.1.0=py_0
soupsieve=1.9.3=py37_0                  soupsieve=1.9.4=py37hc8dfbb8_1
                                        sparqlwrapper=1.8.5=py37hc8dfbb8_1003
sqlalchemy=1.3.8=py37h516909a_0         sqlalchemy=1.3.16=py37h8f50634_0
sqlite=3.30.1=hcee41ef_0                sqlite=3.30.1=hcee41ef_0
statsmodels=0.10.1=py37hc1659b7_0       statsmodels=0.11.1=py37h8f50634_1
sympy=1.4=py37_0                        sympy=1.5.1=py37hc8dfbb8_3
tbb=2018.0.5=h2d50403_0                 tbb=2018.0.5=h2d50403_0
tblib=1.4.0=py_0                        tblib=1.6.0=py_0
tempest-remap=2.0.3=nompi_hfc2589c_107  tempest-remap=2.0.3=nompi_h60f458c_108
terminado=0.8.2=py37_0                  terminado=0.8.3=py37hc8dfbb8_1
testpath=0.4.2=py_1001                  testpath=0.4.4=py_0
tiledb=1.7.0=hcde45ca_2                 tiledb=1.7.7=h8efa9f0_1
tini=0.18.0=h14c3975_1001               tini=0.18.0=h14c3975_1001
tk=8.6.10=hed695b0_0                    tk=8.6.10=hed695b0_0
tktable=2.10=h555a92e_2                 tktable=2.10=h555a92e_3
toolz=0.10.0=py_0                       toolz=0.10.0=py_0
tornado=6.0.3=py37h516909a_0            tornado=6.0.4=py37h8f50634_1
tqdm=4.32.2=py_0                        tqdm=4.45.0=pyh9f0ad1d_1
traitlets=4.3.2=py37_1000               traitlets=4.3.3=py37hc8dfbb8_1
traittypes=0.2.1=py_1                   traittypes=0.2.1=py_1
                                        typing_extensions=3.7.4.2=py_0
tzcode=2020a=h516909a_0                 tzcode=2020a=h516909a_0
tzlocal=2.0.0=py_0                      tzlocal=2.0.0=py_0
udunits2=2.2.27.6=h4e0c4b3_1001         udunits2=2.2.27.6=h4e0c4b3_1001
urllib3=1.25.3=py37_0                   urllib3=1.25.9=py_0
vincent=0.4.4=py_1                      vincent=0.4.4=py_1
wcwidth=0.1.7=py_1                      wcwidth=0.1.9=pyh9f0ad1d_0
webencodings=0.5.1=py_1                 webencodings=0.5.1=py_1
wheel=0.33.4=py37_0                     wheel=0.34.2=py_1
widgetsnbextension=3.5.1=py37_0         widgetsnbextension=3.5.1=py37_0
xarray=0.15.1=py_0                      xarray=0.15.1=py_0
xerces-c=3.2.2=h8412b87_1004            xerces-c=3.2.2=h8412b87_1004
                                        xesmf=0.3.0=py_0
xlrd=1.2.0=py_0                         xlrd=1.2.0=py_0
                                        xlsxwriter=1.2.8=py_0
xorg-kbproto=1.0.7=h14c3975_1002        xorg-kbproto=1.0.7=h14c3975_1002
xorg-libice=1.0.10=h516909a_0           xorg-libice=1.0.10=h516909a_0
xorg-libsm=1.2.3=h84519dc_1000          xorg-libsm=1.2.3=h84519dc_1000
xorg-libx11=1.6.8=h516909a_0            xorg-libx11=1.6.9=h516909a_0
xorg-libxau=1.0.9=h14c3975_0            xorg-libxau=1.0.9=h14c3975_0
xorg-libxdmcp=1.1.3=h516909a_0          xorg-libxdmcp=1.1.3=h516909a_0
xorg-libxext=1.3.4=h516909a_0           xorg-libxext=1.3.4=h516909a_0
                                        xorg-libxpm=3.5.13=h516909a_0
xorg-libxrender=0.9.10=h516909a_1002    xorg-libxrender=0.9.10=h516909a_1002
                                        xorg-libxt=1.1.5=h516909a_1003
xorg-renderproto=0.11.1=h14c3975_1002   xorg-renderproto=0.11.1=h14c3975_1002
xorg-xextproto=7.3.0=h14c3975_1002      xorg-xextproto=7.3.0=h14c3975_1002
xorg-xproto=7.0.31=h14c3975_1007        xorg-xproto=7.0.31=h14c3975_1007
xz=5.2.4=h14c3975_1001                  xz=5.2.5=h516909a_0
yaml=0.1.7=h14c3975_1001                yamale=2.0=py_0
yarl=1.4.2=pypi_0                       yaml=0.2.4=h516909a_0
zarr=2.4.0=py_0                         zarr=2.4.0=py_0
zeromq=4.3.2=he1b5a44_2                 zeromq=4.3.2=he1b5a44_2
zict=1.0.0=py_0                         zict=2.0.0=py_0
                                        zipp=3.1.0=py_0
zlib=1.2.11=h516909a_1005               zlib=1.2.11=h516909a_1006
zstd=1.4.4=h3b9ef0a_2                   zstd=1.4.4=h6597ccf_3
</details>

May 19, 2020:
- Pin versions to current environment configuration

May 18, 2020:
- Start changelog
- Enable autobuild on dockerhub
- Create master and stable branches
