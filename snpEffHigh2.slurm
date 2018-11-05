#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_H3, 5_C11 , 5_D7 are all low biofilm formers
### 10_F1  !10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir high6
cp 10_F1* ./high6
#cp 10_H5* ./high5
cp 13_G2* ./high6
cp 3_B5* ./high6
cp 5_C4* ./high6
cp 8_C9* ./high6
cp 8_A7* ./high6
cp 9_A2* ./high6
 
mkdir all6
cp 10_F1* ./all6
#cp 10_H5* ./all5
cp 13_G2* ./all6
cp 3_B5* ./all6
cp 5_C4* ./all6
cp 8_C9* ./all6
cp 8_A7* ./all6
cp 9_A2* ./all6
cp 5_C10* ./all6
cp 5_C11* ./all6
cp 5_H3* ./all6
cp 5_D7* ./all6


bcftools isec $WORK/lugdunensis-output/bcfoutput/high6/*.gz -p $WORK/lugdunensis-output/high6 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all6/*.gz -p $WORK/lugdunensis-output/all6 -n=44;

#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all5/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high6/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low6/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir high6
cd high6
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all6/0000.vcf > $WORK/lugdunensis-output/snpEff/high6/snpEff-Allhigh6-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high6/snpEff-gene/all-high6-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high6/snpEff-summary/all-high6-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high6/0000.vcf > $WORK/lugdunensis-output/snpEff/high6/snpEff-high6-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high6/snpEff-gene/high6-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high6/snpEff-summary/high6-0-summary.html;

######################################### low  ######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low4/0000.vcf > $WORK/lugdunensis-output/snpEff/low4/snpEff-high5-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low4/snpEff-gene/low4-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low4/snpEff-summary/low4-0-summary.html;
