/********************************************************************************
** Form generated from reading UI file 'MainWindow.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionExit;
    QAction *actionLiftoff;
    QAction *actionLand;
    QAction *actionEmergency_Land;
    QAction *actionEmergency_Kill;
    QAction *actionConfiguration;
    QAction *actionJoystickSettings;
    QAction *actionSimulate;
    QAction *actionShow_Slugs_View;
    QAction *actionJoystick_Settings;
    QAction *actionOnline_Documentation;
    QAction *actionProject_Roadmap_2;
    QAction *actionDeveloper_Credits;
    QAction *actionMissionView;
    QAction *actionEngineersView;
    QAction *actionMavlinkView;
    QAction *actionSelectStylesheet;
    QAction *actionFlightView;
    QAction *actionNewCustomWidget;
    QAction *actionMuteAudioOutput;
    QAction *actionUnconnectedView;
    QAction *actionShutdownMAV;
    QAction *actionReloadStylesheet;
    QAction *actionSettings;
    QAction *actionFullscreen;
    QAction *actionNormal;
    QAction *actionLoadCustomWidgetFile;
    QAction *actionFirmwareUpdateView;
    QAction *actionSimulation_View;
    QAction *actionHardwareConfig;
    QAction *actionAdvanced_Mode;
    QAction *actionSimulationView;
    QAction *actionSoftwareConfig;
    QAction *actionTerminalView;
    QAction *actionDebug_Console;
    QAction *actionAbout_APM_Planner_2_0;
    QAction *actionCheck_For_Updates;
    QAction *actionLoad_tlog;
    QAction *actionSerial;
    QAction *actionTCP;
    QAction *actionUDP;
    QAction *actionTerminalConsole;
    QAction *actionUDPClient;
    QAction *actionDonate;
    QWidget *centralWidget;
    QMenuBar *menuBar;
    QMenu *menuMGround;
    QMenu *menuPreferences;
    QMenu *menuNetwork;
    QMenu *menuAdd_Link;
    QMenu *menuTools;
    QMenu *menuHelp;
    QMenu *menuPerspectives;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1080, 600);
        MainWindow->setMinimumSize(QSize(1020, 576));
        MainWindow->setBaseSize(QSize(1100, 800));
        MainWindow->setMouseTracking(false);
        MainWindow->setStyleSheet(QStringLiteral(""));
        actionExit = new QAction(MainWindow);
        actionExit->setObjectName(QStringLiteral("actionExit"));
        QIcon icon;
        icon.addFile(QStringLiteral(":/files/images/actions/system-log-out.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionExit->setIcon(icon);
        actionLiftoff = new QAction(MainWindow);
        actionLiftoff->setObjectName(QStringLiteral("actionLiftoff"));
        actionLiftoff->setEnabled(true);
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/files/images/control/launch.svg"), QSize(), QIcon::Normal, QIcon::Off);
        icon1.addFile(QStringLiteral(":/files/images/control/launch.svg"), QSize(), QIcon::Normal, QIcon::On);
        actionLiftoff->setIcon(icon1);
        actionLand = new QAction(MainWindow);
        actionLand->setObjectName(QStringLiteral("actionLand"));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/files/images/control/land.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionLand->setIcon(icon2);
        actionEmergency_Land = new QAction(MainWindow);
        actionEmergency_Land->setObjectName(QStringLiteral("actionEmergency_Land"));
        QIcon icon3;
        icon3.addFile(QStringLiteral(":/files/images/actions/process-stop.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionEmergency_Land->setIcon(icon3);
        actionEmergency_Kill = new QAction(MainWindow);
        actionEmergency_Kill->setObjectName(QStringLiteral("actionEmergency_Kill"));
        actionEmergency_Kill->setIcon(icon3);
        actionConfiguration = new QAction(MainWindow);
        actionConfiguration->setObjectName(QStringLiteral("actionConfiguration"));
        QIcon icon4;
        icon4.addFile(QStringLiteral(":/files/images/categories/applications-system.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionConfiguration->setIcon(icon4);
        actionJoystickSettings = new QAction(MainWindow);
        actionJoystickSettings->setObjectName(QStringLiteral("actionJoystickSettings"));
        QIcon icon5;
        icon5.addFile(QStringLiteral(":/files/images/devices/input-gaming.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionJoystickSettings->setIcon(icon5);
        actionJoystickSettings->setVisible(true);
        actionSimulate = new QAction(MainWindow);
        actionSimulate->setObjectName(QStringLiteral("actionSimulate"));
        actionSimulate->setCheckable(true);
        QIcon icon6;
        icon6.addFile(QStringLiteral(":/files/images/control/launch.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionSimulate->setIcon(icon6);
        actionShow_Slugs_View = new QAction(MainWindow);
        actionShow_Slugs_View->setObjectName(QStringLiteral("actionShow_Slugs_View"));
        QIcon icon7;
        icon7.addFile(QStringLiteral(":/files/images/contrib/slugs.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionShow_Slugs_View->setIcon(icon7);
        actionJoystick_Settings = new QAction(MainWindow);
        actionJoystick_Settings->setObjectName(QStringLiteral("actionJoystick_Settings"));
        actionJoystick_Settings->setIcon(icon5);
        actionJoystick_Settings->setVisible(false);
        actionOnline_Documentation = new QAction(MainWindow);
        actionOnline_Documentation->setObjectName(QStringLiteral("actionOnline_Documentation"));
        QIcon icon8;
        icon8.addFile(QStringLiteral(":/files/images/apps/utilities-system-monitor.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionOnline_Documentation->setIcon(icon8);
        actionProject_Roadmap_2 = new QAction(MainWindow);
        actionProject_Roadmap_2->setObjectName(QStringLiteral("actionProject_Roadmap_2"));
        QIcon icon9;
        icon9.addFile(QStringLiteral(":/files/images/status/software-update-available.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionProject_Roadmap_2->setIcon(icon9);
        actionDeveloper_Credits = new QAction(MainWindow);
        actionDeveloper_Credits->setObjectName(QStringLiteral("actionDeveloper_Credits"));
        QIcon icon10;
        icon10.addFile(QStringLiteral(":/files/images/categories/preferences-system.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionDeveloper_Credits->setIcon(icon10);
        actionMissionView = new QAction(MainWindow);
        actionMissionView->setObjectName(QStringLiteral("actionMissionView"));
        actionMissionView->setCheckable(true);
        QIcon icon11;
        icon11.addFile(QStringLiteral(":/files/images/categories/applications-internet.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionMissionView->setIcon(icon11);
        actionEngineersView = new QAction(MainWindow);
        actionEngineersView->setObjectName(QStringLiteral("actionEngineersView"));
        actionEngineersView->setCheckable(true);
        actionEngineersView->setIcon(icon8);
        actionMavlinkView = new QAction(MainWindow);
        actionMavlinkView->setObjectName(QStringLiteral("actionMavlinkView"));
        actionMavlinkView->setCheckable(true);
        QIcon icon12;
        icon12.addFile(QStringLiteral(":/files/images/devices/network-wired.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionMavlinkView->setIcon(icon12);
        actionSelectStylesheet = new QAction(MainWindow);
        actionSelectStylesheet->setObjectName(QStringLiteral("actionSelectStylesheet"));
        actionSelectStylesheet->setIcon(icon11);
        actionFlightView = new QAction(MainWindow);
        actionFlightView->setObjectName(QStringLiteral("actionFlightView"));
        actionFlightView->setCheckable(true);
        QIcon icon13;
        icon13.addFile(QStringLiteral(":/files/images/status/network-wireless-encrypted.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionFlightView->setIcon(icon13);
        actionNewCustomWidget = new QAction(MainWindow);
        actionNewCustomWidget->setObjectName(QStringLiteral("actionNewCustomWidget"));
        actionNewCustomWidget->setIcon(icon8);
        actionMuteAudioOutput = new QAction(MainWindow);
        actionMuteAudioOutput->setObjectName(QStringLiteral("actionMuteAudioOutput"));
        actionMuteAudioOutput->setCheckable(true);
        QIcon icon14;
        icon14.addFile(QStringLiteral(":/files/images/status/audio-volume-high.svg"), QSize(), QIcon::Normal, QIcon::Off);
        icon14.addFile(QStringLiteral(":/files/images/status/audio-volume-muted.svg"), QSize(), QIcon::Normal, QIcon::On);
        icon14.addFile(QStringLiteral(":/files/images/status/audio-volume-muted.svg"), QSize(), QIcon::Active, QIcon::On);
        icon14.addFile(QStringLiteral(":/files/images/status/audio-volume-high.svg"), QSize(), QIcon::Selected, QIcon::Off);
        icon14.addFile(QStringLiteral(":/files/images/status/audio-volume-muted.svg"), QSize(), QIcon::Selected, QIcon::On);
        actionMuteAudioOutput->setIcon(icon14);
        actionUnconnectedView = new QAction(MainWindow);
        actionUnconnectedView->setObjectName(QStringLiteral("actionUnconnectedView"));
        actionUnconnectedView->setCheckable(true);
        QIcon icon15;
        icon15.addFile(QStringLiteral(":/files/images/devices/network-wireless.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionUnconnectedView->setIcon(icon15);
        actionShutdownMAV = new QAction(MainWindow);
        actionShutdownMAV->setObjectName(QStringLiteral("actionShutdownMAV"));
        actionShutdownMAV->setIcon(icon);
        actionReloadStylesheet = new QAction(MainWindow);
        actionReloadStylesheet->setObjectName(QStringLiteral("actionReloadStylesheet"));
        actionSettings = new QAction(MainWindow);
        actionSettings->setObjectName(QStringLiteral("actionSettings"));
        actionFullscreen = new QAction(MainWindow);
        actionFullscreen->setObjectName(QStringLiteral("actionFullscreen"));
        actionNormal = new QAction(MainWindow);
        actionNormal->setObjectName(QStringLiteral("actionNormal"));
        actionLoadCustomWidgetFile = new QAction(MainWindow);
        actionLoadCustomWidgetFile->setObjectName(QStringLiteral("actionLoadCustomWidgetFile"));
        QIcon icon16;
        icon16.addFile(QStringLiteral(":/files/images/status/folder-drag-accept.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionLoadCustomWidgetFile->setIcon(icon16);
        actionFirmwareUpdateView = new QAction(MainWindow);
        actionFirmwareUpdateView->setObjectName(QStringLiteral("actionFirmwareUpdateView"));
        actionFirmwareUpdateView->setIcon(icon9);
        actionSimulation_View = new QAction(MainWindow);
        actionSimulation_View->setObjectName(QStringLiteral("actionSimulation_View"));
        actionSimulation_View->setCheckable(true);
        actionSimulation_View->setIcon(icon6);
        actionHardwareConfig = new QAction(MainWindow);
        actionHardwareConfig->setObjectName(QStringLiteral("actionHardwareConfig"));
        actionHardwareConfig->setCheckable(true);
        actionHardwareConfig->setIcon(icon10);
        actionAdvanced_Mode = new QAction(MainWindow);
        actionAdvanced_Mode->setObjectName(QStringLiteral("actionAdvanced_Mode"));
        actionAdvanced_Mode->setCheckable(true);
        actionSimulationView = new QAction(MainWindow);
        actionSimulationView->setObjectName(QStringLiteral("actionSimulationView"));
        actionSimulationView->setCheckable(true);
        QIcon icon17;
        icon17.addFile(QStringLiteral(":/files/images/apps/accessories-calculator.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionSimulationView->setIcon(icon17);
        actionSoftwareConfig = new QAction(MainWindow);
        actionSoftwareConfig->setObjectName(QStringLiteral("actionSoftwareConfig"));
        actionSoftwareConfig->setCheckable(true);
        actionSoftwareConfig->setIcon(icon4);
        actionSoftwareConfig->setMenuRole(QAction::NoRole);
        actionTerminalView = new QAction(MainWindow);
        actionTerminalView->setObjectName(QStringLiteral("actionTerminalView"));
        actionTerminalView->setCheckable(true);
        QIcon icon18;
        icon18.addFile(QStringLiteral(":/files/images/apps/utilities-terminal.svg"), QSize(), QIcon::Normal, QIcon::Off);
        actionTerminalView->setIcon(icon18);
        actionDebug_Console = new QAction(MainWindow);
        actionDebug_Console->setObjectName(QStringLiteral("actionDebug_Console"));
        actionDebug_Console->setCheckable(false);
        actionAbout_APM_Planner_2_0 = new QAction(MainWindow);
        actionAbout_APM_Planner_2_0->setObjectName(QStringLiteral("actionAbout_APM_Planner_2_0"));
        actionCheck_For_Updates = new QAction(MainWindow);
        actionCheck_For_Updates->setObjectName(QStringLiteral("actionCheck_For_Updates"));
        actionLoad_tlog = new QAction(MainWindow);
        actionLoad_tlog->setObjectName(QStringLiteral("actionLoad_tlog"));
        actionSerial = new QAction(MainWindow);
        actionSerial->setObjectName(QStringLiteral("actionSerial"));
        actionTCP = new QAction(MainWindow);
        actionTCP->setObjectName(QStringLiteral("actionTCP"));
        actionUDP = new QAction(MainWindow);
        actionUDP->setObjectName(QStringLiteral("actionUDP"));
        actionTerminalConsole = new QAction(MainWindow);
        actionTerminalConsole->setObjectName(QStringLiteral("actionTerminalConsole"));
        actionUDPClient = new QAction(MainWindow);
        actionUDPClient->setObjectName(QStringLiteral("actionUDPClient"));
        actionDonate = new QAction(MainWindow);
        actionDonate->setObjectName(QStringLiteral("actionDonate"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        QSizePolicy sizePolicy(QSizePolicy::MinimumExpanding, QSizePolicy::MinimumExpanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(centralWidget->sizePolicy().hasHeightForWidth());
        centralWidget->setSizePolicy(sizePolicy);
        centralWidget->setMinimumSize(QSize(200, 150));
        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1080, 22));
        menuMGround = new QMenu(menuBar);
        menuMGround->setObjectName(QStringLiteral("menuMGround"));
        menuPreferences = new QMenu(menuMGround);
        menuPreferences->setObjectName(QStringLiteral("menuPreferences"));
        menuNetwork = new QMenu(menuBar);
        menuNetwork->setObjectName(QStringLiteral("menuNetwork"));
        menuAdd_Link = new QMenu(menuNetwork);
        menuAdd_Link->setObjectName(QStringLiteral("menuAdd_Link"));
        menuTools = new QMenu(menuBar);
        menuTools->setObjectName(QStringLiteral("menuTools"));
        menuTools->setEnabled(true);
        menuHelp = new QMenu(menuBar);
        menuHelp->setObjectName(QStringLiteral("menuHelp"));
        menuPerspectives = new QMenu(menuBar);
        menuPerspectives->setObjectName(QStringLiteral("menuPerspectives"));
        MainWindow->setMenuBar(menuBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        menuBar->addAction(menuMGround->menuAction());
        menuBar->addAction(menuNetwork->menuAction());
        menuBar->addAction(menuPerspectives->menuAction());
        menuBar->addAction(menuTools->menuAction());
        menuBar->addAction(menuHelp->menuAction());
        menuMGround->addAction(actionJoystick_Settings);
        menuMGround->addAction(actionSimulate);
        menuMGround->addSeparator();
        menuMGround->addAction(actionMuteAudioOutput);
        menuMGround->addAction(actionJoystickSettings);
        menuMGround->addAction(menuPreferences->menuAction());
        menuMGround->addAction(actionAdvanced_Mode);
        menuMGround->addSeparator();
        menuMGround->addAction(actionExit);
        menuPreferences->addAction(actionSelectStylesheet);
        menuPreferences->addAction(actionReloadStylesheet);
        menuNetwork->addAction(menuAdd_Link->menuAction());
        menuNetwork->addSeparator();
        menuAdd_Link->addAction(actionSerial);
        menuAdd_Link->addAction(actionTCP);
        menuAdd_Link->addAction(actionUDP);
        menuAdd_Link->addAction(actionUDPClient);
        menuTools->addAction(actionNewCustomWidget);
        menuTools->addAction(actionLoadCustomWidgetFile);
        menuTools->addSeparator();
        menuTools->addAction(actionTerminalConsole);
        menuHelp->addAction(actionOnline_Documentation);
        menuHelp->addAction(actionProject_Roadmap_2);
        menuHelp->addAction(actionDeveloper_Credits);
        menuHelp->addAction(actionDebug_Console);
        menuHelp->addAction(actionCheck_For_Updates);
        menuHelp->addSeparator();
        menuHelp->addAction(actionDonate);
        menuHelp->addSeparator();
        menuHelp->addAction(actionAbout_APM_Planner_2_0);
        menuPerspectives->addAction(actionFlightView);
        menuPerspectives->addAction(actionMissionView);
        menuPerspectives->addAction(actionHardwareConfig);
        menuPerspectives->addAction(actionSoftwareConfig);
        menuPerspectives->addAction(actionTerminalView);
        menuPerspectives->addAction(actionEngineersView);
        menuPerspectives->addAction(actionSimulationView);
        menuPerspectives->addSeparator();
        menuPerspectives->addAction(actionFirmwareUpdateView);
        menuPerspectives->addAction(actionMavlinkView);
        menuPerspectives->addAction(actionUnconnectedView);
        menuPerspectives->addSeparator();
        menuPerspectives->addAction(actionFullscreen);
        menuPerspectives->addAction(actionNormal);

        retranslateUi(MainWindow);
        QObject::connect(actionExit, SIGNAL(triggered()), MainWindow, SLOT(close()));
        QObject::connect(actionFullscreen, SIGNAL(triggered()), MainWindow, SLOT(showFullScreen()));
        QObject::connect(actionNormal, SIGNAL(triggered()), MainWindow, SLOT(showNormal()));

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MGMainWindow", 0));
        actionExit->setText(QApplication::translate("MainWindow", "Exit", 0));
        actionExit->setShortcut(QApplication::translate("MainWindow", "Ctrl+Q", 0));
        actionLiftoff->setText(QApplication::translate("MainWindow", "Liftoff", 0));
        actionLand->setText(QApplication::translate("MainWindow", "Land", 0));
        actionEmergency_Land->setText(QApplication::translate("MainWindow", "Emergency Land", 0));
        actionEmergency_Land->setShortcut(QApplication::translate("MainWindow", "Ctrl+E", 0));
        actionEmergency_Kill->setText(QApplication::translate("MainWindow", "Kill UAS", 0));
        actionEmergency_Kill->setShortcut(QApplication::translate("MainWindow", "Ctrl+K", 0));
        actionConfiguration->setText(QApplication::translate("MainWindow", "Preferences", 0));
#ifndef QT_NO_TOOLTIP
        actionConfiguration->setToolTip(QApplication::translate("MainWindow", "Open UAS Preferences", 0));
#endif // QT_NO_TOOLTIP
        actionJoystickSettings->setText(QApplication::translate("MainWindow", "Joystick", 0));
        actionSimulate->setText(QApplication::translate("MainWindow", "Simulate", 0));
#ifndef QT_NO_TOOLTIP
        actionSimulate->setToolTip(QApplication::translate("MainWindow", "Simulate one vehicle to test and evaluate this application", 0));
#endif // QT_NO_TOOLTIP
        actionShow_Slugs_View->setText(QApplication::translate("MainWindow", "Show Slugs View", 0));
        actionJoystick_Settings->setText(QApplication::translate("MainWindow", "Joystick Settings", 0));
        actionOnline_Documentation->setText(QApplication::translate("MainWindow", "Online Documentation", 0));
        actionProject_Roadmap_2->setText(QApplication::translate("MainWindow", "Project Roadmap", 0));
        actionDeveloper_Credits->setText(QApplication::translate("MainWindow", "Developer Credits", 0));
        actionMissionView->setText(QApplication::translate("MainWindow", "Flight Plan", 0));
        actionMissionView->setShortcut(QApplication::translate("MainWindow", "Ctrl+2", 0));
        actionEngineersView->setText(QApplication::translate("MainWindow", "Plot", 0));
        actionEngineersView->setShortcut(QApplication::translate("MainWindow", "Ctrl+6", 0));
        actionMavlinkView->setText(QApplication::translate("MainWindow", "Mavlink", 0));
        actionMavlinkView->setShortcut(QApplication::translate("MainWindow", "Meta+M", 0));
        actionSelectStylesheet->setText(QApplication::translate("MainWindow", "Select Stylesheet", 0));
        actionFlightView->setText(QApplication::translate("MainWindow", "Flight Data", 0));
        actionFlightView->setShortcut(QApplication::translate("MainWindow", "Ctrl+1", 0));
        actionNewCustomWidget->setText(QApplication::translate("MainWindow", "New Custom Widget", 0));
        actionMuteAudioOutput->setText(QApplication::translate("MainWindow", "Mute Audio Output", 0));
        actionUnconnectedView->setText(QApplication::translate("MainWindow", "Unconnected", 0));
        actionUnconnectedView->setShortcut(QApplication::translate("MainWindow", "Meta+U", 0));
        actionShutdownMAV->setText(QApplication::translate("MainWindow", "Shutdown MAV", 0));
#ifndef QT_NO_TOOLTIP
        actionShutdownMAV->setToolTip(QApplication::translate("MainWindow", "Shutdown the onboard computer - works not during flight", 0));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_STATUSTIP
        actionShutdownMAV->setStatusTip(QApplication::translate("MainWindow", "Shutdown the onboard computer - works not during flight", 0));
#endif // QT_NO_STATUSTIP
        actionReloadStylesheet->setText(QApplication::translate("MainWindow", "Reload Stylesheet", 0));
        actionReloadStylesheet->setShortcut(QApplication::translate("MainWindow", "Meta+R", 0));
        actionSettings->setText(QApplication::translate("MainWindow", "Settings", 0));
        actionFullscreen->setText(QApplication::translate("MainWindow", "Fullscreen", 0));
        actionFullscreen->setShortcut(QApplication::translate("MainWindow", "Meta+Return", 0));
        actionNormal->setText(QApplication::translate("MainWindow", "Normal", 0));
        actionLoadCustomWidgetFile->setText(QApplication::translate("MainWindow", "Load Custom Widget File", 0));
        actionFirmwareUpdateView->setText(QApplication::translate("MainWindow", "Firmware Update", 0));
#ifndef QT_NO_TOOLTIP
        actionFirmwareUpdateView->setToolTip(QApplication::translate("MainWindow", "Update the firmware of one of the connected autopilots", 0));
#endif // QT_NO_TOOLTIP
        actionSimulation_View->setText(QApplication::translate("MainWindow", "Simulation", 0));
#ifndef QT_NO_TOOLTIP
        actionSimulation_View->setToolTip(QApplication::translate("MainWindow", "Open the simulation view", 0));
#endif // QT_NO_TOOLTIP
        actionHardwareConfig->setText(QApplication::translate("MainWindow", "Intial Setup", 0));
#ifndef QT_NO_TOOLTIP
        actionHardwareConfig->setToolTip(QApplication::translate("MainWindow", "Configuration options of the vehicle.", 0));
#endif // QT_NO_TOOLTIP
        actionHardwareConfig->setShortcut(QApplication::translate("MainWindow", "Ctrl+3", 0));
        actionAdvanced_Mode->setText(QApplication::translate("MainWindow", "Advanced Mode", 0));
        actionSimulationView->setText(QApplication::translate("MainWindow", "Simulation", 0));
        actionSoftwareConfig->setText(QApplication::translate("MainWindow", "Config/Tuning", 0));
        actionSoftwareConfig->setShortcut(QApplication::translate("MainWindow", "Ctrl+4", 0));
        actionTerminalView->setText(QApplication::translate("MainWindow", "Terminal", 0));
        actionTerminalView->setShortcut(QApplication::translate("MainWindow", "Ctrl+5", 0));
        actionDebug_Console->setText(QApplication::translate("MainWindow", "Show Debug Console", 0));
        actionAbout_APM_Planner_2_0->setText(QApplication::translate("MainWindow", "About APM Planner 2.0", 0));
        actionCheck_For_Updates->setText(QApplication::translate("MainWindow", "Check For Updates", 0));
        actionLoad_tlog->setText(QApplication::translate("MainWindow", "Load tlog", 0));
        actionSerial->setText(QApplication::translate("MainWindow", "Serial", 0));
        actionTCP->setText(QApplication::translate("MainWindow", "TCP", 0));
        actionUDP->setText(QApplication::translate("MainWindow", "UDP", 0));
        actionTerminalConsole->setText(QApplication::translate("MainWindow", "Terminal Console", 0));
        actionTerminalConsole->setShortcut(QApplication::translate("MainWindow", "Ctrl+Shift+M", 0));
        actionUDPClient->setText(QApplication::translate("MainWindow", "UDP Client", 0));
#ifndef QT_NO_TOOLTIP
        actionUDPClient->setToolTip(QApplication::translate("MainWindow", "UDP Client", 0));
#endif // QT_NO_TOOLTIP
        actionDonate->setText(QApplication::translate("MainWindow", "Donate", 0));
        menuMGround->setTitle(QApplication::translate("MainWindow", "File", 0));
        menuPreferences->setTitle(QApplication::translate("MainWindow", "Display", 0));
        menuNetwork->setTitle(QApplication::translate("MainWindow", "Communication", 0));
        menuAdd_Link->setTitle(QApplication::translate("MainWindow", "Add Link", 0));
        menuTools->setTitle(QApplication::translate("MainWindow", "Tool Widgets", 0));
        menuHelp->setTitle(QApplication::translate("MainWindow", "Help", 0));
        menuPerspectives->setTitle(QApplication::translate("MainWindow", "Views", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
