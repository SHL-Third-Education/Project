#QT										+= core gui widgets
CONFIG									+= qwt
QT										+= core gui
greaterThan(QT_MAJOR_VERSION, 4):	QT	+= widgets
TEMPLATE 								= app
TARGET 									= qt_18th
INCLUDEPATH 							+= . /usr/local/qwt-6.1.3/include /usr/local/qwt-6.1.3
include(/usr/local/qwt-6.1.3/features/qwt.prf)
QMAKE_CXXFLAGS							+= -std=c++11
#CXXFLAGS								+= -std=c++11
LIBS									+= -L/usr/local/qwt-6.1.3/lib -lqwt /usr/local/qwt-6.1.3/lib/libqwt.so.6
DEPENDPATH								+= /usr/local/qwt-6.1.3/include

HEADERS									+= CustomWidget.h
SOURCES									+= CustomWidget.cpp qt_18th.cpp
