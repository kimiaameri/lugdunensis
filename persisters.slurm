#!/bin/sh
#SBATCH --time=10:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=persisters
#SBATCH --error=persisters.%J.err
#SBATCH --output=persisters.%J.out

###  5_C10, 5_C11, 5_D7, 5_H3 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

bcftools isec 5_C10*.vcf.gz 5_C11*.vcf.gz 5_H3*.vcf.gz 5_D7*.vcf.gz -p $WORK/lugdunensis-output/bcfoutput/low -n=16;

bcftools isec 10_F1*.vcf.gz 10_H5*.vcf.gz 13_G2*.vcf.gz 3_B5*.vcf.gz 5_C4*.vcf.gz  8_C9*.vcf.gz 8_A7*.vcf.gz 9_A2*.vcf.gz -p $WORK/lugdunensis-output/bcfoutput/high -n=32 ;

bcftools isec *.vcf.gz -p $WORK/lugdunensis-output/bcfoutput/all -n=48;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/bcfoutput/*/*.vcf; 

