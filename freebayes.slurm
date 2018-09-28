#!/bin/sh
#SBATCH --time=30:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=freebayes
#SBATCH --error=freebayes.%J.err
#SBATCH --output=freebayes.%J.out
module load samtools/1.9
samtools faidx $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa -o $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa.fai

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/3_B5_S5_L001.picard.bam >$WORK/lugdunensis-output/freebayes/3_B5_S5_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/3_B5_S5_L002.picard.bam >$WORK/lugdunensis-output/freebayes/3_B5_S5_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/3_B5_S5_L003.picard.bam >$WORK/lugdunensis-output/freebayes/3_B5_S5_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/3_B5_S5_L004.picard.bam >$WORK/lugdunensis-output/freebayes/3_B5_S5_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C4_S6_L001.picard.bam >$WORK/lugdunensis-output/freebayes/5_C4_S6_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C4_S6_L002.picard.bam >$WORK/lugdunensis-output/freebayes/5_C4_S6_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C4_S6_L003.picard.bam >$WORK/lugdunensis-output/freebayes/5_C4_S6_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C4_S6_L004.picard.bam >$WORK/lugdunensis-output/freebayes/5_C4_S6_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C10_S1_L001.picard.bam >$WORK/lugdunensis-output/freebayes/5_C10_S1_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C10_S1_L002.picard.bam >$WORK/lugdunensis-output/freebayes/5_C10_S1_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C10_S1_L003.picard.bam >$WORK/lugdunensis-output/freebayes/5_C10_S1_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C10_S1_L004.picard.bam >$WORK/lugdunensis-output/freebayes/5_C10_S1_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C11_S2_L001.picard.bam >$WORK/lugdunensis-output/freebayes/5_C11_S2_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C11_S2_L002.picard.bam >$WORK/lugdunensis-output/freebayes/5_C11_S2_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C11_S2_L003.picard.bam >$WORK/lugdunensis-output/freebayes/5_C11_S2_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_C11_S2_L004.picard.bam >$WORK/lugdunensis-output/freebayes/5_C11_S2_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_H3_S4_L001.picard.bam >$WORK/lugdunensis-output/freebayes/5_H3_S4_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_H3_S4_L002.picard.bam >$WORK/lugdunensis-output/freebayes/5_H3_S4_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_H3_S4_L003.picard.bam >$WORK/lugdunensis-output/freebayes/5_H3_S4_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_H3_S4_L004.picard.bam >$WORK/lugdunensis-output/freebayes/5_H3_S4_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_A7_S7_L001.picard.bam >$WORK/lugdunensis-output/freebayes/8_A7_S7_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_A7_S7_L002.picard.bam >$WORK/lugdunensis-output/freebayes/8_A7_S7_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_A7_S7_L003.picard.bam >$WORK/lugdunensis-output/freebayes/8_A7_S7_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_A7_S7_L004.picard.bam >$WORK/lugdunensis-output/freebayes/8_A7_S7_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/9_A2_S9_L001.picard.bam >$WORK/lugdunensis-output/freebayes/9_A2_S9_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/9_A2_S9_L002.picard.bam >$WORK/lugdunensis-output/freebayes/9_A2_S9_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/9_A2_S9_L003.picard.bam >$WORK/lugdunensis-output/freebayes/9_A2_S9_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/9_A2_S9_L004.picard.bam >$WORK/lugdunensis-output/freebayes/9_A2_S9_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_F1_S10_L001.picard.bam >$WORK/lugdunensis-output/freebayes/10_F1_S10_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_F1_S10_L002.picard.bam >$WORK/lugdunensis-output/freebayes/10_F1_S10_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_F1_S10_L003.picard.bam >$WORK/lugdunensis-output/freebayes/10_F1_S10_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_F1_S10_L004.picard.bam >$WORK/lugdunensis-output/freebayes/10_F1_S10_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_H5_S11_L001.picard.bam >$WORK/lugdunensis-output/freebayes/10_H5_S11_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_H5_S11_L002.picard.bam >$WORK/lugdunensis-output/freebayes/10_H5_S11_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_H5_S11_L003.picard.bam >$WORK/lugdunensis-output/freebayes/10_H5_S11_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/10_H5_S11_L004.picard.bam >$WORK/lugdunensis-output/freebayes/10_H5_S11_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/13_G2_S12_L001.picard.bam >$WORK/lugdunensis-output/freebayes/13_G2_S12_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/13_G2_S12_L002.picard.bam >$WORK/lugdunensis-output/freebayes/13_G2_S12_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/13_G2_S12_L003.picard.bam >$WORK/lugdunensis-output/freebayes/13_G2_S12_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/13_G2_S12_L004.picard.bam >$WORK/lugdunensis-output/freebayes/13_G2_S12_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_C9_S8_L001.picard.bam >$WORK/lugdunensis-output/freebayes/8_C9_S8_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_C9_S8_L002.picard.bam >$WORK/lugdunensis-output/freebayes/8_C9_S8_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_C9_S8_L003.picard.bam >$WORK/lugdunensis-output/freebayes/8_C9_S8_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/8_C9_S8_L004.picard.bam >$WORK/lugdunensis-output/freebayes/8_C9_S8_L004.vcf;

$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_D7_S3_L001.picard.bam >$WORK/lugdunensis-output/freebayes/5_D7_S3_L001.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_D7_S3_L002.picard.bam >$WORK/lugdunensis-output/freebayes/5_D7_S3_L002.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_D7_S3_L003.picard.bam >$WORK/lugdunensis-output/freebayes/5_D7_S3_L003.vcf;
$WORK/lugdunensis-softwares/freebayes/bin/freebayes -f $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/picard/5_D7_S3_L004.picard.bam >$WORK/lugdunensis-output/freebayes/5_D7_S3_L004.vcf;
