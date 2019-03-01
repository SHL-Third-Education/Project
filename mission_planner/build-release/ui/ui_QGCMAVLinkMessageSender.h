/********************************************************************************
** Form generated from reading UI file 'QGCMAVLinkMessageSender.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QGCMAVLINKMESSAGESENDER_H
#define UI_QGCMAVLINKMESSAGESENDER_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QTreeWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QGCMAVLinkMessageSender
{
public:
    QGridLayout *gridLayout;
    QTreeWidget *treeWidget;
    QSpinBox *messageIdSpinBox;
    QPushButton *sendButton;

    void setupUi(QWidget *QGCMAVLinkMessageSender)
    {
        if (QGCMAVLinkMessageSender->objectName().isEmpty())
            QGCMAVLinkMessageSender->setObjectName(QStringLiteral("QGCMAVLinkMessageSender"));
        QGCMAVLinkMessageSender->resize(400, 300);
        gridLayout = new QGridLayout(QGCMAVLinkMessageSender);
        gridLayout->setContentsMargins(6, 6, 6, 6);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        treeWidget = new QTreeWidget(QGCMAVLinkMessageSender);
        QTreeWidgetItem *__qtreewidgetitem = new QTreeWidgetItem();
        __qtreewidgetitem->setText(0, QStringLiteral("1"));
        treeWidget->setHeaderItem(__qtreewidgetitem);
        treeWidget->setObjectName(QStringLiteral("treeWidget"));

        gridLayout->addWidget(treeWidget, 0, 0, 1, 2);

        messageIdSpinBox = new QSpinBox(QGCMAVLinkMessageSender);
        messageIdSpinBox->setObjectName(QStringLiteral("messageIdSpinBox"));

        gridLayout->addWidget(messageIdSpinBox, 1, 0, 1, 1);

        sendButton = new QPushButton(QGCMAVLinkMessageSender);
        sendButton->setObjectName(QStringLiteral("sendButton"));

        gridLayout->addWidget(sendButton, 1, 1, 1, 1);


        retranslateUi(QGCMAVLinkMessageSender);

        QMetaObject::connectSlotsByName(QGCMAVLinkMessageSender);
    } // setupUi

    void retranslateUi(QWidget *QGCMAVLinkMessageSender)
    {
        QGCMAVLinkMessageSender->setWindowTitle(QApplication::translate("QGCMAVLinkMessageSender", "Form", 0));
        sendButton->setText(QApplication::translate("QGCMAVLinkMessageSender", "Send Message", 0));
    } // retranslateUi

};

namespace Ui {
    class QGCMAVLinkMessageSender: public Ui_QGCMAVLinkMessageSender {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QGCMAVLINKMESSAGESENDER_H
