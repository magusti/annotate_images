#!/bin/sh

# 
# Empaquete les diferentes versions per que les proben els colegues de VxC
#

echo "Está en buid/Polen/ l'última versió dels executables?. Confirma-ho (Control+C si no ho tens clar)!"
read resposta

#cd /home/magusti/investigacio/projectes/polen/build/
pwd
mkdir build/estable
cp -rp imatges/ build/estable/
cp -rp docs/ build/estable/
cp -rp manualUsuari.pdf build/estable/docs/ 

cp -rp  build/Polen/Linux\ x64/        build/estable/Polen_linux_x64
cp -rp  build/Polen/Linux/             build/estable/Polen_linux__x32
cp -rp  build/Polen/Windows/           build/estable/Polen_windows
cp -rp  build/Polen/MacOSX/Polen.app   build/estable/Polen_macOSX

cd build
tar czvf anotarPolen__v1_0.tgz estable/
cd ..