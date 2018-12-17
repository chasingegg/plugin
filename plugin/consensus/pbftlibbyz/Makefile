curdir=$(dir $(dir $(dir $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))))
#dir=${curdir}/vendor/github.com/33cn/libbyz-go

install:
	@dir=$(cd curdir; cd ../../../vendor/github.com/33cn/libbyz-go;pwd); \
	cd $${dir}/bft/sfslite-1.2; \
    autoreconf -i; \
    sh -x setup.gnu -f -i -s; \
    mkdir install; \
    ./configure --prefix=$${dir}/bft/sfslite-1.2/install; \
    make CFLAGS="-Werror=strict-aliasing" CXXFLAGS="-fpermissive -DHAVE_GMP_CXX_OPS"; \
    make install; \
    cd $${dir}/bft; \
    ln -s sfslite-1.2/install sfs; \
    ln -s /usr/lib gmp; \
    cd $${dir}/bft/libbyz; \
    sed -i '418s/^.*$/  th_assert(sizeof(t.tv_sec) <= sizeof(long), "tv_sec is too big");/' Node.cc; \
    sed -i '420s/^.*$/  long int_bits = sizeof(long)*8;/' Node.cc; \
    make CPPFLAGS="-I../gmp -I../sfs/include/sfslite -g -Wall -DRECOVERY -fpermissive -DHAVE_GMP_CXX_OPS"

