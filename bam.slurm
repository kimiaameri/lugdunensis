#!/bin/sh
#SBATCH --time=15:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192     # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=samsortflag
#SBATCH --error=samsortflag.%J.err
#SBATCH --output=samsortflag.%J.out
module load samtools/1.9
samtools view -bt $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fa $WORK/lugdunensis-output/samfiles/3_B5_S5_L001.sam -o $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L001.bam;
samtools flagstat $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L001.bam >$WORK/lugdunensis-output/flagsam/aln_3_B5_S5_L001.flagstat.log;
samtools sort -o $WORK/lugdunensis-output/sortsam/aln_3_B5_S5_L001.sorted.bam -O bam $WORK/lugdunensis-output/bamfiles/aln_3_B5_S5_L001.bam;

 
