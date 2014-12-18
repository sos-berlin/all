#! /bin/bash
#####################################################################
#                                                                   #
# checks out the branch ${versionBranch}                            #
#                                                                   #
#####################################################################
echo ***************CHECKOUT BRANCH ${versionBranch}*****************
set e
git checkout ${versionBranch}
cc=$?
if [ $cc -ne 0 ]; then
    echo "checkout ${versionBranch} failed with exit code $cc"
    exit $cc
fi
git submodule foreach "git checkout ${versionBranch}"
cc=$?
if [ $cc -ne 0 ]; then
    echo "submodule foreach checkout ${versionBranch} failed with exit code $cc"
    exit $cc
fi
echo ***************CHECKOUT FINISHED********************************
exit 0