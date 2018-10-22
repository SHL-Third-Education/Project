/********************************************************************************
** Form generated from reading UI file 'RadioCalibrationConfig.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_RADIOCALIBRATIONCONFIG_H
#define UI_RADIOCALIBRATIONCONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "ui/designer/QGCRadioChannelDisplay.h"

QT_BEGIN_NAMESPACE

class Ui_RadioCalibrationConfig
{
public:
    QVBoxLayout *verticalLayout_4;
    QVBoxLayout *verticalLayout_3;
    QLabel *label;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout_15;
    QHBoxLayout *horizontalLayout_10;
    QSpacerItem *horizontalSpacer_2;
    QGCRadioChannelDisplay *rollWidget;
    QCheckBox *revRollCheckBox;
    QSpacerItem *horizontalSpacer_6;
    QHBoxLayout *horizontalLayout_13;
    QCheckBox *revLeftVCheckBox;
    QGCRadioChannelDisplay *leftVWidget;
    QSpacerItem *horizontalSpacer_11;
    QCheckBox *revRightVCheckBox;
    QGCRadioChannelDisplay *rightVWidget;
    QSpacerItem *horizontalSpacer_10;
    QVBoxLayout *verticalLayout_6;
    QGCRadioChannelDisplay *radio5Widget;
    QGCRadioChannelDisplay *radio6Widget;
    QGCRadioChannelDisplay *radio7Widget;
    QGCRadioChannelDisplay *radio8Widget;
    QHBoxLayout *horizontalLayout_12;
    QSpacerItem *horizontalSpacer_3;
    QGCRadioChannelDisplay *yawWidget;
    QCheckBox *revYawCheckBox;
    QSpacerItem *horizontalSpacer_7;
    QGroupBox *elevonConfigGroupBox;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QCheckBox *elevonCheckBox;
    QLabel *label_2;
    QComboBox *elevonOutputComboBox;
    QCheckBox *elevonRevCheckBox;
    QCheckBox *elevonCh1CheckBox;
    QCheckBox *elevonCh2CheckBox;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_3;
    QComboBox *modeComboBox;
    QSpacerItem *horizontalSpacer;
    QPushButton *calibrateButton;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *RadioCalibrationConfig)
    {
        if (RadioCalibrationConfig->objectName().isEmpty())
            RadioCalibrationConfig->setObjectName(QStringLiteral("RadioCalibrationConfig"));
        RadioCalibrationConfig->resize(626, 694);
        RadioCalibrationConfig->setMaximumSize(QSize(626, 16777215));
        verticalLayout_4 = new QVBoxLayout(RadioCalibrationConfig);
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        label = new QLabel(RadioCalibrationConfig);
        label->setObjectName(QStringLiteral("label"));
        label->setMaximumSize(QSize(731, 24));
        label->setScaledContents(false);

        verticalLayout_3->addWidget(label);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout_15 = new QVBoxLayout();
        verticalLayout_15->setObjectName(QStringLiteral("verticalLayout_15"));
        verticalLayout_15->setSizeConstraint(QLayout::SetMinAndMaxSize);
        horizontalLayout_10 = new QHBoxLayout();
        horizontalLayout_10->setObjectName(QStringLiteral("horizontalLayout_10"));
        horizontalSpacer_2 = new QSpacerItem(52, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_10->addItem(horizontalSpacer_2);

        rollWidget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        rollWidget->setObjectName(QStringLiteral("rollWidget"));
        rollWidget->setMinimumSize(QSize(258, 60));
        rollWidget->setMaximumSize(QSize(258, 60));
        rollWidget->setStyleSheet(QLatin1String("QGCRadioChannelDisplay{\n"
"qlineargradient(spread:pad, x1:0.473, y1:0, x2:0.443, y2:0.994318, stop:0 rgba(0, 118, 0, 255), stop:1 rgba(188, 255, 192, 255))qlineargradient(spread:pad, x1:0, y1:0.494, x2:0.995074, y2:0.511, stop:0 rgba(0, 118, 0, 255), stop:1 rgba(188, 255, 192, 255))\n"
"}"));

        horizontalLayout_10->addWidget(rollWidget);

        revRollCheckBox = new QCheckBox(RadioCalibrationConfig);
        revRollCheckBox->setObjectName(QStringLiteral("revRollCheckBox"));

        horizontalLayout_10->addWidget(revRollCheckBox);

        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_10->addItem(horizontalSpacer_6);


        verticalLayout_15->addLayout(horizontalLayout_10);

        horizontalLayout_13 = new QHBoxLayout();
        horizontalLayout_13->setObjectName(QStringLiteral("horizontalLayout_13"));
        revLeftVCheckBox = new QCheckBox(RadioCalibrationConfig);
        revLeftVCheckBox->setObjectName(QStringLiteral("revLeftVCheckBox"));

        horizontalLayout_13->addWidget(revLeftVCheckBox);

        leftVWidget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        leftVWidget->setObjectName(QStringLiteral("leftVWidget"));
        leftVWidget->setMinimumSize(QSize(50, 150));
        leftVWidget->setMaximumSize(QSize(50, 200));

        horizontalLayout_13->addWidget(leftVWidget);

        horizontalSpacer_11 = new QSpacerItem(100, 20, QSizePolicy::Maximum, QSizePolicy::Minimum);

        horizontalLayout_13->addItem(horizontalSpacer_11);

        revRightVCheckBox = new QCheckBox(RadioCalibrationConfig);
        revRightVCheckBox->setObjectName(QStringLiteral("revRightVCheckBox"));

        horizontalLayout_13->addWidget(revRightVCheckBox);

        rightVWidget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        rightVWidget->setObjectName(QStringLiteral("rightVWidget"));
        rightVWidget->setMinimumSize(QSize(50, 150));
        rightVWidget->setMaximumSize(QSize(50, 200));

        horizontalLayout_13->addWidget(rightVWidget);

        horizontalSpacer_10 = new QSpacerItem(30, 20, QSizePolicy::Maximum, QSizePolicy::Minimum);

        horizontalLayout_13->addItem(horizontalSpacer_10);

        verticalLayout_6 = new QVBoxLayout();
        verticalLayout_6->setObjectName(QStringLiteral("verticalLayout_6"));
        radio5Widget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        radio5Widget->setObjectName(QStringLiteral("radio5Widget"));
        radio5Widget->setMinimumSize(QSize(250, 40));
        radio5Widget->setMaximumSize(QSize(250, 40));

        verticalLayout_6->addWidget(radio5Widget);

        radio6Widget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        radio6Widget->setObjectName(QStringLiteral("radio6Widget"));
        radio6Widget->setMinimumSize(QSize(250, 40));
        radio6Widget->setMaximumSize(QSize(250, 40));

        verticalLayout_6->addWidget(radio6Widget);

        radio7Widget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        radio7Widget->setObjectName(QStringLiteral("radio7Widget"));
        radio7Widget->setMinimumSize(QSize(250, 40));
        radio7Widget->setMaximumSize(QSize(250, 40));

        verticalLayout_6->addWidget(radio7Widget);

        radio8Widget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        radio8Widget->setObjectName(QStringLiteral("radio8Widget"));
        radio8Widget->setMinimumSize(QSize(250, 40));
        radio8Widget->setMaximumSize(QSize(250, 40));

        verticalLayout_6->addWidget(radio8Widget);


        horizontalLayout_13->addLayout(verticalLayout_6);

        horizontalLayout_13->setStretch(1, 1);
        horizontalLayout_13->setStretch(2, 2);
        horizontalLayout_13->setStretch(4, 2);
        horizontalLayout_13->setStretch(5, 2);

        verticalLayout_15->addLayout(horizontalLayout_13);

        horizontalLayout_12 = new QHBoxLayout();
        horizontalLayout_12->setObjectName(QStringLiteral("horizontalLayout_12"));
        horizontalSpacer_3 = new QSpacerItem(52, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_12->addItem(horizontalSpacer_3);

        yawWidget = new QGCRadioChannelDisplay(RadioCalibrationConfig);
        yawWidget->setObjectName(QStringLiteral("yawWidget"));
        yawWidget->setMinimumSize(QSize(258, 60));
        yawWidget->setMaximumSize(QSize(258, 60));

        horizontalLayout_12->addWidget(yawWidget);

        revYawCheckBox = new QCheckBox(RadioCalibrationConfig);
        revYawCheckBox->setObjectName(QStringLiteral("revYawCheckBox"));

        horizontalLayout_12->addWidget(revYawCheckBox);

        horizontalSpacer_7 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_12->addItem(horizontalSpacer_7);


        verticalLayout_15->addLayout(horizontalLayout_12);


        verticalLayout_2->addLayout(verticalLayout_15);

        elevonConfigGroupBox = new QGroupBox(RadioCalibrationConfig);
        elevonConfigGroupBox->setObjectName(QStringLiteral("elevonConfigGroupBox"));
        elevonConfigGroupBox->setMaximumSize(QSize(16777215, 69));
        verticalLayout = new QVBoxLayout(elevonConfigGroupBox);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        elevonCheckBox = new QCheckBox(elevonConfigGroupBox);
        elevonCheckBox->setObjectName(QStringLiteral("elevonCheckBox"));

        horizontalLayout->addWidget(elevonCheckBox);

        label_2 = new QLabel(elevonConfigGroupBox);
        label_2->setObjectName(QStringLiteral("label_2"));

        horizontalLayout->addWidget(label_2);

        elevonOutputComboBox = new QComboBox(elevonConfigGroupBox);
        elevonOutputComboBox->setObjectName(QStringLiteral("elevonOutputComboBox"));

        horizontalLayout->addWidget(elevonOutputComboBox);

        elevonRevCheckBox = new QCheckBox(elevonConfigGroupBox);
        elevonRevCheckBox->setObjectName(QStringLiteral("elevonRevCheckBox"));

        horizontalLayout->addWidget(elevonRevCheckBox);

        elevonCh1CheckBox = new QCheckBox(elevonConfigGroupBox);
        elevonCh1CheckBox->setObjectName(QStringLiteral("elevonCh1CheckBox"));

        horizontalLayout->addWidget(elevonCh1CheckBox);

        elevonCh2CheckBox = new QCheckBox(elevonConfigGroupBox);
        elevonCh2CheckBox->setObjectName(QStringLiteral("elevonCh2CheckBox"));

        horizontalLayout->addWidget(elevonCh2CheckBox);


        verticalLayout->addLayout(horizontalLayout);


        verticalLayout_2->addWidget(elevonConfigGroupBox);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        label_3 = new QLabel(RadioCalibrationConfig);
        label_3->setObjectName(QStringLiteral("label_3"));

        horizontalLayout_2->addWidget(label_3);

        modeComboBox = new QComboBox(RadioCalibrationConfig);
        modeComboBox->setObjectName(QStringLiteral("modeComboBox"));

        horizontalLayout_2->addWidget(modeComboBox);

        horizontalSpacer = new QSpacerItem(558, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        calibrateButton = new QPushButton(RadioCalibrationConfig);
        calibrateButton->setObjectName(QStringLiteral("calibrateButton"));

        horizontalLayout_2->addWidget(calibrateButton);


        verticalLayout_2->addLayout(horizontalLayout_2);


        verticalLayout_3->addLayout(verticalLayout_2);


        verticalLayout_4->addLayout(verticalLayout_3);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_4->addItem(verticalSpacer);


        retranslateUi(RadioCalibrationConfig);

        QMetaObject::connectSlotsByName(RadioCalibrationConfig);
    } // setupUi

    void retranslateUi(QWidget *RadioCalibrationConfig)
    {
        RadioCalibrationConfig->setWindowTitle(QApplication::translate("RadioCalibrationConfig", "Form", 0));
        label->setText(QApplication::translate("RadioCalibrationConfig", "<h2>Radio Calibration</h2>", 0));
        revRollCheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Rev", 0));
        revLeftVCheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Rev", 0));
        revRightVCheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Rev", 0));
        revYawCheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Rev", 0));
        elevonConfigGroupBox->setTitle(QApplication::translate("RadioCalibrationConfig", "Elevon Config", 0));
        elevonCheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Elevons", 0));
        label_2->setText(QApplication::translate("RadioCalibrationConfig", "Elevon Output", 0));
        elevonRevCheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Elevons Rev", 0));
        elevonCh1CheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Elevons CH1 Rev", 0));
        elevonCh2CheckBox->setText(QApplication::translate("RadioCalibrationConfig", "Elevons CH2 Rev", 0));
        label_3->setText(QApplication::translate("RadioCalibrationConfig", "RC Radio", 0));
        calibrateButton->setText(QApplication::translate("RadioCalibrationConfig", "Calibrate", 0));
    } // retranslateUi

};

namespace Ui {
    class RadioCalibrationConfig: public Ui_RadioCalibrationConfig {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_RADIOCALIBRATIONCONFIG_H
