add_subdirectory(AppSettings)
add_subdirectory(FirstRunPromptDialogs)
add_subdirectory(toolbar)

qt_add_library(MainWindowModule STATIC)

qt_add_qml_module(MainWindowModule
    URI QGroundControl.MainWindow
    VERSION 1.0
    RESOURCE_PREFIX /qml
    QML_FILES
        MainWindow.qml
    NO_PLUGIN
    QML_FILES SideMenu.qml
    QML_FILES TopStatusPanel.qml
    QML_FILES
    SOURCES
    QML_FILES TopStatusPanel_GPS.qml
    QML_FILES TopStatusPanel_GPS_Settings.qml
    QML_FILES TopStatusPanel_Battery.qml
    QML_FILES TopStatusPanel_UcusRejimi.qml
    QML_FILES TopStatusPanel_UcusRejimi_Settings.qml
    QML_FILES TopStatusPanel_RCSignal.qml
    QML_FILES TopStatusPanel_RCSignal_Settings.qml
    QML_FILES TopStatusPanel_Battery_Settings.qml
    QML_FILES SideMenu_AparatQurgusu.qml
    QML_FILES SideMenu_Radio.qml
    QML_FILES SideMenu_FlightMode.qml
    QML_FILES SideMenu_Sensors.qml
    QML_FILES SideMenu_Sensors_Accelerometer.qml
    QML_FILES
    QML_FILES SideMenu_Enerji.qml
    QML_FILES SideMenu_Motors.qml
    QML_FILES SideMenu_Tehlukesizlik.qml
    QML_FILES
    QML_FILES Side_Parameter.qml
    QML_FILES Side_Proqram_Teminati.qml
    QML_FILES
    QML_FILES SideMenu_Cercive.qml
    QML_FILES SideMenu_Xulase.qml
)
