#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_C11, 5_D7, 5_H3 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir low1
#cp 5_C10* ./low
cp 5_C11* ./low1
cp 5_H3* ./low1
cp 5_D7* ./low1
 
mkdir all1
cp 10_F1* ./all1
cp 10_H5* ./all1
cp 13_G2* ./all1
cp 3_B5* ./all1
cp 5_C4* ./all1
cp 8_C9* ./all1
cp 8_A7* ./all1
cp 9_A2* ./all1
cp 5_C11* ./all1
cp 5_H3* ./all1
cp 5_D7* ./all1


bcftools isec $WORK/lugdunensis-output/bcfoutput/low1/*.gz -p $WORK/lugdunensis-output/low1 -n=12;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all1/*.gz -p $WORK/lugdunensis-output/all1 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all1/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low1/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir low1
cd low1
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all1/0000.vcf > $WORK/lugdunensis-output/snpEff/low1/snpEff-Alllow1-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low1/snpEff-gene/all-low1-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low1/snpEff-summary/all-low1-0-summary.html;

######################################### highs######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/snpEff-gene/high-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low1/0000.vcf > $WORK/lugdunensis-output/snpEff/low1/snpEff-low1-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low1/snpEff-gene/low1-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low1/snpEff-summary/low1-0-summary.html;


