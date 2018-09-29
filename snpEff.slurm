#!/bin/sh
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=update-snpEFF
#SBATCH --error=snpEFF.%J.err
#SBATCH --output=snpEFF.%J.out
module load java/1.8


java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_N920143 $WORK/lugdunensis-output/all/0000.vcf > $WORK/lugdunensis-output/snpEff/snpEff_All0.ann.vcf
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/snpEff/snpEff-gene/all0_genes.txt
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/snpEff/snpEff-summary/all0_summary.html
