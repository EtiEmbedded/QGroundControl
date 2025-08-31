#pragma once

#ifdef _WIN32
// Windows başlıqlarını minimal saxla və min/max makrolarını blokla
#ifndef WIN32_LEAN_AND_MEAN
#  define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#  define NOMINMAX
#endif
#include <windows.h>
#endif

#include <functional>
#include <memory>
#include <string>
#include <vector>

#include <QtCore/QDebug>
#include <QtCore/QList>
#include <QtCore/QMap>
#include <QtCore/QObject>
#include <QtCore/QString>
#include <QtCore/QtGlobal>
#include <QtCore/QVariant>
#include <QtCore/QVector>

#include <QtCore/QJsonArray>
#include <QtCore/QJsonDocument>
#include <QtCore/QJsonObject>

#include <QtGui/QImage>
#include <QtGui/QPainter>
#include <QtGui/QTransform>

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QtNetwork/QNetworkRequest>

#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlContext>

#include <QtQuick/QQuickItem>
#include <QtQuick/QQuickView>

#include <QtQuickControls2/QQuickStyle>

#include "MAVLinkLib.h"
