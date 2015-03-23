TEMPLATE = subdirs
SUBDIRS = src examples demos util tests
CONFIG += ordered

include(doc/doc.pri)

win32: LIBS += -L$$PWD/lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/lib/x86
DEPENDPATH += $$PWD/lib/x86
