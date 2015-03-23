TARGET = mkblurtable
SOURCES += mkblurtable.cpp

win32: LIBS += -L$$PWD/../../lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/../../lib/x86
DEPENDPATH += $$PWD/../../lib/x86
