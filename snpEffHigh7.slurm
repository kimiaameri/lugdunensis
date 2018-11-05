#!/bin/sh
#SBATCH --time=20:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff
#SBATCH --error=snpeff.%J.err
#SBATCH --output=snpeff.%J.out
################################################################
###  5_C10, 5_H3, 5_C11 , 5_D7 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 !8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput
module load bcftools/1.8

mkdir high11
cp 10_F1* ./high11
cp 10_H5* ./high11
cp 13_G2* ./high11
cp 3_B5* ./high11
cp 5_C4* ./high11
cp 8_C9* ./high11
#cp 8_A7* ./high9
cp 9_A2* ./high11
 
mkdir all11
cp 10_F1* ./all11
cp 10_H5* ./all11
cp 13_G2* ./all11
cp 3_B5* ./all11
cp 5_C4* ./all11
cp 8_C9* ./all11
#cp 8_A7* ./all9
cp 9_A2* ./all11
cp 5_C10* ./all11
cp 5_C11* ./all11
cp 5_H3* ./all11
cp 5_D7* ./all11


bcftools isec $WORK/lugdunensis-output/bcfoutput/high11/*.gz -p $WORK/lugdunensis-output/high11 -n=28;

bcftools isec $WORK/lugdunensis-output/bcfoutput/all11/*.gz -p $WORK/lugdunensis-output/all11 -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all11/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high11/*.vcf; 
#sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low7/*.vcf; 
#############################################################
module load java/1.8
cd $WORK/lugdunensis-output/snpEff/
mkdir high11
cd high11
mkdir snpEff-gene
mkdir snpEff-summary
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all11/0000.vcf > $WORK/lugdunensis-output/snpEff/high11/snpEff-Allhigh11-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high11/snpEff-gene/all-high11-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high11/snpEff-summary/all-high11-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high11/0000.vcf > $WORK/lugdunensis-output/snpEff/high11/snpEff-high11-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/high11/snpEff-gene/high11-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/high11/snpEff-summary/high11-0-summary.html;

######################################### low  ######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low4/0000.vcf > $WORK/lugdunensis-output/snpEff/low4/snpEff-high5-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/low4/snpEff-gene/low4-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff/low4/snpEff-summary/low4-0-summary.html;
