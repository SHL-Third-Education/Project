/********************************************************************************
** Form generated from reading UI file 'AdvParameterList.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ADVPARAMETERLIST_H
#define UI_ADVPARAMETERLIST_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_AdvParameterList
{
public:
    QHBoxLayout *horizontalLayout_3;
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label;
    QSpacerItem *horizontalSpacer;
    QLineEdit *searchLineEdit;
    QToolButton *previousItemButton;
    QToolButton *nextItemButton;
    QHBoxLayout *horizontalLayout;
    QTableWidget *tableWidget;
    QVBoxLayout *verticalLayout;
    QPushButton *loadPushButton;
    QPushButton *savePushButton;
    QPushButton *compareButton;
    QPushButton *downloadRemoteButton;
    QPushButton *resetButton;
    QSpacerItem *verticalSpacer_2;
    QLabel *label_2;
    QPushButton *refreshPushButton;
    QPushButton *writePushButton;
    QProgressBar *paramProgressBar;
    QLabel *progressLabel;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *AdvParameterList)
    {
        if (AdvParameterList->objectName().isEmpty())
            AdvParameterList->setObjectName(QStringLiteral("AdvParameterList"));
        AdvParameterList->resize(997, 396);
        horizontalLayout_3 = new QHBoxLayout(AdvParameterList);
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        label = new QLabel(AdvParameterList);
        label->setObjectName(QStringLiteral("label"));
        label->setMinimumSize(QSize(0, 24));
        label->setMaximumSize(QSize(194, 24));

        horizontalLayout_2->addWidget(label);

        horizontalSpacer = new QSpacerItem(503, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        searchLineEdit = new QLineEdit(AdvParameterList);
        searchLineEdit->setObjectName(QStringLiteral("searchLineEdit"));
        searchLineEdit->setMinimumSize(QSize(181, 0));

        horizontalLayout_2->addWidget(searchLineEdit);

        previousItemButton = new QToolButton(AdvParameterList);
        previousItemButton->setObjectName(QStringLiteral("previousItemButton"));
        previousItemButton->setCursor(QCursor(Qt::ArrowCursor));

        horizontalLayout_2->addWidget(previousItemButton);

        nextItemButton = new QToolButton(AdvParameterList);
        nextItemButton->setObjectName(QStringLiteral("nextItemButton"));

        horizontalLayout_2->addWidget(nextItemButton);


        verticalLayout_2->addLayout(horizontalLayout_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        tableWidget = new QTableWidget(AdvParameterList);
        tableWidget->setObjectName(QStringLiteral("tableWidget"));
        tableWidget->setAlternatingRowColors(true);

        horizontalLayout->addWidget(tableWidget);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        loadPushButton = new QPushButton(AdvParameterList);
        loadPushButton->setObjectName(QStringLiteral("loadPushButton"));

        verticalLayout->addWidget(loadPushButton);

        savePushButton = new QPushButton(AdvParameterList);
        savePushButton->setObjectName(QStringLiteral("savePushButton"));

        verticalLayout->addWidget(savePushButton);

        compareButton = new QPushButton(AdvParameterList);
        compareButton->setObjectName(QStringLiteral("compareButton"));

        verticalLayout->addWidget(compareButton);

        downloadRemoteButton = new QPushButton(AdvParameterList);
        downloadRemoteButton->setObjectName(QStringLiteral("downloadRemoteButton"));

        verticalLayout->addWidget(downloadRemoteButton);

        resetButton = new QPushButton(AdvParameterList);
        resetButton->setObjectName(QStringLiteral("resetButton"));

        verticalLayout->addWidget(resetButton);

        verticalSpacer_2 = new QSpacerItem(20, 25, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_2);

        label_2 = new QLabel(AdvParameterList);
        label_2->setObjectName(QStringLiteral("label_2"));

        verticalLayout->addWidget(label_2, 0, Qt::AlignHCenter);

        refreshPushButton = new QPushButton(AdvParameterList);
        refreshPushButton->setObjectName(QStringLiteral("refreshPushButton"));

        verticalLayout->addWidget(refreshPushButton);

        writePushButton = new QPushButton(AdvParameterList);
        writePushButton->setObjectName(QStringLiteral("writePushButton"));

        verticalLayout->addWidget(writePushButton);

        paramProgressBar = new QProgressBar(AdvParameterList);
        paramProgressBar->setObjectName(QStringLiteral("paramProgressBar"));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(paramProgressBar->sizePolicy().hasHeightForWidth());
        paramProgressBar->setSizePolicy(sizePolicy);
        paramProgressBar->setMinimum(0);
        paramProgressBar->setMaximum(0);
        paramProgressBar->setValue(0);

        verticalLayout->addWidget(paramProgressBar);

        progressLabel = new QLabel(AdvParameterList);
        progressLabel->setObjectName(QStringLiteral("progressLabel"));
        progressLabel->setAlignment(Qt::AlignCenter);

        verticalLayout->addWidget(progressLabel);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);


        horizontalLayout->addLayout(verticalLayout);


        verticalLayout_2->addLayout(horizontalLayout);


        horizontalLayout_3->addLayout(verticalLayout_2);


        retranslateUi(AdvParameterList);

        QMetaObject::connectSlotsByName(AdvParameterList);
    } // setupUi

    void retranslateUi(QWidget *AdvParameterList)
    {
        AdvParameterList->setWindowTitle(QApplication::translate("AdvParameterList", "Form", 0));
        label->setText(QApplication::translate("AdvParameterList", "<h2>Full Parameter List</h2>", 0));
        searchLineEdit->setPlaceholderText(QApplication::translate("AdvParameterList", "Search", 0));
#ifndef QT_NO_TOOLTIP
        previousItemButton->setToolTip(QApplication::translate("AdvParameterList", "Previous", 0));
#endif // QT_NO_TOOLTIP
        previousItemButton->setText(QApplication::translate("AdvParameterList", "<", 0));
#ifndef QT_NO_TOOLTIP
        nextItemButton->setToolTip(QApplication::translate("AdvParameterList", "Next", 0));
#endif // QT_NO_TOOLTIP
        nextItemButton->setText(QApplication::translate("AdvParameterList", ">", 0));
        loadPushButton->setText(QApplication::translate("AdvParameterList", "Load From File", 0));
        loadPushButton->setShortcut(QApplication::translate("AdvParameterList", "Ctrl+L", 0));
        savePushButton->setText(QApplication::translate("AdvParameterList", "Save To File", 0));
        savePushButton->setShortcut(QApplication::translate("AdvParameterList", "Ctrl+S", 0));
        compareButton->setText(QApplication::translate("AdvParameterList", "Compare with File", 0));
        downloadRemoteButton->setText(QApplication::translate("AdvParameterList", "Download Param Files", 0));
        resetButton->setText(QApplication::translate("AdvParameterList", "Reset to Defaults", 0));
        label_2->setText(QApplication::translate("AdvParameterList", "Flight Controller", 0));
        refreshPushButton->setText(QApplication::translate("AdvParameterList", "Refresh", 0));
        refreshPushButton->setShortcut(QApplication::translate("AdvParameterList", "Ctrl+R", 0));
        writePushButton->setText(QApplication::translate("AdvParameterList", "Write To", 0));
        writePushButton->setShortcut(QApplication::translate("AdvParameterList", "Ctrl+W", 0));
#ifndef QT_NO_TOOLTIP
        paramProgressBar->setToolTip(QString());
#endif // QT_NO_TOOLTIP
        paramProgressBar->setFormat(QApplication::translate("AdvParameterList", "%v/%m", 0));
        progressLabel->setText(QApplication::translate("AdvParameterList", "0/?", 0));
    } // retranslateUi

};

namespace Ui {
    class AdvParameterList: public Ui_AdvParameterList {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ADVPARAMETERLIST_H
