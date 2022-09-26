mkdir build
cd build

ABI=arm64-v8a
ANDROID_NDK=~/tools/ndk/android-ndk-r16b

cmake \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=$ABI \
  -DANDROID_NATIVE_API_LEVEL=21 \
  -DCMAKE_MAKE_PROGRAM=make \
  -DANDROID_STL=c++_static \
  -DCMAKE_LIBRARY_OUTPUT_DIRECTORY=. \
  -DCMAKE_RUNTIME_OUTPUT_DIRECTORY=. \
  ..

#-DCMAKE_BUILD_TYPE=Release \
cmake --build .