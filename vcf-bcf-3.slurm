#!/bin/sh
#SBATCH --time=10:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=BCFTools-3
#SBATCH --error=BCFTools-3.%J.err
#SBATCH --output=BCFTools-3.%J.out
cd $WORK/lugdunensis-output/
mkdir bcfoutput3
mkdir vcffilterq1000
mkdir vcffilterq1000-dp100
module load bcftools/1.8
module load java/1.8
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/3_B5_S5_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/3_B5_S5_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C4_S6_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C4_S6_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C10_S1_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C10_S1_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_C11_S2_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_C11_S2_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_H3_S4_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_H3_S4_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_A7_S7_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_A7_S7_L004_q1000_dp100.vcf.gz;

########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/9_A2_S9_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/9_A2_S9_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_F1_S10_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_F1_S10_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/10_H5_S11_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/10_H5_S11_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/13_G2_S12_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/13_G2_S12_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/8_C9_S8_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L004_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/8_C9_S8_L004_q1000_dp100.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L001_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L001_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L001_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L002_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L002_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L002_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L003_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L003_q1000_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L003_q1000_dp100.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L004_q1000_dp100.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp100/5_D7_S3_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L004_q1000_dp100_dp100.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput3/5_D7_S3_L004_q1000_dp100.vcf.gz;
##
cd $WORK/lugdunensis-output/
mkdir temp5
cp $WORK/lugdunensis-output/vcffilterq1000-dp100/*.vcf $WORK/lugdunensis-output/temp5/


sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/temp5/*.vcf;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_F1_S10_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_F1_S10_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_F1_S10_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_F1_S10_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_F1_S10_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_F1_S10_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_F1_S10_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_F1_S10_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_F1_S10_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_F1_S10_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_F1_S10_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_F1_S10_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_F1_S10_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_F1_S10_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_F1_S10_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_F1_S10_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_H5_S11_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_H5_S11_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_H5_S11_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_H5_S11_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_H5_S11_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_H5_S11_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_H5_S11_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_H5_S11_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_H5_S11_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_H5_S11_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_H5_S11_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_H5_S11_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/10_H5_S11_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/10_H5_S11_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/10_H5_S11_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/10_H5_S11_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/13_G2_S12_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/13_G2_S12_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/13_G2_S12_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/13_G2_S12_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/13_G2_S12_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/13_G2_S12_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/13_G2_S12_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/13_G2_S12_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/13_G2_S12_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/13_G2_S12_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/13_G2_S12_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/13_G2_S12_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/13_G2_S12_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/13_G2_S12_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/13_G2_S12_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/13_G2_S12_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/3_B5_S5_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/3_B5_S5_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/3_B5_S5_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/3_B5_S5_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/3_B5_S5_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/3_B5_S5_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/3_B5_S5_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/3_B5_S5_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/3_B5_S5_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/3_B5_S5_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/3_B5_S5_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/3_B5_S5_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/3_B5_S5_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/3_B5_S5_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/3_B5_S5_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/3_B5_S5_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C10_S1_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C10_S1_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C10_S1_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C10_S1_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C10_S1_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C10_S1_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C10_S1_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C10_S1_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C10_S1_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C10_S1_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C10_S1_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C10_S1_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C10_S1_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C10_S1_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C10_S1_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C10_S1_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C11_S2_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C11_S2_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C11_S2_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C11_S2_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C11_S2_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C11_S2_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C11_S2_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C11_S2_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C11_S2_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C11_S2_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C11_S2_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C11_S2_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C11_S2_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C11_S2_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C11_S2_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C11_S2_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C4_S6_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C4_S6_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C4_S6_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C4_S6_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C4_S6_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C4_S6_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C4_S6_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C4_S6_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C4_S6_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C4_S6_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C4_S6_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C4_S6_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_C4_S6_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_C4_S6_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_C4_S6_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_C4_S6_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_D7_S3_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_D7_S3_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_D7_S3_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_D7_S3_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_D7_S3_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_D7_S3_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_D7_S3_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_D7_S3_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_D7_S3_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_D7_S3_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_D7_S3_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_D7_S3_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_D7_S3_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_D7_S3_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_D7_S3_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_D7_S3_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_H3_S4_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_H3_S4_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_H3_S4_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_H3_S4_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_H3_S4_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_H3_S4_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_H3_S4_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_H3_S4_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_H3_S4_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_H3_S4_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_H3_S4_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_H3_S4_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/5_H3_S4_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/5_H3_S4_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/5_H3_S4_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/5_H3_S4_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_A7_S7_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_A7_S7_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_A7_S7_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_A7_S7_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_A7_S7_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_A7_S7_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_A7_S7_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_A7_S7_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_A7_S7_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_A7_S7_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_A7_S7_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_A7_S7_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_A7_S7_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_A7_S7_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_A7_S7_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_A7_S7_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_C9_S8_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_C9_S8_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_C9_S8_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_C9_S8_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_C9_S8_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_C9_S8_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_C9_S8_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_C9_S8_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_C9_S8_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_C9_S8_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_C9_S8_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_C9_S8_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/8_C9_S8_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/8_C9_S8_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/8_C9_S8_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/8_C9_S8_L004-summary.html;
###

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/9_A2_S9_L001_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/9_A2_S9_L001.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/9_A2_S9_L001-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/9_A2_S9_L001-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/9_A2_S9_L002_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/9_A2_S9_L002.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/9_A2_S9_L002-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/9_A2_S9_L002-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/9_A2_S9_L003_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/9_A2_S9_L003.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/9_A2_S9_L003-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/9_A2_S9_L003-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/temp5/9_A2_S9_L004_q1000_dp100.vcf >$WORK/lugdunensis-output/temp5/9_A2_S9_L004.ann.vcf;
mv $WORK/lugdunensis-output/snpEff_genes.txt $WORK/lugdunensis-output/temp5/9_A2_S9_L004-genes.txt;
mv $WORK/lugdunensis-output/snpEff_summary.html $WORK/lugdunensis-output/temp5/9_A2_S9_L004-summary.html;


