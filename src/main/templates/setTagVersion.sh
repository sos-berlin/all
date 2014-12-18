#! /bin/bash
#####################################################################
# Step 1:                                                           #
# sets the version of Branch ${versionBranch} to ${releaseVersion}  #
#                                                                   #
#####################################################################
echo ********************SET VERSION TO ${releaseVersion}********************
mvn versions:set -DnewVersion=${releaseVersion} -DgenerateBackupPoms=false
echo ********************SET VERSION FINISHED********************************
