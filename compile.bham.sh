set -e
set -x

module purge
module load bluebear
#module load Autoconf/2.69-foss-2016.10
module load Autotools/20150215-foss-2016.10

./autogen.sh
./configure --with-slurm
make dist
rpmbuild -ta singularity-*.tar.gz

