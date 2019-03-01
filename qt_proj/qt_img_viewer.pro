#QT										+= core gui widgets
QT										+= core gui widgets
#greaterThan(QT_MAJOR_VERSION, 4):	QT	+= widgets
TEMPLATE 								= app
TARGET 									= qt_img_viewer
INCLUDEPATH 							+= .

SOURCES									+= qt_img_viewer.cpp
