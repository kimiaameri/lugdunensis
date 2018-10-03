#!/bin/sh
##SBATCH --time=40:00:00   # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=snpeff-nofilter
#SBATCH --error=snpeff-nofilter.%J.err
#SBATCH --output=snpeff-nofilter.%J.out

module load bcftools/1.8
module load java/1.8
cd $WORK/lugdunensis-output/
mkdir nofilter
cp $WORK/lugdunensis-output/freebayes/*.vcf $WORK/lugdunensis-output/nofilter/


sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/nofilter/*.vcf;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/nofilter/10_F1_S10_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_F1_S10_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_F1_S10_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_F1_S10_L002.vcf > $WORK/lugdunensis-output/nofilter/10_F1_S10_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_F1_S10_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_F1_S10_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_F1_S10_L003.vcf > $WORK/lugdunensis-output/nofilter/10_F1_S10_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_F1_S10_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_F1_S10_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_F1_S10_L004.vcf > $WORK/lugdunensis-output/nofilter/10_F1_S10_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_F1_S10_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_F1_S10_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/nofilter/10_H5_S11_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_H5_S11_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_H5_S11_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_H5_S11_L002.vcf > $WORK/lugdunensis-output/nofilter/10_H5_S11_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_H5_S11_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_H5_S11_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_H5_S11_L003.vcf > $WORK/lugdunensis-output/nofilter/10_H5_S11_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_H5_S11_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_H5_S11_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/10_H5_S11_L004.vcf > $WORK/lugdunensis-output/nofilter/10_H5_S11_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/10_H5_S11_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/10_H5_S11_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/13_G2_S12_L001.vcf > $WORK/lugdunensis-output/nofilter/13_G2_S12_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/13_G2_S12_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/13_G2_S12_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/13_G2_S12_L002.vcf > $WORK/lugdunensis-output/nofilter/13_G2_S12_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/13_G2_S12_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/13_G2_S12_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/13_G2_S12_L003.vcf > $WORK/lugdunensis-output/nofilter/13_G2_S12_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/13_G2_S12_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/13_G2_S12_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/13_G2_S12_L004.vcf > $WORK/lugdunensis-output/nofilter/13_G2_S12_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/13_G2_S12_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/13_G2_S12_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/nofilter/3_B5_S5_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/3_B5_S5_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/3_B5_S5_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/3_B5_S5_L002.vcf > $WORK/lugdunensis-output/nofilter/3_B5_S5_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/3_B5_S5_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/3_B5_S5_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/3_B5_S5_L003.vcf > $WORK/lugdunensis-output/nofilter/3_B5_S5_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/3_B5_S5_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/3_B5_S5_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/3_B5_S5_L004.vcf > $WORK/lugdunensis-output/nofilter/3_B5_S5_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/3_B5_S5_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/3_B5_S5_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/nofilter/5_C10_S1_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C10_S1_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C10_S1_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C10_S1_L002.vcf > $WORK/lugdunensis-output/nofilter/5_C10_S1_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C10_S1_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C10_S1_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C10_S1_L003.vcf > $WORK/lugdunensis-output/nofilter/5_C10_S1_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C10_S1_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C10_S1_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C10_S1_L004.vcf > $WORK/lugdunensis-output/nofilter/5_C10_S1_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C10_S1_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C10_S1_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/nofilter/5_C11_S2_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C11_S2_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C11_S2_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C11_S2_L002.vcf > $WORK/lugdunensis-output/nofilter/5_C11_S2_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C11_S2_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C11_S2_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C11_S2_L003.vcf > $WORK/lugdunensis-output/nofilter/5_C11_S2_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C11_S2_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C11_S2_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C11_S2_L004.vcf > $WORK/lugdunensis-output/nofilter/5_C11_S2_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C11_S2_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C11_S2_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/nofilter/5_C4_S6_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C4_S6_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C4_S6_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C4_S6_L002.vcf > $WORK/lugdunensis-output/nofilter/5_C4_S6_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C4_S6_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C4_S6_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C4_S6_L003.vcf > $WORK/lugdunensis-output/nofilter/5_C4_S6_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C4_S6_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C4_S6_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_C4_S6_L004.vcf > $WORK/lugdunensis-output/nofilter/5_C4_S6_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_C4_S6_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_C4_S6_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_D7_S3_L001.vcf > $WORK/lugdunensis-output/nofilter/5_D7_S3_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_D7_S3_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_D7_S3_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_D7_S3_L002.vcf > $WORK/lugdunensis-output/nofilter/5_D7_S3_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_D7_S3_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_D7_S3_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_D7_S3_L003.vcf > $WORK/lugdunensis-output/nofilter/5_D7_S3_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_D7_S3_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_D7_S3_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_D7_S3_L004.vcf > $WORK/lugdunensis-output/nofilter/5_D7_S3_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_D7_S3_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_D7_S3_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/nofilter/5_H3_S4_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_H3_S4_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_H3_S4_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_H3_S4_L002.vcf > $WORK/lugdunensis-output/nofilter/5_H3_S4_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_H3_S4_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_H3_S4_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_H3_S4_L003.vcf > $WORK/lugdunensis-output/nofilter/5_H3_S4_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_H3_S4_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_H3_S4_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/5_H3_S4_L004.vcf > $WORK/lugdunensis-output/nofilter/5_H3_S4_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/5_H3_S4_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/5_H3_S4_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/nofilter/8_A7_S7_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_A7_S7_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_A7_S7_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_A7_S7_L002.vcf > $WORK/lugdunensis-output/nofilter/8_A7_S7_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_A7_S7_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_A7_S7_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_A7_S7_L003.vcf > $WORK/lugdunensis-output/nofilter/8_A7_S7_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_A7_S7_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_A7_S7_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_A7_S7_L004.vcf > $WORK/lugdunensis-output/nofilter/8_A7_S7_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_A7_S7_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_A7_S7_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_C9_S8_L001.vcf > $WORK/lugdunensis-output/nofilter/8_C9_S8_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_C9_S8_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_C9_S8_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_C9_S8_L002.vcf > $WORK/lugdunensis-output/nofilter/8_C9_S8_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_C9_S8_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_C9_S8_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_C9_S8_L003.vcf > $WORK/lugdunensis-output/nofilter/8_C9_S8_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_C9_S8_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_C9_S8_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/8_C9_S8_L004.vcf > $WORK/lugdunensis-output/nofilter/8_C9_S8_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/8_C9_S8_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/8_C9_S8_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/nofilter/9_A2_S9_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/9_A2_S9_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/9_A2_S9_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/9_A2_S9_L002.vcf > $WORK/lugdunensis-output/nofilter/9_A2_S9_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/9_A2_S9_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/9_A2_S9_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/9_A2_S9_L003.vcf > $WORK/lugdunensis-output/nofilter/9_A2_S9_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/9_A2_S9_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/9_A2_S9_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/9_A2_S9_L004.vcf > $WORK/lugdunensis-output/nofilter/9_A2_S9_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/nofilter/9_A2_S9_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/nofilter/9_A2_S9_L004-summary.html;


###  5_C10, 5_C11, 5_D7, 5_H3 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/nofilter
module load bcftools/1.8

mkdir low-f
cp 5_C10* ./low-f
cp 5_C11* ./low-f
cp 5_H3* ./low-f
cp 5_D7* ./low-f
 
mkdir high-f
cp 10_F1* ./high-f
cp 10_H5* ./high-f
cp 13_G2* ./high-f
cp 3_B5* ./high-f
cp 5_C4* ./high-f
cp 8_C9* ./high-f
cp 8_A7* ./high-f
cp 9_A2* ./high-f


bcftools isec $WORK/lugdunensis-output/nofilter/low-f/*.gz -p $WORK/lugdunensis-output/nofilter/low -n=16;

bcftools isec $WORK/lugdunensis-output/nofilter/high-f/*.gz -p $WORK/lugdunensis-output/nofilter/high -n=32 ;

bcftools isec $WORK/lugdunensis-output/nofilter/*.gz -p $WORK/lugdunensis-output/nofilter/all -n=48;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/nofilter/low/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/nofilter/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/nofilter/all/*.vcf;

############################
cd $WORK/lugdunensis-output/
mkdir snpEff-nofilter
cd snpEff-nofilter
mkdir snpEff-summary
mkdir snpEff-gene
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0000.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-0-summary.html;


java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0001.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-1.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-1-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-1-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0002.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-2.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-2-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0003.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-3.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-3-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0004.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-4.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-4-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-4-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0005.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-5.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-5-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-5-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0006.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-6.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-6-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-6-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0007.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-7.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-7-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-7-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0008.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-8.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-8-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-8-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0009.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-9.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-9-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-9-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0010.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-10.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-10-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-10-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0011.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-11.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-11-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-11-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0012.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-12.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-12-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-12-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0013.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-13.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-13-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-13-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0014.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-14.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-14-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-14-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0015.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-15.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-15-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0016.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-16.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-16-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-16-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0017.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-17.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-17-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-17-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0018.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-18.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-18-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-18-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0019.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-19.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-19-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-19-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0020.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-20.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-20-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-20-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0021.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-21.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-21-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-21-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0022.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-22.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-22-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-22-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0023.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-23.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-23-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-23-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0024.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-24.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-24-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-24-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0025.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-25.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-25-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-25-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0026.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-26.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-26-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-26-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0027.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-27.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-27-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-27-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0028.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-28.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-28-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-28-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0029.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-29.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-29-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-29-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0030.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-30.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-30-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-30-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0031.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-31.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-31-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-31-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0032.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-32.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-32-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-32-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0033.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-33.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-33-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-33-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0034.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-34.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-34-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-34-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0035.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-35.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-35-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-35-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0036.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-36.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-36-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-36-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0037.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-37.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-37-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-37-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0038.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-38.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-38-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-38-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0039.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-39.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-39-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-39-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0040.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-40.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-40-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-40-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0041.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-41.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-41-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-41-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0042.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-42.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-42-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-42-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0043.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-43.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-43-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-43-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0044.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-44.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-44-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0045.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-45.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-45-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-45-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0046.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-46.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-46-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-46-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/all/0047.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-All-47.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/all-47-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/all-47-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0000.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-0-summary.html;


java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0001.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-1.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-1-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-1-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0002.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-2.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-2-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0003.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-3.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-3-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0004.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-4.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-4-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-4-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0005.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-5.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-5-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-5-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0006.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-6.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-6-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-6-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0007.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-7.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-7-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-7-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0008.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-8.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-8-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-8-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0009.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-9.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-9-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-9-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0010.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-10.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-10-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-10-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0011.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-11.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-11-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-11-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0012.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-12.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-12-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-12-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0013.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-13.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-13-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-13-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0014.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-14.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-14-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-14-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0015.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-15.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-15-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0016.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-16.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-16-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-16-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0017.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-17.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-17-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-17-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0018.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-18.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-18-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-18-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0019.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-19.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-19-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-19-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0020.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-20.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-20-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-20-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0021.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-21.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-21-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-21-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0022.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-22.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-22-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-22-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0023.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-23.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-23-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-23-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0024.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-24.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-24-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-24-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0025.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-25.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-25-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-25-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0026.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-26.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-26-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-26-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0027.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-27.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-27-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-27-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0028.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-28.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-28-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-28-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0029.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-29.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-29-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-29-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0030.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-30.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-30-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-30-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/high/0031.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-high-31.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/high-31-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/high-31-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0000.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-0-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0001.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-1.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-1-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-1-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0002.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-2.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-2-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0003.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-3.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-3-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0004.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-4.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-4-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-4-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0005.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-5.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-5-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-5-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0006.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-6.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-6-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-6-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0007.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-7.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-7-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-7-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0008.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-8.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-8-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-8-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0009.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-9.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-9-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-9-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0010.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-10.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-10-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-10-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0011.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-11.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-11-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-11-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0012.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-12.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-12-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-12-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0013.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-13.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-13-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-13-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0014.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-14.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-14-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-14-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/nofilter/low/0015.vcf > $WORK/lugdunensis-output/snpEff-nofilter/snpEff-low-15.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff-nofilter/snpEff-gene/low-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff-nofilter/snpEff-summary/low-15-summary.html;
