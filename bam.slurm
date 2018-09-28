#!/bin/sh
#SBATCH --time=30:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192     # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=samsortflag
#SBATCH --error=samsortflag.%J.err
#SBATCH --output=samsortflag.%J.out
module load samtools/1.9
####### 3_B5
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/3_B5_S5_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L001.bam >$WORK/lugdunensis-output/flagsam/aln_3_B5_S5_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/3_B5_S5_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L002.bam >$WORK/lugdunensis-output/flagsam/aln_3_B5_S5_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/3_B5_S5_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L003.bam >$WORK/lugdunensis-output/flagsam/aln_3_B5_S5_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/3_B5_S5_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L004.bam >$WORK/lugdunensis-output/flagsam/aln_3_B5_S5_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L004.bam;

########################
####### 5_C4
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C4_S6_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L001.bam >$WORK/lugdunensis-output/flagsam/aln_5_C4_S6_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C4_S6_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L002.bam >$WORK/lugdunensis-output/flagsam/aln_5_C4_S6_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C4_S6_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L003.bam >$WORK/lugdunensis-output/flagsam/aln_5_C4_S6_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C4_S6_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L004.bam >$WORK/lugdunensis-output/flagsam/aln_5_C4_S6_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C4_S6_L004.bam;

########################
####### 5_C10
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C10_S1_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L001.bam >$WORK/lugdunensis-output/flagsam/aln_5_C10_S1_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C10_S1_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L002.bam >$WORK/lugdunensis-output/flagsam/aln_5_C10_S1_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C10_S1_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L003.bam >$WORK/lugdunensis-output/flagsam/aln_5_C10_S1_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C10_S1_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L004.bam >$WORK/lugdunensis-output/flagsam/aln_5_C10_S1_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C10_S1_L004.bam;
 
########################
####### 5_C11
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C11_S2_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L001.bam >$WORK/lugdunensis-output/flagsam/aln_5_C11_S2_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C11_S2_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L002.bam >$WORK/lugdunensis-output/flagsam/aln_5_C11_S2_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C11_S2_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L003.bam >$WORK/lugdunensis-output/flagsam/aln_5_C11_S2_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C11_S2_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L004.bam >$WORK/lugdunensis-output/flagsam/aln_5_C11_S2_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_C11_S2_L004.bam;
########################
####### 5_H3
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_H3_S4_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L001.bam >$WORK/lugdunensis-output/flagsam/aln_5_H3_S4_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_H3_S4_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L002.bam >$WORK/lugdunensis-output/flagsam/aln_5_H3_S4_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_H3_S4_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L003.bam >$WORK/lugdunensis-output/flagsam/aln_5_H3_S4_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_H3_S4_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L004.bam >$WORK/lugdunensis-output/flagsam/aln_5_H3_S4_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_H3_S4_L004.bam;
########################
####### 8_A7
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_A7_S7_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L001.bam >$WORK/lugdunensis-output/flagsam/aln_8_A7_S7_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_A7_S7_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L002.bam >$WORK/lugdunensis-output/flagsam/aln_8_A7_S7_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_A7_S7_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L003.bam >$WORK/lugdunensis-output/flagsam/aln_8_A7_S7_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_A7_S7_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L004.bam >$WORK/lugdunensis-output/flagsam/aln_8_A7_S7_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_A7_S7_L004.bam;

########################
####### 9_A2

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/9_A2_S9_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L001.bam >$WORK/lugdunensis-output/flagsam/aln_9_A2_S9_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/9_A2_S9_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L002.bam >$WORK/lugdunensis-output/flagsam/aln_9_A2_S9_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/9_A2_S9_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L003.bam >$WORK/lugdunensis-output/flagsam/aln_9_A2_S9_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/9_A2_S9_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L004.bam >$WORK/lugdunensis-output/flagsam/aln_9_A2_S9_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_9_A2_S9_L004.bam;

########################
####### 10_F1
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/10_F1_S10_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L001.bam >$WORK/lugdunensis-output/flagsam/aln_10_F1_S10_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/10_F1_S10_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L002.bam >$WORK/lugdunensis-output/flagsam/aln_10_F1_S10_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/10_F1_S10_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L003.bam >$WORK/lugdunensis-output/flagsam/aln_10_F1_S10_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/10_F1_S10_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L004.bam >$WORK/lugdunensis-output/flagsam/aln_10_F1_S10_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_F1_S10_L004.bam;

########################
####### 10_H5
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/10_H5_S11_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L001.bam >$WORK/lugdunensis-output/flagsam/aln_10_H5_S11_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/10_H5_S11_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L002.bam >$WORK/lugdunensis-output/flagsam/aln_10_H5_S11_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/10_H5_S11_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L003.bam >$WORK/lugdunensis-output/flagsam/aln_10_H5_S11_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_C10_S1_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L004.bam >$WORK/lugdunensis-output/flagsam/aln_10_H5_S11_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_10_H5_S11_L004.bam;
########################
####### 13_G2
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/13_G2_S12_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L001.bam >$WORK/lugdunensis-output/flagsam/aln_13_G2_S12_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/13_G2_S12_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L002.bam >$WORK/lugdunensis-output/flagsam/aln_13_G2_S12_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/13_G2_S12_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L003.bam >$WORK/lugdunensis-output/flagsam/aln_13_G2_S12_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/13_G2_S12_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L004.bam >$WORK/lugdunensis-output/flagsam/aln_13_G2_S12_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_13_G2_S12_L004.bam;

########################
####### 8_C9
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_C9_S8_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L001.bam >$WORK/lugdunensis-output/flagsam/aln_8_C9_S8_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_C9_S8_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L002.bam >$WORK/lugdunensis-output/flagsam/aln_8_C9_S8_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_C9_S8_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L003.bam >$WORK/lugdunensis-output/flagsam/aln_8_C9_S8_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/8_C9_S8_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L004.bam >$WORK/lugdunensis-output/flagsam/aln_8_C9_S8_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_8_C9_S8_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_8_C9_S8_L004.bam;

########################
####### 5_D7
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_D7_S3_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L001.bam >$WORK/lugdunensis-output/flagsam/aln_5_D7_S3_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L001.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_D7_S3_L002.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L002.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L002.bam >$WORK/lugdunensis-output/flagsam/aln_5_D7_S3_L002.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L002.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L002.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_D7_S3_L003.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L003.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L003.bam >$WORK/lugdunensis-output/flagsam/aln_5_D7_S3_L003.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L003.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L003.bam;

samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/5_D7_S3_L004.sam -o $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L004.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L004.bam >$WORK/lugdunensis-output/flagsam/aln_5_D7_S3_L004.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_5_D7_S3_L004.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_5_D7_S3_L004.bam;
