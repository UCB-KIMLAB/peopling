Genomic demography of world’s ethnic populations and genomic identity between two individuals
=============================================================================================

[![DOI](https://zenodo.org/badge/doi/10.1101/2022.03.28.486119.svg)](http://dx.doi.org/10.1101/2022.03.28.486119)

## Introduction 

This repository contains R/perl codes to conduct an analysis of the [Genomic demography of world’s ethnic populations and genomic identity between two individuals](http://dx.doi.org/10.1101/2022.03.28.486119) and details

- current status : Code cleaning and review.
- sorry for the inconvenient We will upload the clean codes as soon as possible

## Installation & functions

```r
library(devtools)
install_github("Displayr/flipPlots")
```

### code usage

- code usage with examples


## workflow

```mermaid

graph TD
    A[fa:fa-database 1KGP]  --> |Phase 3 vcf  | C
    B[fa:fa-database SGDP]  --> |Plink files | C
    C[fa:fa-filter QC/QA] --> | 10-letter <br> encoding | D 
    D[Feature Profiling/Normalization] --> F 
    F[pairwise-JS divergence calculation] --> G
    G[BioNJ] --> | Tree Optimization by finding best K-mer | H
    A --> I
    B --> I
    I[meta data] --> J
    H[Final Tree] --> K[Sample Mapping]
    J[Map] --> K
    C --> L 
    L[pairwise IBS2 <br> calculation] --> M
    M[distance comparison] --> H
 ```
## softwares used.

* plink
* R/Shiny
* [feature frequency profile](https://github.com/jaejinchoi/FFP)

## DATA

* We downloaded binary plink files which has prefix of `cteam_extended.v4.maf0.1perc' which located on [Simons Genome Diversity Project (SGDP)](https://reichdata.hms.harvard.edu/pub/datasets/sgdp/) section I.
 
    * [.bim.zip](https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.bim.zip)
    * [.bed](https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.bed)
    * [.fam](https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.fam)
    * metadata file was curated by BJK after download.
      * metadata manipulation

* [1000 genome project phase 3](https://ftp.ncbi.nlm.nih.gov/1000genomes/ftp/release/20130502/)


## custom functions to use



## Contributers

* Byung-Ju Kim (bjk@inu.ac.kr)

