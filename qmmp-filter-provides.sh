#!/bin/sh

if [ -x /usr/lib/rpm/redhat/find-provides ]; then
    FINDPROV=/usr/lib/rpm/redhat/find-provides
else
    FINDPROV=/usr/lib/rpm/find-provides
fi
      
$FINDPROV $* | sed -e '/libalsa.so/d' \
                   -e '/libffmpeg.so/d' \
                   -e '/libflac.so/d' \
                   -e '/libjack.so/d' \
                   -e '/libmad.so/d' \
                   -e '/libmpc.so/d' \
                   -e '/libvorbis.so/d'
