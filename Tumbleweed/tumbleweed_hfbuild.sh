#
# Build script for High Fidelity VR Platform - openSUSE Tumbleweed edition.
# (c) 2017 J.C.L -- aka the virtual persona, Omega Heron.
# GPL 3.0
#
# No support will be given, use at your own risk and read all instructions before using.
#
# If you would like to improve this script then by all means offer a pull request.
# Do not file comments saying you should do this or that, do it yourself and offer a pull request.
# There's no assurance this will work ongoing -- It depends upon High Fidelity not breaking its
# make files (a routine occurence) and certain packages being at certain level in Tumbleweed (not
# an assured proposition since Tumbleweed is all about the bleeding edge -- it just so happens that
# its current bleeding edge aligns perfectly with what HiFi needs).
#
#!/bin/bash
# This looks for most recent tag and builds or warns and exits if already built.
set -e
export QT_CMAKE_PREFIX_PATH=/usr/lib64/cmake
export HFSRC=~/src/hifi
export HFBINBASE=~/hifi
export CXX='g++ -std=c++11'
if [ ! -e $HFSRC ]; then
        mkdir -p $HFSRC
        git clone http://github.com/highfidelity/hifi $HFSRC
fi
cd $HFSRC
git checkout master
git branch -D testbranch || true
git pull
export RELEASE_NUMBER=$(/usr/bin/git describe --tags $(git rev-list --tags --max-count=1) | sed 's/RELEASE-//g')

# Set destination to install base + tag version
export HFBIN=$HFBINBASE/$RELEASE_NUMBER

# Check to see if it's already made...
if [ -e $HFBIN ]; then
        read -p "Already built.  Press R and enter/return to rebuild or enter/return to exit." resp
        if [ ! resp -eq 'R' ]; then
                exit 1
        fi
fi

git checkout tags/RELEASE-$RELEASE_NUMBER
export RELEASE_TYPE=PRODUCTION
export BRANCH=stable

rm -rf $HFSRC/build
mkdir -p $HFSRC/build
cd $HFSRC/build
cmake .. -DUSE_LOCAL_TBB=1 -DUSE_LOCAL_SDL2=1 -DCMAKE_BUILD_TYPE=Release
make -j2 domain-server assignment-client pcmCodec hifiCodec interface
rm -rf $HFBIN
mkdir -p $HFBIN/plugins
cd $HFSRC/build/assignment-client
strip -s assignment-client
chrpath -r $HFBIN assignment-client
mv assignment-client $HFBIN
cd $HFSRC/build/assignment-client/plugins
strip libhifiCodec.so
mv libhifiCodec.so $HFBIN/plugins
strip libpcmCodec.so
mv libpcmCodec.so $HFBIN/plugins
cd $HFSRC/build/domain-server
strip -s domain-server
mv domain-server $HFBIN
cp -r $HFSRC/domain-server/resources/ $HFBIN
cd $HFSRC/build/ext/makefiles/quazip/project/lib
strip libquazip5.so.1.0.0
mv libquazip5.so $HFBIN
mv libquazip5.so.1 $HFBIN
mv libquazip5.so.1.0.0 $HFBIN
cd $HFSRC/build/ext/makefiles/bullet/project/lib
strip libBulletCollision.so.2.83
strip libBulletDynamics.so.2.83
strip libBulletSoftBody.so.2.83
strip libLinearMath.so.2.83
patchelf --set-rpath $HFBIN libBulletCollision.so.2.83
patchelf --set-rpath $HFBIN libBulletDynamics.so.2.83
patchelf --set-rpath $HFBIN libBulletSoftBody.so.2.83
mv libBulletCollision.so.2.83 $HFBIN
mv libBulletDynamics.so.2.83 $HFBIN
mv libBulletSoftBody.so.2.83 $HFBIN
mv libLinearMath.so.2.83 $HFBIN
mv libBulletCollision.so $HFBIN
mv libBulletDynamics.so $HFBIN
mv libBulletSoftBody.so $HFBIN
mv libLinearMath.so $HFBIN
cd $HFSRC/build/ext/makefiles/nvtt/project/lib
strip libnvcore.so
strip libnvimage.so
strip libnvmath.so
strip libnvtt.so
patchelf --set-rpath $HFBIN libnvimage.so
patchelf --set-rpath $HFBIN libnvtt.so
mv libnvcore.so $HFBIN
mv libnvimage.so $HFBIN
mv libnvmath.so $HFBIN
mv libnvtt.so $HFBIN
cd $HFSRC/build/interface
strip -s interface
chrpath -r $HFBIN interface
mv interface $HFBIN
cd $HFSRC/build/interface/plugins
strip libhifiCodec.so
mv libhifiCodec.so $HFBIN/plugins
strip libhifiSdl2.so
chrpath -r $HFBIN libhifiSdl2.so
mv libhifiSdl2.so $HFBIN/plugins
strip libhifiSixense.so
chrpath -r $HFBIN libhifiSixense.so
mv libhifiSixense.so $HFBIN/plugins
strip libpcmCodec.so
mv libpcmCodec.so $HFBIN/plugins
cd $HFSRC/build/interface
cp -r $HFSRC/build/interface/resources/ $HFBIN
cp -r $HFSRC/build/interface/scripts/ $HFBIN
#mv resources $HFBIN
#mv scripts $HFBIN
cd $HFSRC/build/ext/makefiles/polyvox/project/lib/Release
mv libPolyVoxCore.so $HFBIN
mv libPolyVoxCore.so.0 $HFBIN
strip libPolyVoxCore.so.0.2.1
mv libPolyVoxCore.so.0.2.1 $HFBIN
cd $HFSRC/build/ext/makefiles/steamworks/project/src/steamworks/redistributable_bin/linux64
strip libsteam_api.so
chmod a+r libsteam_api.so
mv libsteam_api.so $HFBIN
cd $HFSRC/build/ext/makefiles/sixense/project/src/sixense/lib/linux_x64/release
strip libsixense_utils_x64.so
strip libsixense_x64.so
mv libsixense_utils_x64.so $HFBIN
mv libsixense_x64.so $HFBIN
