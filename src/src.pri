DEFINES += _FILE_OFFSET_BITS=64 _LARGEFILE_SOURCE RAR_SMP RARDLL

win32: LIBS += -lAdvApi32 -lOleAut32 -lUser32 -lShell32 -lPowrProf
!CONFIG(staticlib): {
     win32: {
          CONFIG(release, debug|release) : {
             LIBS += -L$$OUT_PWD/unrar/release
          } else: {
             LIBS += -L$$OUT_PWD/unrar/debug
          }
     } else: {
          LIBS += -L$$OUT_PWD/unrar
     }
     LIBS += -lunrar 
}

SOURCES += \
    $$PWD/qtrar.cpp \
    $$PWD/qtrarfile.cpp \
    $$PWD/qtrarfileinfo.cpp

HEADERS += \
    $$PWD/qtrar_global.h \
    $$PWD/qtrar.h \
    $$PWD/qtrarfile.h \
    $$PWD/qtrarfileinfo.h
