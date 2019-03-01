/********************************************************************************
** Form generated from reading UI file 'QMap3D.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QMAP3D_H
#define UI_QMAP3D_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>
#include "QOSGWidget.h"

QT_BEGIN_NAMESPACE

class Ui_QMap3D
{
public:
    QGridLayout *gridLayout;
    QPushButton *pushButton_map;
    ViewerQOSG *graphicsView;
    QPushButton *pushButton_vehicle;

    void setupUi(QWidget *QMap3D)
    {
        if (QMap3D->objectName().isEmpty())
            QMap3D->setObjectName(QStringLiteral("QMap3D"));
        QMap3D->resize(548, 211);
        gridLayout = new QGridLayout(QMap3D);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        pushButton_map = new QPushButton(QMap3D);
        pushButton_map->setObjectName(QStringLiteral("pushButton_map"));

        gridLayout->addWidget(pushButton_map, 1, 0, 1, 1);

        graphicsView = new ViewerQOSG(QMap3D);
        graphicsView->setObjectName(QStringLiteral("graphicsView"));

        gridLayout->addWidget(graphicsView, 0, 0, 1, 2);

        pushButton_vehicle = new QPushButton(QMap3D);
        pushButton_vehicle->setObjectName(QStringLiteral("pushButton_vehicle"));

        gridLayout->addWidget(pushButton_vehicle, 1, 1, 1, 1);


        retranslateUi(QMap3D);

        QMetaObject::connectSlotsByName(QMap3D);
    } // setupUi

    void retranslateUi(QWidget *QMap3D)
    {
        QMap3D->setWindowTitle(QApplication::translate("QMap3D", "Form", 0));
        pushButton_map->setText(QApplication::translate("QMap3D", "Map", 0));
        pushButton_vehicle->setText(QApplication::translate("QMap3D", "Vehicle", 0));
    } // retranslateUi

};

namespace Ui {
    class QMap3D: public Ui_QMap3D {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QMAP3D_H
