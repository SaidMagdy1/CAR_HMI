#include "http.h"

HTTP::HTTP(QObject *parent) : QObject(parent)
{
    QObject::connect(&m_NetworkAccessManager,SIGNAL(finished(QNetworkReply*)),this,SLOT(onResetApiFinished(QNetworkReply*)));

}

QJsonObject HTTP::JsonData() const
{
    return m_JsonData;
}

void HTTP::setJsonData(const QJsonObject &data)
{
    m_JsonData=data;
    emit dataChanged(m_JsonData);
}

void HTTP::resetAPIRequest(){

}

void HTTP::onResetApiFinished(QNetworkReply *)
{

}
