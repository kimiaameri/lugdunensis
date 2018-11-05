#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_H3, 5_C11 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir low4
cp 5_C10* ./low4
cp 5_C11* ./low4
cp 5_H3* ./low4
#cp 5_D7* ./low3
 
mkdir all4
cp 10_F1* ./all4
cp 10_H5* ./all4
cp 13_G2* ./all4
cp 3_B5* ./all4
cp 5_C4* ./all4
cp 8_C9* ./all4
cp 8_A7* ./all4
cp 9_A2* ./all4
cp 5_C11* ./all4
cp 5_H3* ./all4
cp 5_C10* ./all4


bcftools isec $WORK/lugdunensis-output/bcfoutput/low4/*.gz -p $WORK/lugdunensis-output/low4 -n=12;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all4/*.gz -p $WORK/lugdunensis-output/all4 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all4/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low4/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir low4
cd low4
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all4/0000.vcf > $WORK/lugdunensis-output/snpEff/low4/snpEff-Alllow4-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low4/snpEff-gene/all-low4-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low4/snpEff-summary/all-low4-0-summary.html;

######################################### highs######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/snpEff-gene/high-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low4/0000.vcf > $WORK/lugdunensis-output/snpEff/low4/snpEff-low4-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low4/snpEff-gene/low4-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low4/snpEff-summary/low4-0-summary.html;
