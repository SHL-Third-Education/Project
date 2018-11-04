#ifndef __CUSTOM_WIDGET__
#define __CUSTOM_WIDGET__

#include <qwt_dial.h>

class CustomWidget : public QwtDial
{
    Q_OBJECT
public:
    CustomWidget(QWidget *parent = NULL);

protected:
    void paintEvent(QPaintEvent *event);
};

#endif
