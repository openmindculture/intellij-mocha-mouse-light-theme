mkdir build/intellij-mocha-mouse-dark-theme
rm -rf build/intellij-mocha-mouse-dark-theme/*
mkdir build/intellij-mocha-mouse-dark-theme/lib
mkdir build/intellij-mocha-mouse-dark-theme-$1
cp -r src/main/resources/* build/intellij-mocha-mouse-dark-theme-$1/
cd build
cd intellij-mocha-mouse-dark-theme-$1
zip -r ../intellij-mocha-mouse-dark-theme/lib/intellij-mocha-mouse-dark-theme-$1.jar ./*
cd ..
zip -r distributions/intellij-mocha-mouse-dark-theme-$1.zip.tmp intellij-mocha-mouse-dark-theme
rm -f distributions/intellij-mocha-mouse-dark-theme-$1.zip
mv distributions/intellij-mocha-mouse-dark-theme-$1.zip.tmp distributions/intellij-mocha-mouse-dark-theme-$1.zip
