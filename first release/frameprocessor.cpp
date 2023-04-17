#include "frameprocessor.h"


FrameProcessor::FrameProcessor(QQueue<Frame*> *outFrameQueue, QObject *parent) : QObject(parent)
{
    //m_serialWorker = serialworker;
    m_outFrameQueue = outFrameQueue;
}

void FrameProcessor::FrameIncoming(Frame *frame)
{
    if (frame != nullptr)
    {
        quint8 cmd = frame->GetCmd();

        switch (cmd)
        {
            case CMD_RPM:
            {
                emit changedRPM(frame->GetUInt16());
            \
            } break;

            case CMD_CHARGING:
            {
                emit changedCHARGING(frame->GetUByte());
            } break;
            case CMD_SEATB:
            {
                 emit changedSEATB(frame->GetUByte());
             } break;

            case CMD_SOC:
            {
                emit changedSOC(frame->GetUInt16());
            \
            } break;
            case CMD_HEALTH:
            {
                emit changedHEALTH(frame->GetUInt16());
           \
            } break;
        }
    }
}

void FrameProcessor::setPwm(quint8 color, quint8 value)
{
    Frame *frameToSend = new Frame(color, value);
    m_outFrameQueue->enqueue(frameToSend);
}

void FrameProcessor::enableAdc(quint8 enable)
{
    //Frame *frameToSend = new Frame(CMD_ADC_ENABLE, enable);
   // m_outFrameQueue->enqueue(frameToSend);

}
