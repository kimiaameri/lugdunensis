#!/bin/sh
#SBATCH --time=10:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192     # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=stats
#SBATCH --error=stats.%J.err
#SBATCH --output=stats.%J.out
cd $WORK/lugdunensis-output/
mkdir stats
module load samtools/1.9
####### 3_B5
samtools stats $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_3_B5_S5_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_3_B5_S5_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_3_B5_S5_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_3_B5_S5_L004.txt;

########################
####### 5_C4
samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C4_S6_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C4_S6_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C4_S6_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C4_S6_L004.txt;

########################
####### 5_C10
samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C10_S1_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C10_S1_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C10_S1_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C10_S1_L004.txt;
 
########################
####### 5_C11
samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C11_S2_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C11_S2_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C11_S2_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_C11_S2_L004.txt;
########################
####### 5_H3
samtools stats $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_H3_S4_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_H3_S4_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_H3_S4_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_H3_S4_L004.txt;
########################
####### 8_A7
samtools stats $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_A7_S7_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_A7_S7_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_A7_S7_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_A7_S7_L004.txt;

########################
####### 9_A2

samtools stats $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_9_A2_S9_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_9_A2_S9_L002.txt;
samtools stats $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_9_A2_S9_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_9_A2_S9_L004.txt;

########################
####### 10_F1
samtools stats $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_F1_S10_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_F1_S10_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_F1_S10_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_F1_S10_L004.txt;

########################
####### 10_H5
samtools stats $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_H5_S11_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_H5_S11_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_H5_S11_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_10_H5_S11_L004.txt;
########################
####### 13_G2
samtools stats $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_13_G2_S12_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_13_G2_S12_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_13_G2_S12_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_13_G2_S12_L004.txt;

########################
####### 8_C9
samtools stats $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_C9_S8_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_C9_S8_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_C9_S8_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_8_C9_S8_L004.txt;

########################
####### 5_D7
samtools stats $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L001.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_D7_S3_L001.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L002.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_D7_S3_L002.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L003.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_D7_S3_L003.txt;

samtools stats $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L004.sorted.bam >$WORK/lugdunensis-output/stats/aln_5_D7_S3_L004.txt;
