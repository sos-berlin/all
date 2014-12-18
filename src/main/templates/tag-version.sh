#! /bin/bash
#####################################################################
# Step 3:                                                           #
# tags the root project and all submodules                          #
#                                                                   #
#####################################################################
echo ********************CREATES A TAG "v${releaseVersion}"******************
git tag -a v${releaseVersion} -m 'create tag v${releaseVersion}'
cc=$?
if [ $cc -ne 0 ]; then
    echo "tagging of version v${releaseVersion} failed with exit code $cc"
    exit $cc
fi
echo ********************CREATES A TAG "v${releaseVersion}" in all submodules******************
git submodule foreach "git tag -a v${releaseVersion} -m 'create tag v${releaseVersion}'"
cc=$?
if [ $cc -ne 0 ]; then
    echo "submodule foreach tagging of version ${releaseVersion} failed with exit code $cc"
    exit $cc
fi
echo ********************TAG CREATION FINISHED******************
