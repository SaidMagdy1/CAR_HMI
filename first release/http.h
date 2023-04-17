#ifndef HTTP_H
#define HTTP_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>

class HTTP : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QJsonObject JsonData READ JsonData WRITE setJsonData NOTIFY dataChanged)
public:
    explicit HTTP(QObject *parent = nullptr);
    QJsonObject JsonData() const ;
    void setJsonData(const QJsonObject& data);
private:
    QNetworkAccessManager m_NetworkAccessManager;
    QJsonObject m_JsonData;

signals:
    void dataChanged(QJsonObject);

public slots:
    void resetAPIRequest();
    void onResetApiFinished(QNetworkReply*);

};

#endif // HTTP_H
