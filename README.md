Genomic demography of world’s ethnic populations and genomic identity between two individuals
====================================================================================

## Installation & function uses.

*
* 
* 
* 

## Introduction 

This repository contatins R codes which I used for the analysis

(plz see hgrc:~/kimgrp/sgdp.v2 folder)

## test mermaid diagram in github

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
    * metadata file curated by BJK.
      * [metadata manipulation]()

* [1000 genome project phase 3]()

## workflow

```bash


```


## DATA manipulation

```bash
for i in $(seq 1 1 22)
do
  plink --bfile cteam_extended.v4.maf0.1perc --geno 0.01 --recode vcf --chr $i --out <outfile1>
done
```
## map graphics


## PCA/eigenvalue plot


##


## Contributers

* Byung-Ju Kim PhD

