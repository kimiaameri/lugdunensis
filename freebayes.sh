cd $WORK/lugdunensis-softwares/
git clone --recursive git://github.com/ekg/freebayes.git
cd freebayes
make
cd $WORK/lugdunensis
sbatch freebayes*.slurm
