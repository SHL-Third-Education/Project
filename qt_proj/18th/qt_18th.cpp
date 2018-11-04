#include <QApplication>
#include <qwt_dial_needle.h>

#include "CustomWidget.h"

int main(int argc, char **argv)
{
	QApplication app(argc, argv);

	CustomWidget widget;
	widget.setScaleArc(30, 330);
	widget.setLineWidth(15);
	widget.setWrapping(false);

	QwtDialSimpleNeedle *nd = new QwtDialSimpleNeedle(
				QwtDialSimpleNeedle::Arrow, Qt::white, Qt::red);

    widget.setNeedle(nd);
    widget.setWindowTitle("Custom QwtDial");

    widget.show();

	return app.exec();
}
