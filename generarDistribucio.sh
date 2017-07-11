#!/bin/sh

# 
# Empaquete les diferentes versions per que les proben els colegues de VxC
# Linux i386 i x_64, Mac_64 i Windows
#

echo "Está en buid/Polen/ l'última versió dels executables?. Confirma-ho (Control+C si no ho tens clar)!"
read resposta

#cd /home/magusti/investigacio/projectes/polen/build/
pwd
if ! [ -d build/estable ]; then mkdir -p build/estable/; fi

if ! [ -d build/estable/Polen__linux_x64 ]; then mkdir -p build/estable/Polen__linux_x64; fi
cp -rp  build/Polen/Linux\ x64/* 		build/estable/Polen__linux_x64
#cp -rp imatges/ build/estable/			build/estable/Polen__linux_x64
cp -rp docs/ 					build/estable/Polen__linux_x64
cp -rp manualUsuari.pdf 			build/estable/Polen__linux_x64/docs
cp -rp "Milflores - 3840 x 3072_disca_1.txt"	build/estable/Polen__linux_x64
cp -rp "Milflores - 3840 x 3072_disca_1.informe.csv"	build/estable/Polen__linux_x64
cp -rp etiquetes/listadoEtiquetas.txt		build/estable/Polen__linux_x64


if ! [ -d build/estable/Polen__linux_x32 ]; then mkdir -p build/estable/Polen__linux_x32; fi
cp -rp  build/Polen/Linux/*				build/estable/Polen__linux_x32
#cp -rp imatges/ build/estable/				build/estable/Polen__linux_x32
cp -rp docs/ 						build/estable/Polen__linux_x32
cp -rp manualUsuari.pdf 				build/estable/Polen__linux_x32/docs
cp -rp "Milflores - 3840 x 3072_disca_1.txt"		build/estable/Polen__linux_x32
cp -rp "Milflores - 3840 x 3072_disca_1.informe.csv"	build/estable/Polen__linux_x32
cp -rp etiquetes/listadoEtiquetas.txt			build/estable/Polen__linux_x32

if ! [ -d build/estable/Polen__windows ]; then mkdir -p build/estable/Polen__windows; fi
cp -rp  build/Polen/Windows/*			build/estable/Polen__windows
#cp -rp imatges/ build/estable/			build/estable/Polen__windows
cp -rp docs/ 					build/estable/Polen__windows
cp -rp manualUsuari.pdf 			build/estable/Polen__windows/docs
cp -rp "Milflores - 3840 x 3072_disca_1.txt"	build/estable/Polen__windows
cp -rp "Milflores - 3840 x 3072_disca_1.informe.csv"	build/estable/Polen__windows
cp -rp etiquetes/listadoEtiquetas.txt		build/estable/Polen__windows

if ! [ -d build/estable/Polen__macOSX ]; then mkdir -p build/estable/Polen__macOSX; fi
cp -rp  build/Polen/MacOSX/Polen.app/*		build/estable/Polen__macOSX
#cp -rp imatges/ build/estable/			build/estable/Polen__macOSX
cp -rp docs/ 					build/estable/Polen__macOSX/docs
cp -rp manualUsuari.pdf 			build/estable/Polen__macOSX
cp -rp "Milflores - 3840 x 3072_disca_1.txt"	build/estable/Polen__macOSX
cp -rp "Milflores - 3840 x 3072_disca_1.informe.csv"	build/estable/Polen__macOSX
cp -rp etiquetes/listadoEtiquetas.txt		build/estable/Polen__macOSX


cd build/estable
# Canvit a ZIP, perque els pobres de Windows no solen tindre a ma un descompresor de TGZ
#tar czvf ../anotarPolen__Linux_x64_v1_0.tgz	Polen__linux_x64
#tar czvf ../anotarPolen__Linux_x32_v1_0.tgz	Polen__linux_x32
#tar czvf ../anotarPolen__Windows_v1_0.tgz 	Polen__windows
#tar czvf ../anotarPolen__macOSX_v1_0.tgz	Polen__macOSX

zip -r ../anotarPolen__Linux_x64_v1_1.zip	Polen__linux_x64
zip -r ../anotarPolen__Linux_x32_v1_1.zip	Polen__linux_x32
zip -r ../anotarPolen__Windows_v1_1.zip 	Polen__windows
zip -r ../anotarPolen__macOSX_v1_1.zip          Polen__macOSX



cd ../..
pwd
ls -lrth build/estable
echo "Recorda copiar els nous artxius al Drive i borrar el directori build/Polen"
echo "P. ex.: rm -rf build/Polen"