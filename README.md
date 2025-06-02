# Docker container for MetaboAnalystR

## Description 

This repository contains the Docker setup files to create an RStudio instance running [MetaboAnalystR](https://github.com/xia-lab/MetaboAnalystR), "a unified LC-MS workflow for global metabolomics."

The resultant Docker container runs MetaboAnalystR 4.0 and [OptiLCMS 1.1.0](https://github.com/xia-lab/OptiLCMS) along with all required dependences. It's is built on top of the base [RStudio image][rocker-rstudio] from [Rocker.org][rocker]


## Getting Started

### Installing Docker

Please follow these directions to download Docker: <https://docs.docker.com/install/>.

### Docker instructions

Once you have Docker available, you can get started with the following command
```docker
docker compose up -d
```
This should download all necessary files, build the container, then run it. Navigate to the resulting web server to get started. The username and password are both set to `rstudio` by default. The password can be changed by modifying the `PASSWORD` entry in the `compose.yaml` file. 

When you're finished working, shut down the container with 
```docker
docker compose down
```
All of your data should be saved in `./rstudio-data`. 


## MetaboAnalystR Case Studies

### MetaboAnalystR 4.0:  unified LC-MS workflow for global metabolomics

The most recent application of MetaboAnalyst to LC-MS data is available [here](https://www.nature.com/articles/s41467-024-48009-6). [A tutorial guide] is available which includes links to several detailed vignettes for using the package. An updated version of the first vignette [can be found in this repository](./lcms_processing_vignette.md).

### MetaboAnalystR 3.0: Towards an Optimized Workflow for Global Metabolomics

The case studies have been preformed in our article of this version [here](https://www.mdpi.com/2218-1989/10/5/186) (available online now). The example running R code of this article have been provided as a vignette inside the R package.


### MetaboAnalystR 2.0: From Raw Spectra to Biological Insights

The R scripts to perform all of the analysis from our previous manuscript "MetaboAnalystR 2.0: From Raw Spectra to Biological Insights" can be found [here](https://github.com/jsychong/MetaboAnalystR/tree/master/MetaboAnalystR_2_Supplementary_Data).

The detailed tutorial of the outdated version to perform a comprehensive end-to-end metabolomics data workflow from raw data preprocessing to knowledge-based analysis still works. The tutorial is available as a PDF is also available inside the R package as a vignette.

### MetaboAnalystR 1.0:  flexible and reproducible analysis of metabolomics data
To demonstrate the functionality, flexibility, and scalability of the MetaboAnalystR v1.0.0 package, three use-cases using two sets of metabolomics data is available [here](https://github.com/jsychong/MetaboAnalystR/tree/master/Supplementary_Material). In this folder you will find detailed discussions and comparisons with the MetaboAnalyst web-platform.

## Tutorials

For detailed tutorials on how to use MetaboAnalystR 4.0, please refer to the R package vignettes. These vignettes include detailed step-by-step workflows with example data for each of the main MetaboAnalytR 4.0 modules, a case-study showcasing the new end-to-end functionality of MetaboAnalystR 4.0. The raw data processing workflow has been accelerated and gradually mature. Note, the functions below work only if the R package vignettes were built. 

Within R:
```R
vignette(package="MetaboAnalystR")
```

Within a web-browser:
```R
browseVignettes("MetaboAnalystR")
```

## Citation

MetaboAnalystR package has been developed by the [XiaLab](https://www.xialab.ca/) at McGill University. We encourage users to further develop the package to suit their needs. If you use the R package, please cite us: 

* Zhiqiang Pang, Lei Xu, Charles Viau, Yao Lu, Reza Salavati, Niladri Basu and Jianguo Xia. "MetaboAnalystR 4.0: a unified LC-MS workflow for global metabolomics" Nat Commun 15, 3675 (2024). DOI:[10.1038/s41467-024-48009-6](https://doi.org/10.1038/s41467-024-48009-6)

* Zhiqiang Pang, Jasmine Chong, Shuzhao Li and Jianguo Xia. "MetaboAnalystR 3.0: Toward an Optimized Workflow for Global Metabolomics" DOI:[10.3390/metabo10050186](https://doi.org/10.3390/metabo10050186)

* Jasmine Chong, Mai Yamamoto, and Jianguo Xia. "MetaboAnalystR 2.0: From Raw Spectra to Biological Insights." 
Metabolites 9.3 (2019): 57. [link](https://www.mdpi.com/2218-1989/9/3/57)

* Jasmine Chong, and Jianguo Xia. "MetaboAnalystR: an R package for flexible and reproducible analysis of metabolomics data." Bioinformatics 34.24 (2018): 4313-4314. DOI:[10.1093/bioinformatics/bty528](https://doi.org/10.1093/bioinformatics/bty528)

*From within R:*

```R
citation("MetaboAnalystR")
```

[rocker]: 
[rocker-rstudio]: 
