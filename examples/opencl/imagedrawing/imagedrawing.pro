TEMPLATE = app
TARGET = imagedrawing
QT += widgets
DEPENDPATH += .
INCLUDEPATH += .

# Input
SOURCES += main.cpp \
           imagewidget.cpp
HEADERS += imagewidget.h
RESOURCES += imagedrawing.qrc

LIBS += -L../../../lib -L../../../bin
include(../../../src/opencl/opencl_dep.pri)

win32: LIBS += -L$$PWD/../../../lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/../../../lib/x86
DEPENDPATH += $$PWD/../../../lib/x86
