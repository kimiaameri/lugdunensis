#!/bin/sh
#SBATCH --time=02:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192      # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=BCFTools-5
#SBATCH --error=BCFTools-5.%J.err
#SBATCH --output=BCFTools-5.%J.out
cd $WORK/lugdunensis-output/
mkdir bcfoutput5
mkdir vcffilterq1000
mkdir vcffilterq1000-dp150
module load bcftools/1.8
module load java/1.8
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/3_B5_S5_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/3_B5_S5_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/3_B5_S5_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/3_B5_S5_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C4_S6_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C4_S6_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C4_S6_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C4_S6_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C10_S1_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C10_S1_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C10_S1_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C10_S1_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_C11_S2_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_C11_S2_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_C11_S2_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_C11_S2_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_H3_S4_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_H3_S4_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_H3_S4_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_H3_S4_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_A7_S7_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_A7_S7_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_A7_S7_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_A7_S7_L004_q1000_dp150.vcf.gz;

########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/9_A2_S9_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/9_A2_S9_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/9_A2_S9_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/9_A2_S9_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_F1_S10_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_F1_S10_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_F1_S10_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_F1_S10_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/10_H5_S11_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/10_H5_S11_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/10_H5_S11_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/10_H5_S11_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/13_G2_S12_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/13_G2_S12_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/13_G2_S12_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/13_G2_S12_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/8_C9_S8_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/8_C9_S8_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/8_C9_S8_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/8_C9_S8_L004_q1000_dp150.vcf.gz;
########################################################################################

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L001.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L001_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L001_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L001_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L001_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L001_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L001_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L002.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L002_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L002_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L002_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L002_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L002_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L002_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L003.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L003_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L003_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L003_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L003_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L003_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L003_q1000_dp150.vcf.gz;

$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "QUAL > 1000" $WORK/lugdunensis-output/freebayes/5_D7_S3_L004.vcf > $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L004_q1000.vcf 
$WORK/lugdunensis-softwares/freebayes/vcflib/bin/vcffilter -f "DP > 100" $WORK/lugdunensis-output/vcffilterq1000/5_D7_S3_L004_q1000.vcf > $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L004_q1000_dp150.vcf;
bcftools view -Ob $WORK/lugdunensis-output/vcffilterq1000-dp150/5_D7_S3_L004_q1000_dp150.vcf >$WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L004_q1000_dp150.vcf.gz;
bcftools index $WORK/lugdunensis-output/bcfoutput5/5_D7_S3_L004_q1000_dp150.vcf.gz;
##



################################################################
###  5_C10, 5_C11, 5_D7, 5_H3 are all low biofilm formers
### 10_F1  10_H5  13_G2  3_B5  5_C4  8_C9 8_A7  9_A2 are all high biofilm formers
cd $WORK/lugdunensis-output/bcfoutput5
module load bcftools/1.8

mkdir low5
cp 5_C10* ./low5
cp 5_C11* ./low5
cp 5_H3* ./low5
cp 5_D7* ./low5
 
mkdir high5
cp 10_F1* ./high5
cp 10_H5* ./high5
cp 13_G2* ./high5
cp 3_B5* ./high5
cp 5_C4* ./high5
cp 8_C9* ./high5
cp 8_A7* ./high5
cp 9_A2* ./high5
cd $WORK/lugdunensis-output/
mkdir snpEff5
cd snpEff5

bcftools isec $WORK/lugdunensis-output/bcfoutput5/low5/*.gz -p $WORK/lugdunensis-output/snpEff5/low -n=16;

bcftools isec $WORK/lugdunensis-output/bcfoutput5/high5/*.gz -p $WORK/lugdunensis-output/snpEff5/high -n=32 ;

bcftools isec $WORK/lugdunensis-output/bcfoutput5/*.gz -p $WORK/lugdunensis-output/snpEff5/all -n=48;

sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/snpEff5/all/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/snpEff5/high/*.vcf; 
sed -i 's/^chr/Chromosome/' $WORK/lugdunensis-output/snpEff5/low/*.vcf; 
#############################################################

mkdir snpEff-summary5
mkdir snpEff-gene5
cd $WORK/lugdunensis
java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0000.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-0-summary.html;


java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0001.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-1.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-1-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-1-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0002.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-2.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-2-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0003.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-3.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-3-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0004.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-4.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-4-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-4-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0005.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-5.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-5-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-5-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0006.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-6.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-6-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-6-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0007.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-7.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-7-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-7-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0008.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-8.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-8-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-8-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0009.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-9.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-9-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-9-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0010.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-10.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-10-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-10-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0011.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-11.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-11-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-11-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0012.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-12.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-12-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-12-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0013.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-13.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-13-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-13-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0014.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-14.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-14-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-14-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0015.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-15.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-15-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0016.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-16.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-16-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-16-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0017.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-17.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-17-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-17-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0018.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-18.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-18-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-18-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0019.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-19.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-19-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-19-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0020.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-20.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-20-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-20-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0021.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-21.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-21-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-21-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0022.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-22.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-22-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-22-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0023.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-23.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-23-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-23-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0024.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-24.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-24-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-24-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0025.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-25.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-25-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-25-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0026.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-26.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-26-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-26-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0027.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-27.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-27-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-27-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0028.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-28.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-28-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-28-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0029.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-29.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-29-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-29-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0030.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-30.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-30-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-30-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0031.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-31.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-31-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-31-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0032.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-32.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-32-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-32-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0033.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-33.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-33-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-33-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0034.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-34.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-34-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-34-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0035.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-35.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-35-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-35-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0036.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-36.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-36-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-36-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0037.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-37.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-37-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-37-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0038.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-38.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-38-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-38-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0039.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-39.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-39-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-39-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0040.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-40.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-40-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-40-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0041.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-41.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-41-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-41-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0042.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-42.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-42-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-42-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0043.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-43.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-43-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-43-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0044.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-44.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-44-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0045.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-45.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-45-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-45-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0046.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-46.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-46-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-46-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/all/0047.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-All-47.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/all-47-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/all-47-summary.html;

######################################### highs######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0000.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-0-summary.html;


java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0001.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-1.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-1-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-1-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0002.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-2.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-2-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0003.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-3.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-3-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0004.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-4.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-4-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-4-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0005.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-5.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-5-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-5-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0006.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-6.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-6-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-6-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0007.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-7.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-7-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-7-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0008.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-8.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-8-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-8-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0009.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-9.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-9-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-9-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0010.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-10.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-10-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-10-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0011.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-11.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-11-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-11-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0012.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-12.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-12-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-12-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0013.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-13.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-13-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-13-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0014.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-14.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-14-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-14-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0015.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-15.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-15-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0016.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-16.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-16-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-16-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0017.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-17.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-17-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-17-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0018.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-18.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-18-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-18-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0019.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-19.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-19-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-19-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0020.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-20.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-20-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-20-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0021.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-21.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-21-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-21-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0022.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-22.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-22-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-22-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0023.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-23.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-23-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-23-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0024.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-24.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-24-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-24-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0025.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-25.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-25-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-25-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0026.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-26.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-26-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-26-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0027.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-27.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-27-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-27-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0028.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-28.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-28-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-28-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0029.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-29.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-29-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-29-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0030.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-30.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-30-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-30-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/high/0031.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-high-31.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/high-31-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/high-31-summary.html;

######################################### low  ######################

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0000.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-0.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-0-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-0-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0001.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-1.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-1-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-1-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0002.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-2.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-2-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0003.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-3.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-3-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-3-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0004.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-4.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-4-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-4-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0005.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-5.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-5-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-5-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0006.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-6.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-6-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-6-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0007.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-7.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-7-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-7-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0008.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-8.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-8-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-8-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0009.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-9.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-9-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-9-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0010.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-10.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-10-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-10-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0011.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-11.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-11-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-11-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0012.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-12.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-12-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-12-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0013.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-13.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-13-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-13-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0014.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-14.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-14-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-14-summary.html;

java -Xmx4g -jar $WORK/lugdunensis-softwares/snpEff/snpEff.jar -v Staphylococcus_lugdunensis_n920143 $WORK/lugdunensis-output/snpEff5/low/0015.vcf > $WORK/lugdunensis-output/snpEff5/snpEff-low-15.ann.vcf;
mv $WORK/lugdunensis/snpEff_genes.txt $WORK/lugdunensis-output/snpEff5/snpEff-gene5/low-15-genes.txt;
mv $WORK/lugdunensis/snpEff_summary.html $WORK/lugdunensis-output/snpEff5/snpEff-summary5/low-15-summary.html;

