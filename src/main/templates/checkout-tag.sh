#! /bin/bash
#####################################################################
#                                                                   #
# checks out the tagged version v${releaseVersion}                  #
#                                                                   #
#####################################################################
echo ***************CHECKOUT TAG************************
git checkout v${releaseVersion}
cc=$?
if [ $cc -ne 0 ]; then
    echo "checkout tag v${releaseVersion} failed with exit code $cc"
    exit $cc
fi
git submodule foreach "git checkout v${releaseVersion}"
cc=$?
if [ $cc -ne 0 ]; then
    echo "submodule foreach checkout tag v${releaseVersion} failed with exit code $cc"
    exit $cc
fi
echo ***************CHECKOUT TAG FINISHED***************
