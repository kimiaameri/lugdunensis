#!/bin/sh
#SBATCH --time=40:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=BCFTools-2
#SBATCH --error=BCFTools-2.%J.err
#SBATCH --output=BCFTools-2.%J.out
cd $WORK/lugdunensis-output/
mkdir bcfoutput2
mkdir vcffilterq1000
mkdir vcffilterq1000-dp250
module load bcftools/1.8

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/3_B5_S5_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/3_B5_S5_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C4_S6_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C4_S6_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C10_S1_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C10_S1_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_C11_S2_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_C11_S2_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_H3_S4_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_H3_S4_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_A7_S7_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_A7_S7_L004_q1000_dp250.vcf.gz;

########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/9_A2_S9_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/9_A2_S9_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_F1_S10_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_F1_S10_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/10_H5_S11_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/10_H5_S11_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/13_G2_S12_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/13_G2_S12_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/8_C9_S8_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/8_C9_S8_L004_q1000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L001_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L001_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L001_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L001_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L002_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L002_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L002_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L002_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L003_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L003_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L003_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L003_q1000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L004_q1000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp250/5_D7_S3_L004_q1000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L004_q1000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput2/5_D7_S3_L004_q1000_dp250.vcf.gz;

