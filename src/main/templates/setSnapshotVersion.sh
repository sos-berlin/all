#! /bin/bash
#####################################################################
# Step 4:                                                           #
# sets the version of Branch ${versionBranch} to ${snapshotVersion} #
#                                                                   #
#####################################################################
echo ********************SET VERSION TO ${snapshotVersion}*******************
mvn org.codehaus.mojo:versions-maven-plugin:1.3.1:set -DnewVersion=${snapshotVersion} -DgenerateBackupPoms=false
echo ********************SET VERSION FINISHED*******************
