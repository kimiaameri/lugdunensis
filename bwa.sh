cd $WORK/lugdunensis-softwares
wget https://sourceforge.net/projects/bio-bwa/files/bwa-0.7.17.tar.bz2
tar -xvjf bwa-0.7.17.tar.bz2
rm bwa-0.7.17.tar.bz2
cd bwa-0.7.17
make
cd $HOME/lugdunensis_reference_genome/
$WORK/lugdunensis-softwares/bwa-0.7.17/bwa Staphylococcus_lugdunensis_N920143.fa

