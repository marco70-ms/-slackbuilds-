#!/bin/sh

NAME_VERSION=MPlayer
SVN_DATE=20201003
OUTPUT=${OUTPUT:-/tmp}

# Remove old sources if exist
rm -R --force ${NAME_VERSION}

# Checkout svn trunk
svn -r {${SVN_DATE}} export svn://svn.mplayerhq.hu/mplayer/trunk/  ${NAME_VERSION} \
  2>&1 | tee $OUTPUT/version-${NAME_VERSION}.log

# Move downloaded directory to match output tarball name:
mv ${NAME_VERSION} ${NAME_VERSION}-${SVN_DATE}

# Create source tarball
tar cvf ${NAME_VERSION}-${SVN_DATE}.tar ${NAME_VERSION}-${SVN_DATE}

# Compress source tarball
xz -9 -v ${NAME_VERSION}-${SVN_DATE}.tar

# Delete temporary directories
rm -R --force ${NAME_VERSION}-${SVN_DATE}
