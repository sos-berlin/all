#! /bin/bash
#####################################################################
# Step 4:                                                           #
# sets the version of Branch ${versionBranch} to ${snapshotVersion} #
#                                                                   #
#####################################################################
echo ********************SET VERSION TO ${snapshotVersion}*******************
mvn versions:set -DnewVersion=${snapshotVersion} -DgenerateBackupPoms=false
echo ********************SET VERSION FINISHED*******************
