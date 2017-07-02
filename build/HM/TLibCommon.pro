# ----------------------------------------------------

# ------------------------------------------------------

TEMPLATE = lib
CONFIG(debug, debug|release){
    TARGET = TLibCommond
}
CONFIG(release, debug|release){
    TARGET = TLibCommon
}

CONFIG += staticlib
DEFINES += _CRT_SECURE_NO_WARNINGS
INCLUDEPATH += ../../source/Lib
msvc: INCLUDEPATH += ../../compat/msvc
DEPENDPATH += .
DESTDIR = $${OUT_PWD}/..

HEADERS += \
    ../../source/Lib/TLibCommon/AccessUnit.h \
    ../../source/Lib/TLibCommon/CommonDef.h \
    ../../source/Lib/TLibCommon/ContextModel.h \
    ../../source/Lib/TLibCommon/ContextModel3DBuffer.h \
    ../../source/Lib/TLibCommon/ContextTables.h \
    ../../source/Lib/libmd5/libmd5.h \
    ../../source/Lib/libmd5/MD5.h \
    ../../source/Lib/TLibCommon/Debug.h \
    ../../source/Lib/TLibCommon/NAL.h \
    ../../source/Lib/TLibCommon/SEI.h \
    ../../source/Lib/TLibCommon/TComBitCounter.h \
    ../../source/Lib/TLibCommon/TComBitStream.h \
    ../../source/Lib/TLibCommon/TComCABACTables.h \
    ../../source/Lib/TLibCommon/TComChromaFormat.h \
    ../../source/Lib/TLibCommon/TComCodingStatistics.h \
    ../../source/Lib/TLibCommon/TComDataCU.h \
    ../../source/Lib/TLibCommon/TComInterpolationFilter.h \
    ../../source/Lib/TLibCommon/TComList.h \
    ../../source/Lib/TLibCommon/TComLoopFilter.h \
    ../../source/Lib/TLibCommon/TComMotionInfo.h \
    ../../source/Lib/TLibCommon/TComMv.h \
    ../../source/Lib/TLibCommon/TComPattern.h \
    ../../source/Lib/TLibCommon/TComPic.h \
    ../../source/Lib/TLibCommon/TComPicSym.h \
    ../../source/Lib/TLibCommon/TComPicYuv.h \
    ../../source/Lib/TLibCommon/TComPrediction.h \
    ../../source/Lib/TLibCommon/TComRdCost.h \
    ../../source/Lib/TLibCommon/TComRdCostWeightPrediction.h \
    ../../source/Lib/TLibCommon/TComRectangle.h \
    ../../source/Lib/TLibCommon/TComRom.h \
    ../../source/Lib/TLibCommon/TComSampleAdaptiveOffset.h \
    ../../source/Lib/TLibCommon/TComSlice.h \
    ../../source/Lib/TLibCommon/TComTrQuant.h \
    ../../source/Lib/TLibCommon/TComTU.h \
    ../../source/Lib/TLibCommon/TComWeightPrediction.h \
    ../../source/Lib/TLibCommon/TComYuv.h \
    ../../source/Lib/TLibCommon/TypeDef.h
SOURCES += \
    ../../source/Lib/TLibCommon/ContextModel.cpp \
    ../../source/Lib/TLibCommon/ContextModel3DBuffer.cpp \
    ../../source/Lib/libmd5/libmd5.c \
    ../../source/Lib/TLibCommon/Debug.cpp \
    ../../source/Lib/TLibCommon/SEI.cpp \
    ../../source/Lib/TLibCommon/TComBitStream.cpp \
    ../../source/Lib/TLibCommon/TComCABACTables.cpp \
    ../../source/Lib/TLibCommon/TComChromaFormat.cpp \
    ../../source/Lib/TLibCommon/TComDataCU.cpp \
    ../../source/Lib/TLibCommon/TComInterpolationFilter.cpp \
    ../../source/Lib/TLibCommon/TComLoopFilter.cpp \
    ../../source/Lib/TLibCommon/TComMotionInfo.cpp \
    ../../source/Lib/TLibCommon/TComPattern.cpp \
    ../../source/Lib/TLibCommon/TComPic.cpp \
    ../../source/Lib/TLibCommon/TComPicSym.cpp \
    ../../source/Lib/TLibCommon/TComPicYuv.cpp \
    ../../source/Lib/TLibCommon/TComPicYuvMD5.cpp \
    ../../source/Lib/TLibCommon/TComPrediction.cpp \
    ../../source/Lib/TLibCommon/TComRdCost.cpp \
    ../../source/Lib/TLibCommon/TComRdCostWeightPrediction.cpp \
    ../../source/Lib/TLibCommon/TComRom.cpp \
    ../../source/Lib/TLibCommon/TComSampleAdaptiveOffset.cpp \
    ../../source/Lib/TLibCommon/TComSlice.cpp \
    ../../source/Lib/TLibCommon/TComTrQuant.cpp \
    ../../source/Lib/TLibCommon/TComTU.cpp \
    ../../source/Lib/TLibCommon/TComWeightPrediction.cpp \
    ../../source/Lib/TLibCommon/TComYuv.cpp
