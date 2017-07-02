# ----------------------------------------------------

# ------------------------------------------------------
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt


TEMPLATE = app
TARGET = HM_169
DESTDIR = $${OUT_PWD}/../../../../decoders

DEFINES += _CONSOLE _CRT_SECURE_NO_WARNINGS
INCLUDEPATH += ../../source/Lib
msvc: INCLUDEPATH += ../../compat/msvc
DEPENDPATH += .

LIBS += -L$$OUT_PWD/..

CONFIG(debug, debug|release){
    LIBS += -lTLibDecoderAnalyserd -lTAppCommond -lTLibVideoIOd -lTLibCommond
}
CONFIG(release, debug|release){
    LIBS += -lTLibDecoderAnalyser  -lTAppCommon -lTLibVideoIO  -lTLibCommon
}

DEPENDPATH += ../../source/Lib

HEADERS += \
    ../../source/App/TAppDecoder/TAppDecCfg.h \
    ../../source/App/TAppDecoder/TAppDecTop.h

SOURCES += \
    ../../source/App/TAppDecoder/decmain.cpp \
    ../../source/App/TAppDecoder/TAppDecCfg.cpp \
    ../../source/App/TAppDecoder/TAppDecTop.cpp
