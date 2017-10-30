**Required PPA for Qt5.9 for machine building or running**

`sudo add-apt-repository ppa:beineri/opt-qt591-xenial`

*If add-apt-reppsitoty does not work you need to do;* `sudo apt-get install software-properties-common` *then run again.*

**Do not, at this time, use Beineri's qt592 PPA** - it has some issues with its file layout and will lead to failure.  Probably not fault of PPA, but it is what it is.

**Required Packages for a machine you are building from**

`sudo apt-get update`

`sudo apt-get install build-essential git cmake libtbb-dev libbullet-dev libsdl2-dev libssl-dev chrpath patchelf qt59base qt59script qt59quickcontrols qt59websockets qt59tools qt59multimedia qt59svg qt59webengine`

**Required Packages for a machine you want only want to run binaries from**

*Note: Due to hard coding library locations you would need to make an **exact** clone of binary directory on run box compared to build box*

**If you only intend to run Stack (Server as in assignment-client and/or domain-server)**

`sudo add-apt-repository ppa:beineri/opt-qt591-xenial`

`sudo apt-get update`

`sudo apt-get install qt59websockets qt59script libtbb2`

**If you want to run Interface (Client)**

`sudo add-apt-repository ppa:beineri/opt-qt591-xenial`

`sudo apt-get update`

`sudo apt-get install qt59websockets qt59script qt59webengine qt59multimedia libtbb2 libbulletcollision2.83.6 libbulletdynamics2.83.6`

*Note: I'm not 100% sure all dependencies are really being installed for the run only list and Interface (client). I think I have most of them, but, since I can't really run Interface due to doing this from a VM (which doesn't support the OpenGL level needed)... I can see Interface load up and "try" to work but it doesn't get far enough to be 100% sure I got all the dependencies in place.*
