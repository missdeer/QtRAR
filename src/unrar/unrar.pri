DEFINES += _FILE_OFFSET_BITS=64 _LARGEFILE_SOURCE RAR_SMP RARDLL

HEADERS += $$PWD/*.hpp

SOURCES += \
    $$PWD/rar.cpp \
    $$PWD/strlist.cpp \
    $$PWD/strfn.cpp \
    $$PWD/pathfn.cpp \
    $$PWD/smallfn.cpp \
    $$PWD/global.cpp \
    $$PWD/file.cpp \
    $$PWD/filefn.cpp \
    $$PWD/filcreat.cpp \
    $$PWD/archive.cpp \
    $$PWD/arcread.cpp \
    $$PWD/unicode.cpp \
    $$PWD/system.cpp \
    $$PWD/isnt.cpp \
    $$PWD/crypt.cpp \
    $$PWD/crc.cpp \
    $$PWD/rawread.cpp \
    $$PWD/encname.cpp \
    $$PWD/resource.cpp \
    $$PWD/match.cpp \
    $$PWD/timefn.cpp \
    $$PWD/rdwrfn.cpp \
    $$PWD/consio.cpp \
    $$PWD/options.cpp \
    $$PWD/errhnd.cpp \
    $$PWD/rarvm.cpp \
    $$PWD/secpassword.cpp \
    $$PWD/rijndael.cpp \
    $$PWD/getbits.cpp \
    $$PWD/sha1.cpp \
    $$PWD/sha256.cpp \
    $$PWD/blake2s.cpp \
    $$PWD/hash.cpp \
    $$PWD/extinfo.cpp \
    $$PWD/extract.cpp \
    $$PWD/volume.cpp \
    $$PWD/list.cpp \
    $$PWD/find.cpp \
    $$PWD/unpack.cpp \
    $$PWD/headers.cpp \
    $$PWD/threadpool.cpp \
    $$PWD/rs16.cpp \
    $$PWD/cmddata.cpp \
    $$PWD/ui.cpp \
    $$PWD/filestr.cpp \
    $$PWD/scantree.cpp \
    $$PWD/dll.cpp \
    $$PWD/qopen.cpp
