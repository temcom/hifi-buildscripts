**Required Packages for a machine you are building from**

`sudo zypper install -t pattern devel_basis`
`sudo zypper install git cmake libqt5-qtbase-devel libqt5-qtscript-devel libqt5-qtdeclarative-devel libqt5-qtwebsockets-devel libqt5-linguist-devel libqt5-qtmultimedia-devel libqt5-qtsvg-devel libqt5-qtwebengine-devel libqt5-qtwebchannel-devel libqt5-qtxmlpatterns-devel glu-devel libopenssl-1_0_0-devel libSDL2-devel tbb-devel`


**Required Packages for a machine you want only want to run binaries from**

*Note: Due to hard coding library locations you would need to make an **exact** clone of binary directory on run box compared to build box*

`sudo zypper install libqt5-qtbase libqt5-qtscript libqt5-qtdeclarative libqt5-qtwebsockets libqt5-linguist libqt5-qtmultimedia libqt5-qtsvg libqt5-qtwebengine libqt5-qtwebchannel libqt5-qtxmlpatterns glu libopenssl-1_0_0 libSDL2 tbb`
