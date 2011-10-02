#-------------------------------------------------
#
# Project created by QtCreator 2011-10-02T12:46:31
#
#-------------------------------------------------

QT       += core

TARGET = OgreSample
CONFIG   += console

TEMPLATE = app

SOURCES += \
    TutorialApplication.cpp \
    BaseApplication.cpp

HEADERS += \
    TutorialApplication.h \
    BaseApplication.h

mac {

# boostの読み込み
INCLUDEPATH += /Developer/Applications/OgreSDK/boost_1_46_1

LIBS += -L/Developer/Applications/OgreSDK/boost_1_46_1/lib \
    -lboost_date_time-xgcc42-mt-1_46_1 \
    -lboost_thread-xgcc42-mt-1_46_1

# OgreとOISのヘッダファイル
INCLUDEPATH += /Developer/Applications/OgreSDK/include/OGRE \
    /Developer/Applications/OgreSDK/include/OIS

# Ogre本体を読み込む
QMAKE_LFLAGS += -F/Developer/Applications/OgreSDK/lib/release/

LIBS += -framework Cg \
-framework Ogre \
-framework IOKit \
-framework Cocoa

# OISを読み込む
LIBS += "/Developer/Applications/OgreSDK/lib/release/libOIS.a"

}
