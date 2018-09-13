#!/bin/sh
#SBATCH --time=10:00:00          # Run time in hh:mm:ss
#SBATCH --mem-per-cpu=8192       # Maximum memory required per CPU (in megabytes)
#SBATCH --job-name=bwa-3_B5
#SBATCH --error=bwa-3_B5.%J.err
#SBATCH --output=bwa-3_B5.%J.out

$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fasta $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L001_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L001_R1_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L001.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fasta $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L002_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L002_R1_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L002.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fasta $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L003_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L003_R1_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L003.sam;
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa mem $HOME/lugdunensis_reference_genome/Staphylococcus_lugdunensis_N920143.fasta $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L004_R1_001.paired.fq  $WORK/lugdunensis-output/trimmomatic/trim-3_B5/3_B5_S5_L004_R1_001.paired.fq >$WORK/lugdunensis-output/samfiles/3_B5_S5_L004.sam;
