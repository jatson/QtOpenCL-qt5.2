TEMPLATE = subdirs
SUBDIRS += mandelbrot overhead
contains(QT_CONFIG, private_tests): SUBDIRS += blur

win32: LIBS += -L$$PWD/../../lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/../../lib/x86
DEPENDPATH += $$PWD/../../lib/x86
