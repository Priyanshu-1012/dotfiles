#/bin/sh

# Fail at the first command which fails the script
set -e

echo "information from https://verilator.org/guide/latest/install.html"
echo "installing verilator  "

# Prerequisites:
#sudo apt-get install git perl python3 make autoconf g++ flex bison ccache
#sudo apt-get install libgoogle-perftools-dev numactl perl-doc
#sudo apt-get install libfl2  # Ubuntu only (ignore if gives error)
#sudo apt-get install libfl-dev  # Ubuntu only (ignore if gives error)
#sudo apt-get install zlibc zlib1g zlib1g-dev  # Ubuntu only (ignore if gives error)

mkdir -p $HOME/tools/verilator.git/

if [ -d "$HOME/tools/verilator.git/verilator" ];then
  cd $HOME/tools/verilator.git/verilator
  git fetch --all --prune --tags
  git pull
 else
  echo "Directory verilator DOES NOT exists."
  cd $HOME/tools/verilator.git
  git clone https://github.com/verilator/verilator  
fi
  
cd $HOME/tools/verilator.git/verilator

sudo apt install autoconf flex bison help2man
autoconf

./configure --prefix=$HOME/tools/verilator

# Change here to enable more cores.
make -j4

# Test the build
# Probably need to enable gdb-auto-load-safe-path
make test

# Intall Verilator
make install

echo "Verilator installed in $HOME/tools/verilator/bin"
echo "Add this to your search path"

