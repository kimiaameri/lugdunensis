#!/bin/sh
##SBATCH --time=30:00:00          # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=16384       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=picards
#SBATCH --error=picards.%J.err
#SBATCH --output=picards.%J.out

module load picard/2.9

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L001.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L002.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L003.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L004.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L001.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L002.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L003.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L004.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L001.sorted.bam O=$WORK/lugdunensis-output/picard/5_C10_S1_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C10_S1_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L002.sorted.bam O=$WORK/lugdunensis-output/picard/5_C10_S1_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C10_S1_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L003.sorted.bam O=$WORK/lugdunensis-output/picard/5_C10_S1_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C10_S1_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C10_S1_L004.sorted.bam O=$WORK/lugdunensis-output/picard/5_C10_S1_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C10_S1_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L001.sorted.bam O=$WORK/lugdunensis-output/picard/5_C11_S2_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C11_S2_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L002.sorted.bam O=$WORK/lugdunensis-output/picard/5_C11_S2_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C11_S2_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L003.sorted.bam O=$WORK/lugdunensis-output/picard/5_C11_S2_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C11_S2_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C11_S2_L004.sorted.bam O=$WORK/lugdunensis-output/picard/5_C11_S2_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C11_S2_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L001.sorted.bam O=$WORK/lugdunensis-output/picard/5_H3_S4_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_H3_S4_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L002.sorted.bam O=$WORK/lugdunensis-output/picard/5_H3_S4_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_H3_S4_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L003.sorted.bam O=$WORK/lugdunensis-output/picard/5_H3_S4_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_H3_S4_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_H3_S4_L004.sorted.bam O=$WORK/lugdunensis-output/picard/5_H3_S4_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_H3_S4_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L001.sorted.bam O=$WORK/lugdunensis-output/picard/8_A7_S7_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/8_A7_S7_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L002.sorted.bam O=$WORK/lugdunensis-output/picard/8_A7_S7_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/8_A7_S7_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L003.sorted.bam O=$WORK/lugdunensis-output/picard/8_A7_S7_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/8_A7_S7_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_8_A7_S7_L004.sorted.bam O=$WORK/lugdunensis-output/picard/8_A7_S7_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/8_A7_S7_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L001.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L002.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L003.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L004.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L001.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L002.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L003.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L004.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L001.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L002.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L003.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L004.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L004.picard.log;

picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L001.sorted.bam O=$WORK/lugdunensis-output/picard/13_G2_S12_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/13_G2_S12_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L002.sorted.bam O=$WORK/lugdunensis-output/picard/13_G2_S12_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/13_G2_S12_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L003.sorted.bam O=$WORK/lugdunensis-output/picard/13_G2_S12_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/13_G2_S12_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_13_G2_S12_L004.sorted.bam O=$WORK/lugdunensis-output/picard/13_G2_S12_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/13_G2_S12_L004.picard.log;
