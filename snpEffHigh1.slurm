#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_H3, 5_C11 , 5_D7 are all low biofilm formers
### !10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir high5
#cp 10_F1* ./high5
cp 10_H5* ./high5
cp 13_G2* ./high5
cp 3_B5* ./high5
cp 5_C4* ./high5
cp 8_C9* ./high5
cp 8_A7* ./high5
cp 9_A2* ./high5
 
mkdir all5
#cp 10_F1* ./all4
cp 10_H5* ./all5
cp 13_G2* ./all5
cp 3_B5* ./all5
cp 5_C4* ./all5
cp 8_C9* ./all5
cp 8_A7* ./all5
cp 9_A2* ./all5
cp 5_C10* ./all5
cp 5_C11* ./all5
cp 5_H3* ./all5
cp 5_D7* ./all5


bcftools isec $WORK/lugdunensis-output/bcfoutput/high5/*.gz -p $WORK/lugdunensis-output/high5 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all5/*.gz -p $WORK/lugdunensis-output/all5 -n=44;

#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all5/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high5/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low5/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir high5
cd high5
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all5/0000.vcf > $WORK/lugdunensis-output/snpEff/high5/snpEff-Allhigh5-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high5/snpEff-gene/all-high5-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high5/snpEff-summary/all-high5-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high5/0000.vcf > $WORK/lugdunensis-output/snpEff/high5/snpEff-high5-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high5/snpEff-gene/high5-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high5/snpEff-summary/high5-0-summary.html;

######################################### low  ######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low4/0000.vcf > $WORK/lugdunensis-output/snpEff/low4/snpEff-high5-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low4/snpEff-gene/low4-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low4/snpEff-summary/low4-0-summary.html;
