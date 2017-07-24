# ----------------------------------------------------

# ------------------------------------------------------
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

TEMPLATE = app
TARGET = TAppEncoder
DESTDIR = $${OUT_PWD}/encoders

VERSION_MAJOR = 16
VERSION_MINOR = 9
VERSION_BUILD = 0

VERSION = $${VERSION_MAJOR}.$${VERSION_MINOR}.$${VERSION_BUILD}

DEFINES += _CONSOLE _CRT_SECURE_NO_WARNINGS
INCLUDEPATH += ../../source/Lib
msvc: INCLUDEPATH += ../../compat/msvc
DEPENDPATH += .

include(TAppEncoder.pri)

LIBS += -L$$OUT_PWD/..

CONFIG(debug, debug|release){
    LIBS += -lTLibEncoderd -lTAppCommond -lTLibVideoIOd -lTLibCommond
}
CONFIG(release, debug|release){
    LIBS += -lTLibEncoder  -lTAppCommon   -lTLibVideoIO  -lTLibCommon
}


DEPENDPATH += ../../source/Lib
