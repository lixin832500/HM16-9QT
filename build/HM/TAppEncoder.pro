# ----------------------------------------------------

# ------------------------------------------------------
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt


TEMPLATE = app
TARGET = TAppEncoder


DEFINES += _CONSOLE _CRT_SECURE_NO_WARNINGS
INCLUDEPATH += ../../source/Lib
msvc: INCLUDEPATH += ../../compat/msvc
DEPENDPATH += .


LIBS += -L$$OUT_PWD/..

CONFIG(debug, debug|release){
    LIBS += -lTLibEncoderd -lTAppCommond -lTLibVideoIOd -lTLibCommond
}
CONFIG(release, debug|release){
    LIBS += -lTLibEncoder  -lTAppCommon   -lTLibVideoIO  -lTLibCommon
}


DEPENDPATH += ../../source/Lib \
    ../../../TLibSysuAnalyzer


HEADERS += ../../source/App/TAppEncoder/TAppEncCfg.h \
    ../../source/App/TAppEncoder/TAppEncTop.h
SOURCES += ../../source/App/TAppEncoder/encmain.cpp \
    ../../source/App/TAppEncoder/TAppEncCfg.cpp \
    ../../source/App/TAppEncoder/TAppEncTop.cpp



