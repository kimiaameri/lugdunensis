#!/bin/sh
##SBATCH --time=30:00:00          # Run time in hh:mm:ss
##SBATCH --mem-per-cpu=16384       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=picard9
#SBATCH --error=picard9.%J.err
#SBATCH --output=picard9.%J.out

module load picard/2.9


picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L001.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L001.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L001.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L002.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L002.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L002.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L003.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L003.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L003.picard.log;
picard -Xms512m -Xmx10g MarkDuplicates I=$WORK/lugdunensis-output/sortsam/aln_10_H5_S11_L004.sorted.bam O=$WORK/lugdunensis-output/picard/10_H5_S11_L004.picard.bam M=$WORK/lugdunensis-output/picard/picardlog/10_H5_S11_L004.picard.log;
