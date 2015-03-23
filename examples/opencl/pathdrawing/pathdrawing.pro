TEMPLATE = app
TARGET = pathdrawing
QT += widgets
DEPENDPATH += .
INCLUDEPATH += .

# Input
SOURCES += main.cpp \
           pathwidget.cpp
HEADERS += pathwidget.h
RESOURCES += pathdrawing.qrc

LIBS += -L../../../lib -L../../../bin
include(../../../src/opencl/opencl_dep.pri)

win32: LIBS += -L$$PWD/../../../lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/../../../lib/x86
DEPENDPATH += $$PWD/../../../lib/x86
