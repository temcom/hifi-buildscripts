**Required Packages for a machine you are building from**

`sudo apt-get install build-essential git cmake qtbase5-dev qtscript5-dev qtdeclarative5-dev libqt5websockets5-dev libssl-dev qttools5-dev-tools qtmultimedia5-dev libqt5webchannel5-dev qtwebengine5-dev libqt5xmlpatterns5-dev libqt5svg5-dev libtbb-dev libsdl2-dev libglm-dev chrpath patchelf`

**Required Packages for a machine you want only want to run binaries from**

*Note: Due to hard coding library locations you would need to make an **exact** clone of binary directory on run box compared to build box*

`sudo apt-get install qtbase5 qtscript5 qtdeclarative5 libqt5websockets5 libssl qttools5-tools qtmultimedia5 libqt5webchannel5 qtwebengine5 libqt5xmlpatterns5 libqt5svg5 libtbb libsdl2 libglm`
