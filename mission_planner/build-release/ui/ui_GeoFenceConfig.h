/********************************************************************************
** Form generated from reading UI file 'GeoFenceConfig.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GEOFENCECONFIG_H
#define UI_GEOFENCECONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GeoFenceConfig
{
public:
    QLabel *label;
    QWidget *layoutWidget;
    QVBoxLayout *verticalLayout;
    QFormLayout *formLayout;
    QCheckBox *enableCheckBox;
    QLabel *label_2;
    QComboBox *typeComboBox;
    QLabel *label_3;
    QComboBox *actionComboBox;
    QLabel *label_4;
    QDoubleSpinBox *maxAltSpinBox;
    QLabel *label_5;
    QDoubleSpinBox *radiusSpinBox;
    QLabel *label_6;
    QDoubleSpinBox *rtlAltSpinBox;
    QLabel *label_8;
    QDoubleSpinBox *finalAltSpinBox;
    QLabel *label_7;
    QLabel *label_9;

    void setupUi(QWidget *GeoFenceConfig)
    {
        if (GeoFenceConfig->objectName().isEmpty())
            GeoFenceConfig->setObjectName(QStringLiteral("GeoFenceConfig"));
        GeoFenceConfig->resize(438, 335);
        label = new QLabel(GeoFenceConfig);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(20, 10, 105, 24));
        layoutWidget = new QWidget(GeoFenceConfig);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(39, 49, 376, 279));
        verticalLayout = new QVBoxLayout(layoutWidget);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        formLayout = new QFormLayout();
        formLayout->setObjectName(QStringLiteral("formLayout"));
        formLayout->setFieldGrowthPolicy(QFormLayout::FieldsStayAtSizeHint);
        enableCheckBox = new QCheckBox(layoutWidget);
        enableCheckBox->setObjectName(QStringLiteral("enableCheckBox"));

        formLayout->setWidget(1, QFormLayout::FieldRole, enableCheckBox);

        label_2 = new QLabel(layoutWidget);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout->setWidget(2, QFormLayout::LabelRole, label_2);

        typeComboBox = new QComboBox(layoutWidget);
        typeComboBox->setObjectName(QStringLiteral("typeComboBox"));
        typeComboBox->setMinimumSize(QSize(175, 0));

        formLayout->setWidget(2, QFormLayout::FieldRole, typeComboBox);

        label_3 = new QLabel(layoutWidget);
        label_3->setObjectName(QStringLiteral("label_3"));

        formLayout->setWidget(3, QFormLayout::LabelRole, label_3);

        actionComboBox = new QComboBox(layoutWidget);
        actionComboBox->setObjectName(QStringLiteral("actionComboBox"));
        actionComboBox->setMinimumSize(QSize(175, 0));

        formLayout->setWidget(3, QFormLayout::FieldRole, actionComboBox);

        label_4 = new QLabel(layoutWidget);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout->setWidget(4, QFormLayout::LabelRole, label_4);

        maxAltSpinBox = new QDoubleSpinBox(layoutWidget);
        maxAltSpinBox->setObjectName(QStringLiteral("maxAltSpinBox"));
        maxAltSpinBox->setAlignment(Qt::AlignCenter);
        maxAltSpinBox->setMaximum(999.99);

        formLayout->setWidget(4, QFormLayout::FieldRole, maxAltSpinBox);

        label_5 = new QLabel(layoutWidget);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout->setWidget(5, QFormLayout::LabelRole, label_5);

        radiusSpinBox = new QDoubleSpinBox(layoutWidget);
        radiusSpinBox->setObjectName(QStringLiteral("radiusSpinBox"));
        radiusSpinBox->setAlignment(Qt::AlignCenter);
        radiusSpinBox->setMaximum(999.99);

        formLayout->setWidget(5, QFormLayout::FieldRole, radiusSpinBox);

        label_6 = new QLabel(layoutWidget);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout->setWidget(6, QFormLayout::LabelRole, label_6);

        rtlAltSpinBox = new QDoubleSpinBox(layoutWidget);
        rtlAltSpinBox->setObjectName(QStringLiteral("rtlAltSpinBox"));
        rtlAltSpinBox->setAlignment(Qt::AlignCenter);
        rtlAltSpinBox->setMaximum(999.99);

        formLayout->setWidget(6, QFormLayout::FieldRole, rtlAltSpinBox);

        label_8 = new QLabel(layoutWidget);
        label_8->setObjectName(QStringLiteral("label_8"));

        formLayout->setWidget(7, QFormLayout::LabelRole, label_8);

        finalAltSpinBox = new QDoubleSpinBox(layoutWidget);
        finalAltSpinBox->setObjectName(QStringLiteral("finalAltSpinBox"));
        finalAltSpinBox->setAlignment(Qt::AlignCenter);
        finalAltSpinBox->setMaximum(999.99);

        formLayout->setWidget(7, QFormLayout::FieldRole, finalAltSpinBox);

        label_7 = new QLabel(layoutWidget);
        label_7->setObjectName(QStringLiteral("label_7"));

        formLayout->setWidget(8, QFormLayout::FieldRole, label_7);

        label_9 = new QLabel(layoutWidget);
        label_9->setObjectName(QStringLiteral("label_9"));

        formLayout->setWidget(9, QFormLayout::FieldRole, label_9);


        verticalLayout->addLayout(formLayout);


        retranslateUi(GeoFenceConfig);

        QMetaObject::connectSlotsByName(GeoFenceConfig);
    } // setupUi

    void retranslateUi(QWidget *GeoFenceConfig)
    {
        GeoFenceConfig->setWindowTitle(QApplication::translate("GeoFenceConfig", "Form", 0));
        label->setText(QApplication::translate("GeoFenceConfig", "<h2>Geo Fence</h2>", 0));
        enableCheckBox->setText(QApplication::translate("GeoFenceConfig", "Enable", 0));
        label_2->setText(QApplication::translate("GeoFenceConfig", "Type", 0));
        typeComboBox->clear();
        typeComboBox->insertItems(0, QStringList()
         << QApplication::translate("GeoFenceConfig", "None", 0)
         << QApplication::translate("GeoFenceConfig", "Altitude", 0)
         << QApplication::translate("GeoFenceConfig", "Circle", 0)
         << QApplication::translate("GeoFenceConfig", "Altitude & Circle", 0)
        );
        label_3->setText(QApplication::translate("GeoFenceConfig", "Action", 0));
        actionComboBox->clear();
        actionComboBox->insertItems(0, QStringList()
         << QApplication::translate("GeoFenceConfig", "Report", 0)
         << QApplication::translate("GeoFenceConfig", "RTL or LAND", 0)
        );
        label_4->setText(QApplication::translate("GeoFenceConfig", "Max Alt", 0));
        maxAltSpinBox->setSuffix(QApplication::translate("GeoFenceConfig", "m", 0));
        label_5->setText(QApplication::translate("GeoFenceConfig", "Radius", 0));
        radiusSpinBox->setSuffix(QApplication::translate("GeoFenceConfig", "m", 0));
        label_6->setText(QApplication::translate("GeoFenceConfig", "RTL Alt", 0));
        rtlAltSpinBox->setSuffix(QApplication::translate("GeoFenceConfig", "m", 0));
        label_8->setText(QApplication::translate("GeoFenceConfig", "final RTL Alt", 0));
        finalAltSpinBox->setSuffix(QApplication::translate("GeoFenceConfig", "m", 0));
        label_7->setText(QApplication::translate("GeoFenceConfig", "0 for RTL ALT = return at current alttiude", 0));
        label_9->setText(QApplication::translate("GeoFenceConfig", "0 for final RTL = LAND on home reached", 0));
    } // retranslateUi

};

namespace Ui {
    class GeoFenceConfig: public Ui_GeoFenceConfig {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GEOFENCECONFIG_H
