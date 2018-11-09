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

mkdir LOW3
cp 5_C10* ./LOW3
cp 5_C11* ./LOW3
#cp 5_H3* ./LOW3
cp 5_D7* ./LOW3
 
mkdir ALL3
cp 10_F1* ./ALL3
cp 10_H5* ./ALL3
cp 13_G2* ./ALL3
cp 3_B5* ./ALL3
cp 5_C4* ./ALL3
cp 8_C9* ./ALL3
cp 8_A7* ./ALL3
cp 9_A2* ./ALL3
cp 5_C11* ./ALL3
cp 5_C10* ./ALL3
#cp 5_H3* ./ALL3
cp 5_D7* ./ALL3


bcftools isec $WORK/lugdunensis-output/bcfoutput/LOW3/*.gz -p $WORK/lugdunensis-output/LOW3 -n=12;

bcftools isec $WORK/lugdunensis-output/bcfoutput/ALL3/*.gz -p $WORK/lugdunensis-output/ALL3 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/ALL3/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/LOW3/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir LOW3
cd LOW3
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/ALL3/0000.vcf > $WORK/lugdunensis-output/snpEff/LOW3/snpEff-AllLOW3-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/LOW3/snpEff-gene/all-LOW3-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/LOW3/snpEff-summary/all-LOW3-0-summary.html;

######################################### highs######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/snpEff-gene/high-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/LOW3/0000.vcf > $WORK/lugdunensis-output/snpEff/LOW3/snpEff-LOW3-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/LOW3/snpEff-gene/LOW3-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/LOW3/snpEff-summary/LOW3-0-summary.html;

