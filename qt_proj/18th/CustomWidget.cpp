#include <QPainter>

#include "CustomWidget.h"

CustomWidget::CustomWidget(QWidget *parent) : QwtDial(parent) { }

void CustomWidget::paintEvent(QPaintEvent *event)
{
    QwtDial::paintEvent(event);
    QPainter painter(this);
    painter.setPen(Qt::black);
    QFont font;

    font.setPointSize(11);
    painter.setFont(font);

    QString text = QString("%1 km/h").arg(value());

    auto c = rect().center();
    auto Size = painter.fontMetrics().size(Qt::TextSingleLine, text);

    painter.drawText(QPointF(c.x() -Size.width()/2, c.y()+5*Size.height()), text);
}
