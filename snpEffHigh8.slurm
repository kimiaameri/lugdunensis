#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_H3, 5_C11 , 5_D7 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  !9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir high12
cp 10_F1* ./high12
cp 10_H5* ./high12
cp 13_G2* ./high12
cp 3_B5* ./high12
cp 5_C4* ./high12
cp 8_C9* ./high12
cp 8_A7* ./high12
#cp 9_A2* ./high11
 
mkdir all12
cp 10_F1* ./all12
cp 10_H5* ./all12
cp 13_G2* ./all12
cp 3_B5* ./all12
cp 5_C4* ./all12
cp 8_C9* ./all12
cp 8_A7* ./all12
#cp 9_A2* ./all11
cp 5_C10* ./all12
cp 5_C11* ./all12
cp 5_H3* ./all12
cp 5_D7* ./all12


bcftools isec $WORK/lugdunensis-output/bcfoutput/high12/*.gz -p $WORK/lugdunensis-output/high12 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all12/*.gz -p $WORK/lugdunensis-output/all12 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all12/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high12/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low7/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir high12
cd high12
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all12/0000.vcf > $WORK/lugdunensis-output/snpEff/high12/snpEff-Allhigh12-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high12/snpEff-gene/all-high12-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high12/snpEff-summary/all-high12-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high12/0000.vcf > $WORK/lugdunensis-output/snpEff/high12/snpEff-high12-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high12/snpEff-gene/high12-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high12/snpEff-summary/high12-0-summary.html;

######################################### low  ######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low4/0000.vcf > $WORK/lugdunensis-output/snpEff/low4/snpEff-high5-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low4/snpEff-gene/low4-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low4/snpEff-summary/low4-0-summary.html;
