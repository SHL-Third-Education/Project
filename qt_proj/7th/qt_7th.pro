#QT										+= core gui widgets
QT										+= core gui widgets
#greaterThan(QT_MAJOR_VERSION, 4):	QT	+= widgets
TEMPLATE 								= app
TARGET 									= qt_7th
INCLUDEPATH 							+= .

HEADERS									+= CustomWidget.h
SOURCES									+= CustomWidget.cpp qt_7th.cpp