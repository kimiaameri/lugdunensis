#!/bin/sh
#SBATCH --time=15:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192     # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=trimmomatic-8_A7
#SBATCH --error=trimmomatic-8_A7.%J.err
#SBATCH --output=trimmomatic-8_A7.%J.out
cd $WORK/lugdunensis-output/trimmomatic

mkdir trim-9_A2
cd trim-9_A2
mkdir trimlog

module load trimmomatic/0.36

trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-9_A2/trimlog/9_A2_S9_L001.trimlog $HOME/lugdunensis-data/9_A2/9_A2_S9_L001_R1_001.fastq.gz $HOME/lugdunensis-data/9_A2/9_A2_S9_L001_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R1_001.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-9_A2/trimlog/9_A2_S9_L002.trimlog $HOME/lugdunensis-data/9_A2/9_A2_S9_L002_R1_001.fastq.gz $HOME/lugdunensis-data/9_A2/9_A2_S9_L002_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L002_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R1_002.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L002_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L002_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-9_A2/trimlog/9_A2_S9_L003.trimlog $HOME/lugdunensis-data/9_A2/9_A2_S9_L003_R1_001.fastq.gz $HOME/lugdunensis-data/9_A2/9_A2_S9_L003_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L003_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R1_003.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L003_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L003_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
trimmomatic PE -threads 4 -phred33 -trimlog $WORK/lugdunensis-output/trimmomatic/trim-9_A2/trimlog/9_A2_S9_L004.trimlog $HOME/lugdunensis-data/9_A2/9_A2_S9_L004_R1_001.fastq.gz $HOME/lugdunensis-data/9_A2/9_A2_S9_L004_R2_001.fastq.gz $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L004_R1_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L001_R1_004.unpaired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L004_R2_001.paired.fq $WORK/lugdunensis-output/trimmomatic/trim-9_A2/9_A2_S9_L004_R2_001.unpaired.fq SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:36;
