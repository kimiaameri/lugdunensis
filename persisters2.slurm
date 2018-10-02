#!/bin/sh
#SBATCH --time=10:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=persisters2
#SBATCH --error=persisters2.%J.err
#SBATCH --output=persisters2.%J.out

###  5_C10, 5_C11, 5_D7, 5_H3 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput2
module load bcftools/1.8

mkdir low2
cp 5_C10* ./low2
cp 5_C11* ./low2
cp 5_H3* ./low2
cp 5_D7* ./low2
 
mkdir high2
cp 10_F1* ./high2
cp 10_H5* ./high2
cp 13_G2* ./high2
cp 3_B5* ./high2
cp 5_C4* ./high2
cp 8_C9* ./high2
cp 8_A7* ./high2
cp 9_A2* ./high2


bcftools isec $WORK/lugdunensis-output/bcfoutput2/low2/*.gz -p $WORK/lugdunensis-output/low2 -n=16;

bcftools isec $WORK/lugdunensis-output/bcfoutput2/high2/*.gz -p $WORK/lugdunensis-output/high2 -n=32 ;

bcftools isec $WORK/lugdunensis-output/bcfoutput2/*.gz -p $WORK/lugdunensis-output/all2 -n=48;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all2/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high2/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low2/*.vcf; 

