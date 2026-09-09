flutter clean 
cd ios
rm -rf Pods
rm -rf Podfile.lock
cd ..
rm -rf pubspec.lock
flutter pub get
cd ios 
arch -x86_64 pod install
cd ..