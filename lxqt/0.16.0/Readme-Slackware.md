LXQT On Slackware
=================

If you want to install and use LXQT on Slackware, you need more than just
the packages in the lxqt package directory for Slackware-current.
All of the below are also required if you want to compile LXQT yourself.

Openbox
-------

LXQT needs a Window Manager, it does not have one itself.  LXQT will offer
you a choice of fvwm2, xfwm4, fluxbox on its first start but you can also
install openbox. If you do prefer openbox, get these two packages from my
'slackbuilds' repository,
http://bear.alienbase.nl/mirrors/people/alien/slackbuilds/ :

obconf
openbox

Dependencies
------------

Openbox is a dependency for compiling obconf-qt but if you are not interested
in using openbox you can skip installing openbox and compiling obconf-qt.

The real mandatory dependencies are related to Qt5 and the KDE Frameworks,
upon which LXQT was built.

# deps:
libdbusmenu-qt
libinput
libxkbcommon
polkit-qt-1
qt5
qt5-webkit
wayland

# kde:
attica
baloo
bluez-qt
breeze-icons
extra-cmake-modules
frameworkintegration
kactivities
kactivities-stats
kapidox
karchive
kauth
kbookmarks
kcmutils
kcodecs
kcompletion
kconfig
kconfigwidgets
kcoreaddons
kcrash
kdbusaddons
kdeclarative
kded
kdelibs4support
kdesignerplugin
kdesu
kdewebkit
kdnssd
kdoctools
kemoticons
kfilemetadata
kglobalaccel
kguiaddons
khtml
ki18n
kiconthemes
kidletime
kimageformats
kinit
kio
kitemmodels
kitemviews
kjobwidgets
kjs
kjsembed
kmediaplayer
knewstuff
knotifications
knotifyconfig
kpackage
kparts
kpeople
kplotting
kpty
kross
krunner
kservice
ktexteditor
ktextwidgets
kunitconversion
kwallet
kwidgetsaddons
kwindowsystem
kxmlgui
kxmlrpcclient
libkscreen
modemmanager-qt
networkmanager-qt
oxygen-icons5
plasma-framework
sddm
solid
sonnet
threadweaver

Finally, you need the following packages from my main slackbuilds repository
at http://bear.alienbase.nl/mirrors/people/alien/slackbuilds/ :

libstatgrab
muparser
obconf
openbox
