include("C:/Users/User/qgroundcontrol/build-mscv/.qt/QtDeploySupport-RelWithDebInfo.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/QGroundControl-plugins-RelWithDebInfo.cmake" OPTIONAL)
set(__QT_DEPLOY_I18N_CATALOGS "qtbase;qtdeclarative;qtdeclarative;qtdeclarative;qtdeclarative;qtdeclarative;qtdeclarative;qtdeclarative;qtdeclarative;qtmultimedia;qtdeclarative;qtdeclarative;qtdeclarative;qtconnectivity;qtmultimedia;qtdeclarative;qtdeclarative;qtdeclarative;qtserialport")

qt6_deploy_qml_imports(TARGET QGroundControl PLUGINS_FOUND plugins_found)
qt6_deploy_runtime_dependencies(
    EXECUTABLE C:/Users/User/qgroundcontrol/build-mscv/RelWithDebInfo/QGroundControl.exe
    ADDITIONAL_MODULES ${plugins_found}
    GENERATE_QT_CONF
DEPLOY_TOOL_OPTIONS;-qmldir=C:/Users/User/qgroundcontrol)