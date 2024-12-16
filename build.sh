mkdir build/intellij-mocha-mouse-light-theme
rm -rf build/intellij-mocha-mouse-light-theme/*
mkdir build/intellij-mocha-mouse-light-theme/lib
mkdir build/intellij-mocha-mouse-light-theme-$1
cp -r src/main/resources/* build/intellij-mocha-mouse-light-theme-$1/
cd build
cd intellij-mocha-mouse-light-theme-$1
zip -r ../intellij-mocha-mouse-light-theme/lib/intellij-mocha-mouse-light-theme-$1.jar ./*
cd ..
zip -r distributions/intellij-mocha-mouse-light-theme-$1.zip.tmp intellij-mocha-mouse-light-theme
rm -f distributions/intellij-mocha-mouse-light-theme-$1.zip
mv distributions/intellij-mocha-mouse-light-theme-$1.zip.tmp distributions/intellij-mocha-mouse-light-theme-$1.zip
