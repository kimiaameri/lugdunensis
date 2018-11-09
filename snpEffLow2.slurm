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

mkdir LOW2
cp 5_C10* ./LOW2
#cp 5_C11* ./low1
cp 5_H3* ./LOW2
cp 5_D7* ./LOW2
 
mkdir ALL2
cp 10_F1* ./ALL2
cp 10_H5* ./ALL2
cp 13_G2* ./ALL2
cp 3_B5* ./ALL2
cp 5_C4* ./ALL2
cp 8_C9* ./ALL2
cp 8_A7* ./ALL2
cp 9_A2* ./ALL2
cp 5_C10* ./ALL2
cp 5_H3* ./ALL2
cp 5_D7* ./ALL2


bcftools isec $WORK/lugdunensis-output/bcfoutput/LOW2/*.gz -p $WORK/lugdunensis-output/LOW2 -n=12;

bcftools isec $WORK/lugdunensis-output/bcfoutput/ALL2/*.gz -p $WORK/lugdunensis-output/ALL2 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/ALL2/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/LOW2/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir LOW2
cd LOW2
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/ALL2/0000.vcf > $WORK/lugdunensis-output/snpEff/LOW2/snpEff-AllLOW2-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/LOW2/snpEff-gene/all-LOW2-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/LOW2/snpEff-summary/all-LOW2-0-summary.html;

######################################### highs######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/snpEff-gene/high-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/LOW2/0000.vcf > $WORK/lugdunensis-output/snpEff/LOW2/snpEff-LOW2-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/LOW2/snpEff-gene/LOW2-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/LOW2/snpEff-summary/LOW2-0-summary.html;
