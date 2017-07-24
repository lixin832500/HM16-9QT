# ----------------------------------------------------

# ------------------------------------------------------
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

TEMPLATE = app
TARGET = TAppDecoder
DESTDIR = $${OUT_PWD}/decoders

VERSION_MAJOR = 16
VERSION_MINOR = 9
VERSION_BUILD = 0

VERSION = $${VERSION_MAJOR}.$${VERSION_MINOR}.$${VERSION_BUILD}

DEFINES += _CONSOLE _CRT_SECURE_NO_WARNINGS
INCLUDEPATH += ../../source/Lib
msvc: INCLUDEPATH += ../../compat/msvc
DEPENDPATH += .
include(TAppDecoder.pri)

LIBS += -L$$OUT_PWD/..

CONFIG(debug, debug|release){
    LIBS += -lTLibDecoderd -lTAppCommond -lTLibVideoIOd -lTLibCommond
}
CONFIG(release, debug|release){
    LIBS += -lTLibDecoder  -lTAppCommon -lTLibVideoIO  -lTLibCommon
}

DEPENDPATH += ../../source/Lib 
