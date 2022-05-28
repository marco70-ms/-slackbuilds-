https://github.com/jaos/slapt-get

My config file:

/etc/slapt-get/slapt-getrc

# Working directory for local storage/cache.
WORKINGDIR=/var/cache/slapt-get

# Exclude package names and expressions.
# To exclude pre and beta packages, add this to the exclude: 
#   [0-9\_\.\-]{1}pre[0-9\-\.\-]{1}
EXCLUDE=grub,^aaa_elflibs,^devs,^glibc-.*,^kernel-.*,^udev,.*-[0-9]+dl$,i[3456]86

# Base url to directory with a PACKAGES.TXT.
# This can point to any release, ie: 9.0, 10.0, current, etc.
#SOURCE=ftp://ftp.slackware.com/pub/slackware/slackware-14.2/:OFFICIAL
SOURCE=http://ftp.slackware.pl/pub/slackware/slackware64-15.0/:OFFICIAL
#SOURCE=ftp://ftp.gwdg.de/pub/linux/slackware/slackware64-current/:OFFICIAL

# Sources for the testing, extra, and pasture areas - if you use them.
# SOURCE=ftp://ftp.slackware.com/pub/slackware/slackware-14.2/extra/:PREFERRED
# SOURCE=ftp://ftp.slackware.com/pub/slackware/slackware-14.2/testing/
# SOURCE=ftp://ftp.slackware.com/pub/slackware/slackware-14.2/pasture/

# Source for slapt-get.
#SOURCE=http://software.jaos.org/slackpacks/14.2/:OFFICIAL

# Packages on a CD/DVD.
# SOURCE=file:///mnt/cdrom/:OFFICIAL

# Home made packages.
# SOURCE=file:///var/www/packages/:CUSTOM
