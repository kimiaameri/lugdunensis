#!/bin/sh
#SBATCH --time=10:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpEff1
#SBATCH --error=snpEff1.%J.err
#SBATCH --output=snpEff1.%J.out

module load bcftools/1.8
cd $WORK/lugdunensis-output/bcfoutput3/
mkdir low1
#cp 5_C10* ./lowall1
cp 5_C11* ./low1
cp 5_H3* ./low1
cp 5_D7* ./low1
cp 10_F1* ./low1
cp 10_H5* ./low1
cp 13_G2* ./low1
cp 3_B5* ./low1
cp 5_C4* ./low1
cp 8_C9* ./low1
cp 8_A7* ./low1
cp 9_A2* ./low1

mkdir low1
cp 5_C11* ./low1
cp 5_H3* ./low1
cp 5_D7* ./low1
mkdir high1
cp 10_F1* ./high1
cp 10_H5* ./high1
cp 13_G2* ./high1
cp 3_B5* ./high1
cp 5_C4* ./high1
cp 8_C9* ./high1
cp 8_A7* ./high1
cp 9_A2* ./high1

cd $WORK/lugdunensis-output/
cd low/
rm *
cd ../high/
rm *
cd ../all/
rm *

bcftools isec $WORK/lugdunensis-output/bcfoutput3/low1/low1/*.gz -p $WORK/lugdunensis-output/low -n=12;

bcftools isec $WORK/lugdunensis-output/bcfoutput3/low1/high1/*.gz -p $WORK/lugdunensis-output/high -n=32 ;

bcftools isec $WORK/lugdunensis-output/bcfoutput3/low1/*.gz -p $WORK/lugdunensis-output/all -n=44;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/all/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/low/*.vcf; 
#############################################################
cd $WORK/lugdunensis-output/
mkdir permutations
cd $WORK/lugdunensis-output/permutations/
mkdir snpEfflow1
cd snpEfflow1
mkdir snpEff-summary
mkdir snpEff-gene
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/all/0000.vcf > $WORK/lugdunensis-output/permutations/snpEfflow1/snpEff-All-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/permutations/snpEfflow1/snpEff-gene/all-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/permutations/snpEfflow1/snpEff-summary/all-0-summary.html;

######################################### highs######################

#java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/high/0000.vcf > $WORK/lugdunensis-output/permutations/snpEffall/snpEff-high-0.ann.vcf;
#mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/permutations/snpEffall/snpEff-gene/high-0-genes.txt;
#mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/permutations/snpEffall/snpEff-summary/high-0-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/low/0000.vcf > $WORK/lugdunensis-output/permutations/snpEfflow1/snpEff-low-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/permutations/snpEfflow1/snpEff-gene/low-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/permutations/snpEfflow1/snpEff-summary/low-0-summary.html;
