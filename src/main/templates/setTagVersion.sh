#! /bin/bash
#####################################################################
# Step 1:                                                           #
# sets the version of Branch ${versionBranch} to ${releaseVersion}  #
#                                                                   #
#####################################################################
echo ********************SET VERSION TO ${releaseVersion}********************
mvn org.codehaus.mojo:versions-maven-plugin:1.3.1:set -DnewVersion=${releaseVersion} -DgenerateBackupPoms=false
echo ********************SET VERSION FINISHED********************************
