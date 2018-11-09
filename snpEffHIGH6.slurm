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

mkdir HIGH6
cp 10_F1* ./HIGH6
#cp 10_H5* ./HIGH6
cp 13_G2* ./HIGH6
cp 3_B5* ./HIGH6
cp 5_C4* ./HIGH6
cp 8_C9* ./HIGH6
cp 8_A7* ./HIGH6
cp 9_A2* ./HIGH6 
mkdir ALL6
cp 10_F1* ./ALL6
#cp 10_H5* ./ALL6
cp 13_G2* ./ALL6
cp 3_B5* ./ALL6
cp 5_C4* ./ALL6
cp 8_C9* ./ALL6
cp 8_A7* ./ALL6
cp 9_A2* ./ALL6
cp 5_C11* ./ALL6
cp 5_C10* ./ALL6
cp 5_H3* ./ALL6
cp 5_D7* ./ALL6

bcftools isec $WORK/lugdunensis-output/bcfoutput/HIGH6/*.gz -p $WORK/lugdunensis-output/HIGH6 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/ALL6/*.gz -p $WORK/lugdunensis-output/ALL6 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/ALL6/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/HIGH6/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir HIGH6
cd HIGH6
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/ALL6/0000.vcf > $WORK/lugdunensis-output/snpEff/HIGH6/snpEff-AllHIGH6-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/HIGH6/snpEff-gene/all-HIGH6-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/HIGH6/snpEff-summary/all-HIGH6-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/HIGH6/snpEff-gene/HIGH6-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/HIGH6/snpEff-summary/HIGH6-0-summary.html;

