#!/bin/sh
##SBATCH --time=01:00:00          # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=picard7
#SBATCH --error=picard7.%J.err
#SBATCH --output=picard7.%J.out

module load picard/2.9


picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L001.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L001.picard.log;
picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L002.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L002.picard.log;
picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L003.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L003.picard.log;
picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_9_A2_S9_L004.sorted.bam O=$WORK/lugdunensis-output/picard/9_A2_S9_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/9_A2_S9_L004.picard.log;
