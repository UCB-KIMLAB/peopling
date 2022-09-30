## 1000 genome data

For 1kg dataset, we downloaded all 1kg variant call files which anchor on chromosomes by using wget commands from ISGR ftp site.

```bash
for i in $(seq 1 1 22); 
do 
  wget https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr$i''.phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz;
done

```

### Simons Genome Diversity Panel (sgdp) data

the following plink files (.bim, .bam, and .fam) were downloaded from section (i) of reich lab homepage (https://reichdata.hms.harvard.edu/pub/datasets/sgdp/)

```bash
BIM=https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.bim.zip
BED=https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.bed
FAM=https://sharehost.hms.harvard.edu/genetics/reich_lab/sgdp/variant_set/cteam_extended.v4.maf0.1perc.fam

wget $BIM
wget $BED
wget $FAM

## unarchive bim file

unzip cteam_extended.v4.maf0.1perc.bim.zip
```
