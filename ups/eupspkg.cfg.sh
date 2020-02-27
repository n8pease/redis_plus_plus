TAP_PACKAGE=1

PKGDIR=$PWD
BUILDDIR=$PWD/build


config()
{
    rm -rf ${BUILDDIR}
    mkdir -p ${BUILDDIR}
    cd ${BUILDDIR}
    echo $PWD
    cmake -DCMAKE_BUILD_TYPE=Release \
        -DHIREDIS_HEADER=${HIREDIS_DIR}/usr/local/include/hiredis \
        -DHIREDIS_LIB=${HIREDIS_DIR}/usr/local/lib \
        ..
}


build()
{
    cd ${BUILDDIR}
    make
}


install()
{
    cd ${BUILDDIR}
    make install
    #cd ${PKGDIR}
    #install_ups
}
