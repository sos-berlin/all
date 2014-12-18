#! /bin/bash
#####################################################################
#                                                                   #
# used for Step 2 and Step 5:                                       #
# commits the changes to root project and all submodules            #
#                                                                   #
#####################################################################
echo ********************COMMIT NEW VERSION TO ALL SUBMODULES*************************
git submodule foreach "git commit -a -m 'version set to ${snapshotVersion}'"
cc=$?
if [ $cc -ne 0 ]; then
    echo "submodule foreach commit of version ${snapshotVersion} failed with exit code $cc"
    exit $cc
fi
echo ********************COMMIT NEW VERSION*******************************************
git commit -a -m 'version set to ${snapshotVersion}'
cc=$?
if [ $cc -ne 0 ]; then
    echo "commit of version ${snapshotVersion} failed with exit code $cc"
    exit $cc
fi
echo ********************COMMIT NEW VERSION FINISHED**********************************
