#QT										+= core gui widgets
QT										+= core gui widgets
#greaterThan(QT_MAJOR_VERSION, 4):	QT	+= widgets
TEMPLATE 								= app
TARGET 									= qt_third
INCLUDEPATH 							+= .

SOURCES									+= qt_third.cpp
