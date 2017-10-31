**Warning -- Interface built with this method is, so far, giving problems with core dumping at launch -- still invetigating.  Server binaries (AC/DS) seem fine.**

**I'm at a total loss here... my Ubuntu build box (16.04) that I began all this on produces Interface that works... a, obviously not perfect, clone of it produces Interface that crashes on launch.  Once I discover what's unique about Box A vs Box B I'll fix up Xenial for actual use with this script/dependcy tree.**

These scripts are provided with no warranty as to proper working other than my having tested on a clean install of Ubuntu 16.04 Xenial on a Virtual Machine.  Use at your own risk and study scripts to see what's being done and how before use.

**If you wish to reference these scripts from your blog/wiki/whatever do not copy my scripts - link back to here and credit me as author of this content.**

Build script for Ubuntu Xenial.

1) Install dependencies before attempting.
2) Adjust variables for source location and binary location
3) Hope the gods of luck smile upon you.

Variables controlling where source and binaries go;

*Defaults to user running script home directory with source in /home/your_user/src/hifi and binaries to /home/your_user/hifi/VERSION/*

`HFSRC=$USER/src/hifi`

`HFBINBASE=$USER/hifi`

If you want to, for instance, create a tarball of your binaries to run on another machine it will need to meet the following requirements;

1) Have the same distribution as the "build box" (i.e. Ubuntu Xenial build box -> Ubuntu Xenial run box).
2) Binaries on "run box" must be in same location as "build box" due to hard coding various run paths for libs.

For example;

On your build box you end up with binaries in...

/home/hfbuilder/hifi/7350/

Then your "run" box would need to see the **exact** same location.

/home/hfbuilder/hifi/7350

If you intend to build on one box and run on many I would suggest you think about making a consistent "install" location (perhaps something like /opt/hifi) and not use the /home/current-user/hifi/version_number/ convention I default to.
