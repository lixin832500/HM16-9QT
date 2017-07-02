# ----------------------------------------------------

# ------------------------------------------------------

TEMPLATE = lib

CONFIG(debug, debug|release){
    TARGET = TLibEncoderd
}
CONFIG(release, debug|release){
    TARGET = TLibEncoder
}
CONFIG += staticlib
DEFINES += _CRT_SECURE_NO_WARNINGS

INCLUDEPATH += ../../source/Lib
msvc: INCLUDEPATH += ../../compat/msvc
DEPENDPATH += .
DESTDIR = $${OUT_PWD}/..

HEADERS += \
    ../../source/Lib/TLibEncoder/AnnexBwrite.h \
    ../../source/Lib/TLibEncoder/NALwrite.h \
    ../../source/Lib/TLibEncoder/SEIEncoder.h \
    ../../source/Lib/TLibEncoder/SEIwrite.h \
    ../../source/Lib/TLibEncoder/SyntaxElementWriter.h \
    ../../source/Lib/TLibEncoder/TEncAnalyze.h \
    ../../source/Lib/TLibEncoder/TEncBinCoder.h \
    ../../source/Lib/TLibEncoder/TEncBinCoderCABAC.h \
    ../../source/Lib/TLibEncoder/TEncBinCoderCABACCounter.h \
    ../../source/Lib/TLibEncoder/TEncCavlc.h \
    ../../source/Lib/TLibEncoder/TEncCfg.h \
    ../../source/Lib/TLibEncoder/TEncCu.h \
    ../../source/Lib/TLibEncoder/TEncEntropy.h \
    ../../source/Lib/TLibEncoder/TEncGOP.h \
    ../../source/Lib/TLibEncoder/TEncPic.h \
    ../../source/Lib/TLibEncoder/TEncPreanalyzer.h \
    ../../source/Lib/TLibEncoder/TEncRateCtrl.h \
    ../../source/Lib/TLibEncoder/TEncSampleAdaptiveOffset.h \
    ../../source/Lib/TLibEncoder/TEncSbac.h \
    ../../source/Lib/TLibEncoder/TEncSearch.h \
    ../../source/Lib/TLibEncoder/TEncSlice.h \
    ../../source/Lib/TLibEncoder/TEncTop.h \
    ../../source/Lib/TLibEncoder/WeightPredAnalysis.h

SOURCES += \
    ../../source/Lib/TLibEncoder/NALwrite.cpp \
    ../../source/Lib/TLibEncoder/SEIEncoder.cpp \
    ../../source/Lib/TLibEncoder/SEIwrite.cpp \
    ../../source/Lib/TLibEncoder/SyntaxElementWriter.cpp \
    ../../source/Lib/TLibEncoder/TEncBinCoderCABAC.cpp \
    ../../source/Lib/TLibEncoder/TEncBinCoderCABACCounter.cpp \
    ../../source/Lib/TLibEncoder/TEncCavlc.cpp \
    ../../source/Lib/TLibEncoder/TEncCu.cpp \
    ../../source/Lib/TLibEncoder/TEncEntropy.cpp \
    ../../source/Lib/TLibEncoder/TEncGOP.cpp \
    ../../source/Lib/TLibEncoder/TEncPic.cpp \
    ../../source/Lib/TLibEncoder/TEncPreanalyzer.cpp \
    ../../source/Lib/TLibEncoder/TEncRateCtrl.cpp \
    ../../source/Lib/TLibEncoder/TEncSampleAdaptiveOffset.cpp \
    ../../source/Lib/TLibEncoder/TEncSbac.cpp \
    ../../source/Lib/TLibEncoder/TEncSearch.cpp \
    ../../source/Lib/TLibEncoder/TEncSlice.cpp \
    ../../source/Lib/TLibEncoder/TEncTop.cpp \
    ../../source/Lib/TLibEncoder/WeightPredAnalysis.cpp
