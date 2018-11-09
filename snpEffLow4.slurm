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

mkdir LOW4
cp 5_C10* ./LOW4
cp 5_C11* ./LOW4
cp 5_H3* ./LOW4
#cp 5_D7* ./LOW4
 
mkdir ALL4
cp 10_F1* ./ALL4
cp 10_H5* ./ALL4
cp 13_G2* ./ALL4
cp 3_B5* ./ALL4
cp 5_C4* ./ALL4
cp 8_C9* ./ALL4
cp 8_A7* ./ALL4
cp 9_A2* ./ALL4
cp 5_C11* ./ALL4
cp 5_C10* ./ALL4
cp 5_H3* ./ALL4
#cp 5_D7* ./ALL4


bcftools isec $WORK/lugdunensis-output/bcfoutput/LOW4/*.gz -p $WORK/lugdunensis-output/LOW4 -n=12;

bcftools isec $WORK/lugdunensis-output/bcfoutput/ALL4/*.gz -p $WORK/lugdunensis-output/ALL4 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/ALL4/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/LOW4/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir LOW4
cd LOW4
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/ALL4/0000.vcf > $WORK/lugdunensis-output/snpEff/LOW4/snpEff-AllLOW4-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/LOW4/snpEff-gene/all-LOW4-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/LOW4/snpEff-summary/all-LOW4-0-summary.html;

######################################### highs######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/snpEff-gene/high-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/LOW4/0000.vcf > $WORK/lugdunensis-output/snpEff/LOW4/snpEff-LOW4-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/LOW4/snpEff-gene/LOW4-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/LOW4/snpEff-summary/LOW4-0-summary.html;

