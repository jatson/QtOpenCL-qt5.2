TEMPLATE = app
QT += testlib
CONFIG += unittest \
    warn_on
SOURCES += tst_blur.cpp \
    pixmapfilterwidget.cpp \
    graphicseffectview.cpp \
    clwidget.cpp
RESOURCES += blur.qrc \
    images/images.qrc
LIBS += -L../../../lib \
    -L../../../bin
include(../../../src/opencl/opencl_dep.pri)
OTHER_FILES += blur.cl
HEADERS += pixmapfilterwidget.h \
    graphicseffectview.h \
    clwidget.h

win32: LIBS += -L$$PWD/../../../lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/../../../lib/x86
DEPENDPATH += $$PWD/../../../lib/x86
