# ----------------------------------------------------

# ------------------------------------------------------

TEMPLATE = lib
CONFIG(debug, debug|release){
    TARGET = TLibVideoIOd
}
CONFIG(release, debug|release){
    TARGET = TLibVideoIO
}
CONFIG += staticlib
DEFINES += _CRT_SECURE_NO_WARNINGS
INCLUDEPATH += ../../source/Lib
msvc: INCLUDEPATH += ../../compat/msvc
DEPENDPATH += .
DESTDIR = $${OUT_PWD}/..

HEADERS += ../../source/Lib/TLibVideoIO/TVideoIOYuv.h
SOURCES += ../../source/Lib/TLibVideoIO/TVideoIOYuv.cpp
