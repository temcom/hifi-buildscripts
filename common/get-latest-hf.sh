#
# Build script for High Fidelity VR Platform - Utility function.
# (c) 2017 J.C.L -- aka the virtual persona, Omega Heron.
# GPL 3.0
#
# No support will be given, use at your own risk and read all instructions before using.
#
# If you would like to improve this script then by all means offer a pull request.
# Do not file comments saying you should do this or that, do it yourself and offer a pull request.
# There's no assurance this will work ongoing -- It depends upon High Fidelity not changing how it
# tags its release build points.
#
#!/bin/sh
# You must set HFSRC to location of your High Fidelity source.
export HFSRC=~/src.hifi
cd $HFSRC
export RELEASE_NUMBER=$(/usr/bin/git describe --tags $(git rev-list --tags --max-count=1) | sed 's/RELEASE-//g')
echo $RELEASE_NUMBER
