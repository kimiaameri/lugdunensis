#!/bin/sh
#SBATCH --time=15:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192     # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=trimmomatic
#SBATCH --error=trimmomatic.%J.err
#SBATCH --output=trimmomatic.%J.out
cd $WORK/
mkdir lugdunensis-output
cd lugdunensis-output
mkdir trimmomatic
cd trimmomatic
mkdir trim-5_C4
cd trim-5_C4
mkdir trimlog

module load trimmomatic/0.36
#module load java/1.8

trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-5_C4/trimlog/5_C4_S6_L001.trimlog $HOME/lugdunensis-data/5_C4/5_C4_S6_L001_R1_001.fastq.gz $HOME/lugdunensis-data/5_C4/5_C4_S6_L001_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R1_001.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-5_C4/trimlog/5_C4_S6_L002.trimlog $HOME/lugdunensis-data/5_C4/5_C4_S6_L002_R1_001.fastq.gz $HOME/lugdunensis-data/5_C4/5_C4_S6_L002_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L002_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R1_002.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L002_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L002_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-5_C4/trimlog/5_C4_S6_L003.trimlog $HOME/lugdunensis-data/5_C4/5_C4_S6_L003_R1_001.fastq.gz $HOME/lugdunensis-data/5_C4/5_C4_S6_L003_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L003_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R1_003.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L003_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L003_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-5_C4/trimlog/5_C4_S6_L004.trimlog $HOME/lugdunensis-data/5_C4/5_C4_S6_L004_R1_001.fastq.gz $HOME/lugdunensis-data/5_C4/5_C4_S6_L004_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L004_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L001_R1_004.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L004_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-5_C4/5_C4_S6_L004_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
