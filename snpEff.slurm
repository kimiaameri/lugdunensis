#!/bin/sh
#SBATCH --time=10:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpEff
#SBATCH --error=snpEff.%J.err
#SBATCH --output=snpEff.%J.out

module load bcftools/1.8
cd $WORK/lugdunensis-output/bcfoutput3/
mkdir lowall
cp 5_C10* ./lowall
cp 5_C11* ./lowall
cp 5_H3* ./lowall
cp 5_D7* ./lowall
 
mkdir highall
cp 10_F1* ./highall
cp 10_H5* ./highall
cp 13_G2* ./highall
cp 3_B5* ./highall
cp 5_C4* ./highall
cp 8_C9* ./highall
cp 8_A7* ./highall
cp 9_A2* ./highall

cd $WORK/lugdunensis-output/

bcftools isec $WORK/lugdunensis-output/bcfoutput3/lowall/*.gz -p $WORK/lugdunensis-output/low -n=16;

bcftools isec $WORK/lugdunensis-output/bcfoutput3/highall/*.gz -p $WORK/lugdunensis-output/high -n=32 ;

bcftools isec $WORK/lugdunensis-output/bcfoutput3/*.gz -p $WORK/lugdunensis-output/all -n=48;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all /*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low/*.vcf; 
#############################################################
cd $WORK/lugdunensis-output/permutations/
mkdir snpEff
cd snpEff
mkdir snpEff-summary
mkdir snpEff-gene
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all/0000.vcf > $WORK/lugdunensis-output/permutations/snpEff/snpEff-All-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/permutations/snpEff/snpEff-gene/all-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/permutations/snpEff/snpEff-summary/all-0-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/permutations/snpEff/snpEff-high-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/permutations/snpEff/snpEff-gene/high-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/permutations/snpEff/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low/0000.vcf > $WORK/lugdunensis-output/permutations/snpEff/snpEff-low-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/permutations/snpEff/snpEff-gene/low-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/permutations/snpEff/snpEff-summary/low-0-summary.html;

