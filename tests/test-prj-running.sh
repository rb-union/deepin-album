#!/bin/bash

cd ..
rm -rf ./build-ut
mkdir build-ut

cmake . -B build -D DOTEST=ON
cd build
make test -j8

cd ./../build-ut

cp -r ./../build/coverageResult/report/ ./
mv report html
cd html
mv index.html cov_deepin-album.html

cd ..
mkdir report
cd report
cp ./../../build/report/report_deepin-album.xml ./

exit 0
