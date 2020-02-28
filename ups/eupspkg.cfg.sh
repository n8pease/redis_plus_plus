TAP_PACKAGE=1

PKGDIR=$PWD
BUILDDIR=$PWD/build


config()
{
    rm -rf ${BUILDDIR}
    mkdir -p ${BUILDDIR}
    cd ${BUILDDIR}
    cmake -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_PREFIX_PATH=${HIREDIS_DIR}/usr/local \
        -DCMAKE_INSTALL_PREFIX=${PREFIX} \
        -DREDIS_PLUS_PLUS_BUILD_TEST=OFF \
        ..
}


build()
{
    cd ${BUILDDIR}
    make
}


install()
{
    install_ups
    cd ${BUILDDIR}
    make install
}
