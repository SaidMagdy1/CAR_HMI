#ifndef FRAMEPROCESSOR_H
#define FRAMEPROCESSOR_H

#include <QObject>
#include "frame.h"
#include "serialworker.h"
#include <QQueue>

class FrameProcessor : public QObject
{
//    static const quint8 CMD_BUTTON_1 = 1;
//    static const quint8 CMD_BUTTON_2 = 2;
//   static const quint8 CMD_LED_GREEN = 3;
//    static const quint8 CMD_PWM_LED_R = 4;
//    static const quint8 CMD_PWM_LED_G = 5;
//    static const quint8 CMD_PWM_LED_B = 6;
//    static const quint8 CMD_ADC_INPUT2 = 7;
//    static const quint8 CMD_ADC_INPUT  = 8;
//    static const quint8 CMD_ADC_ENABLE = 9;
    static const quint8 CMD_RPM = 1;
    static const quint8 CMD_SOC = 2;
    static const quint8 CMD_HEALTH = 3;
    static const quint8 CMD_CHARGING = 4;
    static const quint8 CMD_SEATB = 5;

    Q_OBJECT
public:
    explicit FrameProcessor(QQueue<Frame*> *outFrameQueue, QObject *parent = nullptr);

private:
    //SerialWorker *m_serialWorker;
    QQueue<Frame*> *m_outFrameQueue;

signals:
    void changedRPM(int value);
    void changedSOC(int value);
    void changedHEALTH(int value);
    void changedCHARGING(int value);
    void changedSEATB(int value);
   // void changedAdc2(int value);
public slots:
    void FrameIncoming(Frame *frame);

    void setPwm(quint8 color, quint8 value);
    void enableAdc(quint8 enable);
};

#endif // FRAMEPROCESSOR_H
