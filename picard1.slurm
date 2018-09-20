#!/bin/sh
##SBATCH --time=01:00:00          # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=picard1
#SBATCH --error=picard1.%J.err
#SBATCH --output=picard1.%J.out

module load picard/2.9

picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L001.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L001.picard.log;
picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L002.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L002.picard.log;
picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L003.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L003.picard.log;
picard MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L004.sorted.bam O=$WORK/lugdunensis-output/picard/3_B5_S5_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/3_B5_S5_L004.picard.log;
