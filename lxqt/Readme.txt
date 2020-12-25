LXQT On slackware64-current
=================

2020.12.25

### deps
# muparser \
# openbox \
# obconf \
# libstatgrab \
# libfm-extra \
# lxmenu-data \
# menu-cache \
# libfm \

lxqt-0.16.0
### base
./lxqt.SlackBuild base:lxqt-build-tools,libqtxdg,liblxqt,libsysstat,libconfig, \
compton-conf,libfm-qt,lxqt-themes,lxqt-qtplugin,obconf-qt,pavucontrol-qt,qtermwidget

### main
./lxqt.SlackBuild lxqt:lximage-qt,lxqt-about,lxqt-admin,lxqt-archiver,lxqt-config, \
lxqt-globalkeys,lxqt-notificationd,lxqt-openssh-askpass,lxqt-policykit,lxqt-session, \
lxqt-sudo,pcmanfm-qt,qterminal,lxqt-panel,lxqt-powermanagement,lxqt-runner

### extra
./lxqt.SlackBuild extra:qps,screengrab

https://github.com/lxqt
