# !/bin/sh
if [ "x$1" = "x" ]
then
    echo "Please pass the version information"
    echo "usage) ./test_build.sh 1.11.0-alpha1"
    exit
fi

if [ "x$2" != "x" ]
then
    installPrefix="-DCMAKE_INSTALL_PREFIX=$2"
fi

mkdir -p build
rm -rf build/ewebkit

tar xvzf ewebkit-$1.tar.gz -C build/
mkdir -p build/ewebkit/build
cd build/ewebkit/build

cmake .. $installPrefix

make -j8

cd -
