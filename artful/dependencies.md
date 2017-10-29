**Required Packages for a machine you are building from**

`sudo apt-get install build-essential git cmake qtbase5-dev qtscript5-dev qtdeclarative5-dev libqt5websockets5-dev libssl-dev qttools5-dev-tools qtmultimedia5-dev libqt5webchannel5-dev qtwebengine5-dev libqt5xmlpatterns5-dev libqt5svg5-dev libtbb-dev libsdl2-dev libglm-dev chrpath patchelf`

**Required Packages for a machine you want only want to run binaries from**

*Note: Due to hard coding library locations you would need to make an **exact** clone of binary directory on run box compared to build box*

**If you only intend to run Stack (Server as in assignment-client and/or domain-server)**

`sudo apt-get install libqt5websockets5 libqt5qml5 libqt5scripttools5 libtbb2 libgomp1`

**If you want to run Interface (Client)**

`sudo apt-get install libqt5websockets5 libqt5qml5 libqt5scripttools5 libtbb2 libgomp1 libqt5multimedia5 libqt5webengine5 libqt5xmlpatterns5`
