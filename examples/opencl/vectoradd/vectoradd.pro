TEMPLATE = app
TARGET = vectoradd
CONFIG += qt debug warn_on
SOURCES = vectoradd.cpp
RESOURCES = vectoradd.qrc
LIBS += -L../../../lib -L../../../bin

include(../../../src/opencl/opencl_dep.pri)

win32: LIBS += -L$$PWD/../../../lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/../../../lib/x86
DEPENDPATH += $$PWD/../../../lib/x86
