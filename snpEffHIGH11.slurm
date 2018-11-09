#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_D7, 5_H3 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir HIGH11
cp 10_F1* ./HIGH11
cp 10_H5* ./HIGH11
cp 13_G2* ./HIGH11
cp 3_B5* ./HIGH11
cp 5_C4* ./HIGH11
cp 8_C9* ./HIGH11
#cp 8_A7* ./HIGH11
cp 9_A2* ./HIGH11 
mkdir ALL11
cp 10_F1* ./ALL11
cp 10_H5* ./ALL11
cp 13_G2* ./ALL11
cp 3_B5* ./ALL11
cp 5_C4* ./ALL11
cp 8_C9* ./ALL11
#cp 8_A7* ./ALL11
cp 9_A2* ./ALL11
cp 5_C11* ./ALL11
cp 5_C10* ./ALL11
cp 5_H3* ./ALL11
cp 5_D7* ./ALL11

bcftools isec $WORK/lugdunensis-output/bcfoutput/HIGH11/*.gz -p $WORK/lugdunensis-output/HIGH11 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/ALL11/*.gz -p $WORK/lugdunensis-output/ALL11 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/ALL11/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/HIGH11/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir HIGH11
cd HIGH11
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/ALL11/0000.vcf > $WORK/lugdunensis-output/snpEff/HIGH11/snpEff-AllHIGH11-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/HIGH11/snpEff-gene/all-HIGH11-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/HIGH11/snpEff-summary/all-HIGH11-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/HIGH11/snpEff-gene/HIGH11-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/HIGH11/snpEff-summary/HIGH11-0-summary.html;


