#!/bin/sh
#SBATCH --time=15:00:00   # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192     # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=trimmomatic
#SBATCH --error=trimmomatic.%J.err
#SBATCH --output=trimmomatic.%J.out
cd $WORK/
mkdir ludunensis-output
cd ludunensis-output
mkdir trimmomatic
cd trimmomatic
mkdir trimlog

module load trimmomatic/0.33
module load java/1.8

java -jar $TM_HOME/trimmomatic.jar PE -threads 4 -phred33 $HOME/ludunensis-data/3_B5/3_B5_S5_L001_R1_001.fastq.gz $HOME/ludunensis-data/3_B5/3_B5_S5_L001_R2_001.fastq.gz $WORK/ludunensis-output/trimmomatic/3_B5_S5_L001_R1_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L001_R1_001.unpaired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L001_R2_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L001_R2_001.unpaired.fq ILLUMINACLIP:TruSeq3-PE.fa:3:30:10 SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:100 > $WORK/ludunensis-output/trimmomatic/trimlog/3_B5_S5_L001.trimlog;
java -jar $TM_HOME/trimmomatic.jar PE -threads 4 -phred33 $HOME/ludunensis-data/3_B5/3_B5_S5_L002_R1_001.fastq.gz $HOME/ludunensis-data/3_B5/3_B5_S5_L002_R2_001.fastq.gz $WORK/ludunensis-output/trimmomatic/3_B5_S5_L002_R1_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L001_R1_002.unpaired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L002_R2_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L002_R2_001.unpaired.fq ILLUMINACLIP:TruSeq3-PE.fa:3:30:10 SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:100 > $WORK/ludunensis-output/trimmomatic/trimlog/3_B5_S5_L002.trimlog;
java -jar $TM_HOME/trimmomatic.jar PE -threads 4 -phred33 $HOME/ludunensis-data/3_B5/3_B5_S5_L003_R1_001.fastq.gz $HOME/ludunensis-data/3_B5/3_B5_S5_L003_R2_001.fastq.gz $WORK/ludunensis-output/trimmomatic/3_B5_S5_L003_R1_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L001_R1_003.unpaired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L003_R2_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L003_R2_001.unpaired.fq ILLUMINACLIP:TruSeq3-PE.fa:3:30:10 SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:100 > $WORK/ludunensis-output/trimmomatic/trimlog/3_B5_S5_L003.trimlog;
java -jar $TM_HOME/trimmomatic.jar PE -threads 4 -phred33 $HOME/ludunensis-data/3_B5/3_B5_S5_L004_R1_001.fastq.gz $HOME/ludunensis-data/3_B5/3_B5_S5_L004_R2_001.fastq.gz $WORK/ludunensis-output/trimmomatic/3_B5_S5_L004_R1_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L001_R1_004.unpaired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L004_R2_001.paired.fq $WORK/ludunensis-output/trimmomatic/3_B5_S5_L004_R2_001.unpaired.fq ILLUMINACLIP:TruSeq3-PE.fa:3:30:10 SLIDINGWINDOW:4:15 MAXINFO:50:0.5 LEADING:3 TRAILING:3 MINLEN:100 > $WORK/ludunensis-output/trimmomatic/trimlog/3_B5_S5_L004.trimlog;
