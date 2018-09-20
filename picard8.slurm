#!/bin/sh
##SBATCH --time=30:00:00          # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=picard8
#SBATCH --error=picard8.%J.err
#SBATCH --output=picard8.%J.out

module load picard/2.9


picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L001.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L001.picard.log;
picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L002.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L002.picard.log;
picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L003.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L003.picard.log;
picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_F1_S10_L004.sorted.bam O=$WORK/lugdunensis-output/picard/10_F1_S10_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_F1_S10_L004.picard.log;
