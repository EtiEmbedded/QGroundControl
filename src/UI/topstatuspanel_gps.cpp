#include "topstatuspanel_gps.h"

TopStatusPanel_GPS::TopStatusPanel_GPS(QObject *parent)
    : QAbstractItemModel(parent)
{
}

QVariant TopStatusPanel_GPS::headerData(int section, Qt::Orientation orientation, int role) const
{
   // FIXME: Implement me!
}

QModelIndex TopStatusPanel_GPS::index(int row, int column, const QModelIndex &parent) const
{
   // FIXME: Implement me!
}

QModelIndex TopStatusPanel_GPS::parent(const QModelIndex &index) const
{
   // FIXME: Implement me!
}

int TopStatusPanel_GPS::rowCount(const QModelIndex &parent) const
{
    if (!parent.isValid())
        return 0;

            // FIXME: Implement me!
}

int TopStatusPanel_GPS::columnCount(const QModelIndex &parent) const
{
    if (!parent.isValid())
        return 0;

            // FIXME: Implement me!
}

QVariant TopStatusPanel_GPS::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

            // FIXME: Implement me!
    return QVariant();
}
