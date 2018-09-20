cd $WORK/lugdunensis-softwares/
git clone --recursive git://github.com/ekg/freebayes.git
cd freebayes
make
cd $WORK/lugdunensis-softwares/freebayes/vcflib
make
cd $HOME/lugdunensis_reference_genome/

cd $WORK/lugdunensis
sbatch freebayes.slurm;
