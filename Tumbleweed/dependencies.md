**Required Packages for a machine you are building from**

`sudo zypper install -t pattern devel_basis`

`sudo zypper install git cmake libqt5-qtbase-devel libqt5-qtscript-devel libqt5-qtdeclarative-devel libqt5-qtwebsockets-devel libqt5-linguist-devel libqt5-qtmultimedia-devel libqt5-qtsvg-devel libqt5-qtwebengine-devel libqt5-qtwebchannel-devel libqt5-qtxmlpatterns-devel glu-devel libopenssl-1_0_0-devel libSDL2-devel tbb-devel`


**Required Packages for a machine you want only want to run binaries from**

*Note: Due to hard coding library locations you would need to make an **exact** clone of binary directory on run box compared to build box*

**If you only intend to run Stack (Server as in assignment-client and/or domain-server)**

`sudo zypper install libQt5QuickControls2-5 libQt5WebSockets5 libQt5OpenGL5 libQt5Script5 libtbb2 libtbbmalloc2 libQt5Concurrent5`

**If you want to run Interface (Client)**

`sudo zypper install libQt5QuickControls2-5 libQt5WebSockets5 libQt5OpenGL5 libQt5Script5 libtbb2 libtbbmalloc2 libQt5Concurrent5 libQt5Multimedia5 libQt5Svg5 libqt5-qtwebengine libatomic1 libqt5-qtquickcontrols libqt5-qtgraphicaleffects `

Some assumption about Tumbleweed;

I'm not 100% sure all the dependencies are really there for running Interface.  I can only see what leads to it not running at all, there are other calls it makes to Qt parts that are not linker error types but will cause program to terminate if not present... since I'm running from a VM I can only get so far with validating it has all the "modules" for Qt called as it constructs UI and, ultimately, the scene to view.  That said - I think I got most of them as I can load Interface to a totally black screen after adding a few additional modules (VBox/VMWare doesn't provide a GL layer good enough to run HiFi thus the black screen).

I did a clean install and selected Gnome environment.  If you have KDE/Plasma or "server only no GUI" things may be differemt, but, as far as I can tell the above should install dependencies needed regardless.
