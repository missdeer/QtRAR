DEFINES += _FILE_OFFSET_BITS=64 _LARGEFILE_SOURCE RAR_SMP RARDLL

LIBS += -L$$OUT_PWD/unrar -lunrar

SOURCES += \
    $$PWD/qtrar.cpp \
    $$PWD/qtrarfile.cpp \
    $$PWD/qtrarfileinfo.cpp

HEADERS += \
    $$PWD/qtrar_global.h \
    $$PWD/qtrar.h \
    $$PWD/qtrarfile.h \
    $$PWD/qtrarfileinfo.h
