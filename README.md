Genomic demography of world’s ethnic populations and genomic identity between two individuals
=============================================================================================

## Introduction 

This repository contatins R codes which I used for the analysis


## Installation & function uses.

current status : code reviewing

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
## softwares

* plink
* R/Shiny

## DATA

* We downloaded binary plink files which has prefix of `cteam_extended.v4.maf0.1perc' which located on [Simons Genome Diversity Project (SGDP)](https://reichdata.hms.harvard.edu/pub/datasets/sgdp/) section I.
 
    * [.bim.zip](https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.bim.zip)
    * [.bed](https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.bed)
    * [.fam](https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.fam)
    * metadata file was curated by BJK after download.
      * metadata manipulation

* [1000 genome project phase 3](https://ftp.ncbi.nlm.nih.gov/1000genomes/ftp/release/20130502/)

## Contributers

* Byung-Ju Kim PhD (bjk@inu.ac.kr)

