FROM davetang/rstudio:4.5.0

LABEL maintainer="Dave Tang <me@davetang.org>" \
      version="0.0.0.9000" \
      description="Seurat container for testing purposes"

RUN apt-get clean all && \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
      cmake \
      libssl-dev \
      libclang-dev \
      libxml2-dev \
      libcurl4-openssl-dev \
      libssl-dev \
      libfftw3-dev \
      libtiff-dev \
      libgsl-dev \
      libfontconfig1-dev \
      libharfbuzz-dev \
      libfribidi-dev \
      libproj-dev \
      libboost-all-dev \
      libmagick++-dev \
      libv8-dev \
      libudunits2-dev \
      libgdal-dev \
      libmpfr-dev \
      glpk-utils \
      libglpk-dev \
      libicu-dev \
      libhdf5-dev \
      python3-pip \
      patch \
	&& apt-get clean all && \
	apt-get purge && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN R -q -e 'install.packages(c("BiocManager", "remotes", "optparse"))'
RUN R -q -e 'install.packages("hdf5r")'
RUN R -q -e 'install.packages("Seurat")'
RUN R -q -e 'library(Seurat)'
