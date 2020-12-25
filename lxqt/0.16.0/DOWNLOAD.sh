#
# https://github.com/lxqt/lxqt/wiki/Building-from-source
#

LXQT=0.16.0

# base
DL_BASE=(
  https://github.com/lxqt/lxqt-build-tools/releases/download/0.8.0/lxqt-build-tools-0.8.0.tar.xz
  https://github.com/lxqt/libqtxdg/releases/download/3.6.0/libqtxdg-3.6.0.tar.xz
  https://github.com/lxqt/liblxqt/releases/download/$LXQT/liblxqt-$LXQT.tar.xz
  https://downloads.lxqt.org/libsysstat/0.3.2/libsysstat-0.4.4.tar.xz
  https://github.com/lxqt/compton-conf/releases/download/$LXQT/compton-conf-$LXQT.tar.xz
  https://github.com/lxqt/libfm-qt/releases/download/$LXQT/libfm-qt-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-themes/releases/download/$LXQT/lxqt-themes-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-qtplugin/releases/download/$LXQT/lxqt-qtplugin-$LXQT.tar.xz
  https://github.com/lxqt/obconf-qt/releases/download/$LXQT/obconf-qt-$LXQT.tar.xz
  https://github.com/lxqt/pavucontrol-qt/releases/download/$LXQT/pavucontrol-qt-$LXQT.tar.xz
  https://github.com/lxqt/qtermwidget/releases/download/0.16.1/qtermwidget-0.16.1.tar.xz
  https://github.com/hyperrealm/libconfig/archive/v1.7.2.tar.gz
)

# lxqt
DL_LXQT=(
  https://github.com/lxqt/lximage-qt/releases/download/$LXQT/lximage-qt-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-about/releases/download/$LXQT/lxqt-about-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-admin/releases/download/$LXQT/lxqt-admin-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-archiver/releases/download/0.3.0/lxqt-archiver-0.3.0.tar.xz
  https://github.com/lxqt/lxqt-config/releases/download/0.16.1/lxqt-config-0.16.1.tar.xz
  https://github.com/lxqt/lxqt-globalkeys/releases/download/$LXQT/lxqt-globalkeys-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-notificationd/releases/download/$LXQT/lxqt-notificationd-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-openssh-askpass/releases/download/$LXQT/lxqt-openssh-askpass-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-policykit/releases/download/$LXQT/lxqt-policykit-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-session/releases/download/$LXQT/lxqt-session-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-sudo/releases/download/$LXQT/lxqt-sudo-$LXQT.tar.xz
  https://github.com/lxqt/pcmanfm-qt/releases/download/$LXQT/pcmanfm-qt-$LXQT.tar.xz
  https://github.com/lxqt/qterminal/releases/download/0.16.1/qterminal-0.16.1.tar.xz
  https://github.com/lxqt/lxqt-panel/releases/download/0.16.1/lxqt-panel-0.16.1.tar.xz
  https://github.com/lxqt/lxqt-powermanagement/releases/download/$LXQT/lxqt-powermanagement-$LXQT.tar.xz
  https://github.com/lxqt/lxqt-runner/releases/download/$LXQT/lxqt-runner-$LXQT.tar.xz
)

# extra
# Deprecated:
#https://github.com/zjes/lxqt-appswitcher/archive/master.zip
DL_EXTRA=(
  https://github.com/lxqt/qps/releases/download/2.2.0/qps-2.2.0.tar.xz
  https://github.com/lxqt/screengrab/releases/download/2.1.0/screengrab-2.1.0.tar.xz
  https://github.com/lxqt/sddm-config-editor/archive/0.1.tar.gz
)

cd $(dirname $0)
mkdir -p src/{base,lxqt,extra}
cd src/base
  for DLURL in ${DL_BASE[*]} ; do
    wget -nv -T 20 --no-clobber --content-disposition $DLURL
  done
cd - 1>/dev/null
cd src/lxqt
  for DLURL in ${DL_LXQT[*]} ; do
    wget -nv -T 20 --no-clobber --content-disposition $DLURL
  done
cd - 1>/dev/null
cd src/extra
  for DLURL in ${DL_EXTRA[*]} ; do
    wget -nv -T 20 --no-clobber --content-disposition $DLURL
  done
cd - 1>/dev/null
