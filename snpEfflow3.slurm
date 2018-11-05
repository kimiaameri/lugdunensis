#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_D7, 5_C11 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir low3
cp 5_C10* ./low3
cp 5_C11* ./low3
#cp 5_H3* ./low3
cp 5_D7* ./low3
 
mkdir all3
cp 10_F1* ./all3
cp 10_H5* ./all3
cp 13_G2* ./all3
cp 3_B5* ./all3
cp 5_C4* ./all3
cp 8_C9* ./all3
cp 8_A7* ./all3
cp 9_A2* ./all3
cp 5_C11* ./all3
cp 5_H3* ./all3
cp 5_D7* ./all3


bcftools isec $WORK/lugdunensis-output/bcfoutput/low3/*.gz -p $WORK/lugdunensis-output/low3 -n=12;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all3/*.gz -p $WORK/lugdunensis-output/all3 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all3/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low3/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir low3
cd low3
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all3/0000.vcf > $WORK/lugdunensis-output/snpEff/low3/snpEff-Alllow3-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low3/snpEff-gene/all-low3-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low3/snpEff-summary/all-low3-0-summary.html;

######################################### highs######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/snpEff-gene/high-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low3/0000.vcf > $WORK/lugdunensis-output/snpEff/low3/snpEff-low3-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low3/snpEff-gene/low3-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low3/snpEff-summary/low3-0-summary.html;
