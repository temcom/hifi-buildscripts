# hifi-buildscripts
Build scripts for various Linux distributions - no support given.

If you wish to reference my work on your blog/wiki/whatever do **not** copy my scripts, reference back to here and credit me for these works.

I don't maintian this is either the best, only or even right way to compile High Fidelity's VR Server/Client programs, but, it's what works for me and has prvoven overall reliable in face of constant changes that break HF compiling all too routinely.

This will (possibly) work for **only** the following Linux based distribtutions;

1) Ubuntu Xenial (16.04) -- In progress, sorting out issues with Interface not working.  AC/DS good.
2) Ubuntu Artful (17.10) -- Will be dropped in July 2018 when Artful is "retired".
3) Debian Buster (10.0) -- Buster is currently in Debian's "testing" phase.
4) openSUSE Tumbleweed
5) Fedora 27 -- 27 is currently forming for release sometime in December, it works at the moment.

Each of above has a subdirectory with its specific build scripts and notes.

It will not work for anything else that's not at least an almost identical clone for packages to one of the above.

Linux Mint (based on Ubuntu 16.04) could work, but, it requires figuring out a PPA for Qt5.9.x as was done for Xenial -- If Mint releases a build at parity with Ubuntu 17.10 then, in theory, support it would be easy mode.

CentOS is not on my todo list.  Others have handled it and I'm not interested in trying to nudge even the latest version of it to library levels recent enough to run HiFi -- should a CentOS release come along in future offering needed libraries without having to do so much... hackery... I'll reconsider it.
