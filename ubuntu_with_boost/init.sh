
git config --global core.autocrlf input

# Boost for compilation
export BOOST_INC=/usr/include
export BOOST_LIB=/usr/lib/x86_64-linux-gnu

# environment variables for Python; see ORE user guide sec. 4.3
export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"
export LC_NUMERIC=C

# get ORE repo, including QuantLib
git clone --recursive https://github.com/OpenSourceRisk/Engine

# prepare ORE build
cd Engine
mkdir build
cd build
cmake \
 -DBOOST_ROOT=$BOOST_INC \
 -DBOOST_LIBRARYDIR=$BOOST_LIB \
 -DQL_ENABLE_SESSIONS=ON ..

# compile ORE
# make -j 4

# ctest -j 4