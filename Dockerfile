FROM rocker/rstudio:4.4.3

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        git \
        libcairo2-dev \
        libnetcdf-dev \
        libxml2-dev \
        libxt-dev \
        libssl-dev \
        && rm -rf /var/lib/apt/lists/*

# Install R libraries
RUN R -e "install.packages(c('remotes', 'crmn, 'httr', 'qs')"

RUN R -e "install.packages('BiocManager')"
RUN R -e "BiocManager::install('impute', 'pcaMethods', 'globaltest', 'GlobalAncova',\ 
                               'Rgraphviz', 'preprocessCore', 'genefilter', 'SSPA',\ 
                               'sva', 'limma', 'KEGGgraph', 'siggenes', 'BiocParallel',\ 
                               'MSnbase', 'multtest', 'RBGL', 'edgeR', 'fgsea', 'ctc')"

RUN R -e "install.packages('glasso')", 'ppcor', 'huge', 'crmn', 'plotly')"


RUN R -e "remotes::install_github('xia-lab/MetaboAnalystR', build = TRUE, build_vignettes = FALSE);"
RUN R -e "remotes::install_github('xia-lab/OptiLCMS', build = TRUE, build_vignettes = FALSE, build_manual =FALSE)"

# Expose default RStudio Server port
EXPOSE 8787

# Default password: rstudio / rstudio
