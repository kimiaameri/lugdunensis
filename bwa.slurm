#!/bin/sh
#SBATCH --time=20:00:00          # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=bwa
#SBATCH --error=bwa.%J.err
#SBATCH --output=bwa.%J.out
####### 3_B5
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L004.sam;

########################
####### 5_C4
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C4_S6_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C4_S6_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C4_S6_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C4_S6_L004.sam;

########################
####### 5_C10
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C10_S1_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C10_S1_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C10_S1_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C10/5_C10_S1_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C10_S1_L004.sam;

########################
####### 5_C11
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C11_S2_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C11_S2_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C11_S2_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_C11/5_C11_S2_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_C11_S2_L004.sam;

########################
####### 5_H3
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_H3_S4_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_H3_S4_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_H3_S4_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_H3/5_H3_S4_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_H3_S4_L004.sam;

########################
####### 8_A7
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_A7_S7_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_A7_S7_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_A7_S7_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_A7/8_A7_S7_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_A7_S7_L004.sam;

########################
####### 9_A2
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/9_A2_S9_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/9_A2_S9_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/9_A2_S9_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/9_A2_S9_L004.sam;

########################
####### 10_F1
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_F1_S10_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_F1_S10_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_F1_S10_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_F1/10_F1_S10_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_F1_S10_L004.sam;

########################
####### 10_H5
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_H5_S11_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_H5_S11_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_H5_S11_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-10_H5/10_H5_S11_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/10_H5_S11_L004.sam;

########################
####### 13_G2
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/13_G2_S12_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/13_G2_S12_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/13_G2_S12_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-13_G2/13_G2_S12_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/13_G2_S12_L004.sam;

########################
####### 8_C9
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_C9_S8_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_C9_S8_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_C9_S8_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-8_C9/8_C9_S8_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/8_C9_S8_L004.sam;

########################
####### 5_D7
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L001_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_D7_S3_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L002_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_D7_S3_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L003_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_D7_S3_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem -t 4 $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-5_D7/5_D7_S3_L004_R2_001.paired.fq >$WORK/lugdunensis-output/samfiles/5_D7_S3_L004.sam;
