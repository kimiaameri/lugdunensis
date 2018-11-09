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

mkdir HIGH9
cp 10_F1* ./HIGH9
cp 10_H5* ./HIGH9
cp 13_G2* ./HIGH9
cp 3_B5* ./HIGH9
#cp 5_C4* ./HIGH9
cp 8_C9* ./HIGH9
cp 8_A7* ./HIGH9
cp 9_A2* ./HIGH9 
mkdir ALL9
cp 10_F1* ./ALL9
cp 10_H5* ./ALL9
cp 13_G2* ./ALL9
cp 3_B5* ./ALL9
#cp 5_C4* ./ALL9
cp 8_C9* ./ALL9
cp 8_A7* ./ALL9
cp 9_A2* ./ALL9
cp 5_C11* ./ALL9
cp 5_C10* ./ALL9
cp 5_H3* ./ALL9
cp 5_D7* ./ALL9

bcftools isec $WORK/lugdunensis-output/bcfoutput/HIGH9/*.gz -p $WORK/lugdunensis-output/HIGH9 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/ALL9/*.gz -p $WORK/lugdunensis-output/ALL9 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/ALL9/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/HIGH9/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir HIGH9
cd HIGH9
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/ALL9/0000.vcf > $WORK/lugdunensis-output/snpEff/HIGH9/snpEff-AllHIGH9-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/HIGH9/snpEff-gene/all-HIGH9-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/HIGH9/snpEff-summary/all-HIGH9-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff-high-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/HIGH9/snpEff-gene/HIGH9-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/HIGH9/snpEff-summary/HIGH9-0-summary.html;


