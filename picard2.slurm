#!/bin/sh
##SBATCH --time=30:00:00          # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=picard2
#SBATCH --error=picard2.%J.err
#SBATCH --output=picard2.%J.out

module load picard/2.9

picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L001.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L001.picard.log;
picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L002.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L002.picard.log;
picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L003.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L003.picard.log;
picard -Xms1024m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_5_C4_S6_L004.sorted.bam O=$WORK/lugdunensis-output/picard/5_C4_S6_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/5_C4_S6_L004.picard.log;

