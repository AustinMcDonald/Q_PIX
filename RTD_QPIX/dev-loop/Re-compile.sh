cd ../Build/

rm -rf *

cmake ..

make -j6

mv libQpix.a ../Library/.

cd ../dev-loop/

