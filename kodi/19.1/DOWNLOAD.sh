##

VERSION=19.1

cd /tmp

wget -O kodi-$VERSION.tar.gz https://github.com/xbmc/xbmc/archive/$VERSION-Matrix.tar.gz
wget -O libdvdcss-1.4.2-Leia-Beta-5.tar.gz https://github.com/xbmc/libdvdcss/archive/1.4.2-Leia-Beta-5.tar.gz
wget -O libdvdnav-6.0.0-Leia-Alpha-3.tar.gz https://github.com/xbmc/libdvdnav/archive/6.0.0-Leia-Alpha-3.tar.gz
wget -O libdvdread-6.0.0-Leia-Alpha-3.tar.gz https://github.com/xbmc/libdvdread/archive/6.0.0-Leia-Alpha-3.tar.gz
wget -O FFmpeg-4.3.2-Matrix-19.1.tar.gz https://github.com/xbmc/FFmpeg/archive/4.3.2-Matrix-19.1.tar.gz
wget http://mirrors.kodi.tv/build-deps/sources/fmt-6.1.2.tar.gz
wget http://mirrors.kodi.tv/build-deps/sources/crossguid-8f399e8bd4.tar.gz
wget http://mirrors.kodi.tv/build-deps/sources/fstrcmp-0.7.D001.tar.gz
wget http://mirrors.kodi.tv/build-deps/sources/flatbuffers-1.12.0.tar.gz
wget http://mirrors.kodi.tv/build-deps/sources/spdlog-1.5.0.tar.gz
wget http://mirrors.kodi.tv/build-deps/sources/libudfread-1.1.0.tar.gz

# repack
tar xvf kodi-$VERSION.tar.gz
mv xbmc-$VERSION-* kodi-$VERSION
tar -cJvf kodi-$VERSION.tar.xz kodi-$VERSION

rm -rf {kodi-$VERSION,kodi-$VERSION.tar.gz}
