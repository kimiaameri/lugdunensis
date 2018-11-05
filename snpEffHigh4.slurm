#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_H3, 5_C11 , 5_D7 are all low biofilm formers
### 10_F1  10_H5  13_G2  !3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir high8
cp 10_F1* ./high8
cp 10_H5* ./high8
cp 13_G2* ./high8
#cp 3_B5* ./high5
cp 5_C4* ./high8
cp 8_C9* ./high8
cp 8_A7* ./high8
cp 9_A2* ./high8
 
mkdir all8
cp 10_F1* ./all8
cp 10_H5* ./all8
cp 13_G2* ./all8
#cp 3_B5* ./all8
cp 5_C4* ./all8
cp 8_C9* ./all8
cp 8_A7* ./all8
cp 9_A2* ./all8
cp 5_C10* ./all8
cp 5_C11* ./all8
cp 5_H3* ./all8
cp 5_D7* ./all8


bcftools isec $WORK/lugdunensis-output/bcfoutput/high8/*.gz -p $WORK/lugdunensis-output/high8 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all8/*.gz -p $WORK/lugdunensis-output/all8 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all8/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high8/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low8/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir high8
cd high8
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all8/0000.vcf > $WORK/lugdunensis-output/snpEff/high8/snpEff-Allhigh8-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high8/snpEff-gene/all-high8-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high8/snpEff-summary/all-high8-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high8/0000.vcf > $WORK/lugdunensis-output/snpEff/high8/snpEff-high8-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high8/snpEff-gene/high8-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high8/snpEff-summary/high8-0-summary.html;

######################################### low  ######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low4/0000.vcf > $WORK/lugdunensis-output/snpEff/low4/snpEff-high5-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low4/snpEff-gene/low4-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low4/snpEff-summary/low4-0-summary.html;
