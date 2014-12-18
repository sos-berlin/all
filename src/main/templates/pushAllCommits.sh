#! /bin/bash
#####################################################################
#                                                                   #
# Step 6:                                                           #
# push all commits to root project and all submodules               #
#                                                                   #
#####################################################################
echo ********************PUSH ALL COMMITS*************************
git submodule foreach "git push"
cc=$?
if [ $cc -ne 0 ]; then
    echo "push of commits failed with exit code $cc"
    exit $cc
fi
git push
cc=$?
if [ $cc -ne 0 ]; then
    echo "push of commits failed with exit code $cc"
    exit $cc
fi
echo ********************PUSH Tag v${releaseVersion}**************
git submodule foreach "git push origin tag v${releaseVersion}"
cc=$?
if [ $cc -ne 0 ]; then
    echo "submodule foreach push tag failed with exit code $cc"
    exit $cc
fi
git push origin tag v${releaseVersion}
cc=$?
if [ $cc -ne 0 ]; then
    echo "push tag failed with exit code $cc"
    exit $cc
fi
echo ********************PUSH FINISHED****************************
