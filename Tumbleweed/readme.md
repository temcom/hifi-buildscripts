These scripts are provide with no warranty as to proper working other than my having tested on a clean install of openSUSE Tumbleweed on a Virtual Machine.  Use at your own risk and study scripts to see what's being done and how before use.

**If you wish to reference these scripts from your blog/wiki/whatever do not copy my scripts - link back to here and credit me as author of this content.**

Build script for openSUSE Tumbleweed.

1) Install dependencies before attempting.
2) Adjust variables for source location and binary location
3) Hope the gods of luck smile upon you.

Variables controlling where source and binaries go;

*Defaults to user running script home directory with source in /home/your_user/src/hifi and binaries to /home/your_user/hifi/VERSION/*

`HFSRC=$USER/src/hifi`

`HFBINBASE=$USER/hifi`

For binaries it is important you realize those binaries will **only** run properly if in "installed" location due to hard coding library paths.
