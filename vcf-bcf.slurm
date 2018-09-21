#!/bin/sh
#SBATCH --time=40:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=BCFTools
#SBATCH --error=BCFTools.%J.err
#SBATCH --output=BCFTools.%J.out

module load bcftools/1.8

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_B5_S5_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_B5_S5_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_B5_S5_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_B5_S5_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_B5_S5_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_B5_S5_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_B5_S5_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_B5_S5_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_B5_S5_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_B5_S5_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C4_S6_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C4_S6_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C4_S6_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C4_S6_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C4_S6_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C4_S6_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C4_S6_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C4_S6_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C4_S6_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C4_S6_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C10_S1_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C10_S1_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C10_S1_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C10_S1_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C10_S1_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C10_S1_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C10_S1_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C10_S1_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C10_S1_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C10_S1_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C11_S2_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C11_S2_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C11_S2_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C11_S2_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C11_S2_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C11_S2_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_C11_S2_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_C11_S2_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_C11_S2_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_C11_S2_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_H3_S4_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_H3_S4_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_H3_S4_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_H3_S4_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_H3_S4_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_H3_S4_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/5_H3_S4_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/5_H3_S4_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/5_H3_S4_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/5_H3_S4_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/8_A7_S7_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/8_A7_S7_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/8_A7_S7_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/8_A7_S7_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/8_A7_S7_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/8_A7_S7_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/8_A7_S7_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/8_A7_S7_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/8_A7_S7_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/8_A7_S7_L004_q5000_dp250.vcf.gz;

########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/9_A2_S9_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/9_A2_S9_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/9_A2_S9_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/9_A2_S9_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/9_A2_S9_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/9_A2_S9_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/9_A2_S9_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/9_A2_S9_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/9_A2_S9_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/9_A2_S9_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_F1_S10_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_F1_S10_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_F1_S10_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_F1_S10_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_F1_S10_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_F1_S10_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_F1_S10_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_F1_S10_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_F1_S10_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_F1_S10_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_H5_S11_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_H5_S11_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_H5_S11_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_H5_S11_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_H5_S11_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_H5_S11_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/10_H5_S11_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/10_H5_S11_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/10_H5_S11_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/10_H5_S11_L004_q5000_dp250.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_G2_S12_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L001_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L001_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L001_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_G2_S12_L001_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_G2_S12_L001_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_G2_S12_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L002_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L002_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L002_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_G2_S12_L002_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_G2_S12_L002_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_G2_S12_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L003_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L003_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L003_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_G2_S12_L003_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_G2_S12_L003_q5000_dp250.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 5000" $WORK/lugdunensis-output/freebayes/3_G2_S12_L001.vcf > $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L001_q5000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 250" $WORK/lugdunensis-output/vcffilterq5000/3_G2_S12_L004_q5000.vcf > $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L004_q5000_dp250.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq5000-dp250/3_G2_S12_L004_q5000_dp250.vcf >$WORK/lugdunensis-output/bcfoutput/3_G2_S12_L004_q5000_dp250.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput/3_G2_S12_L004_q5000_dp250.vcf.gz;
########################################################################################


