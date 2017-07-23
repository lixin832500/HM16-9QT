# ----------------------------------------------------

# ------------------------------------------------------

TEMPLATE = lib
CONFIG(debug, debug|release){
    TARGET = TLibDecoderAnalyserd
}
CONFIG(release, debug|release){
    TARGET = TLibDecoderAnalyser
}
CONFIG += staticlib
DEFINES += _CRT_SECURE_NO_WARNINGS
INCLUDEPATH += ../../source/Lib \
    ../../..
msvc: INCLUDEPATH += ../../compat/msvc

DESTDIR = $${OUT_PWD}/..

include(TLibDecoderAnalyser.pri)
