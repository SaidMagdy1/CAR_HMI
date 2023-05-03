/****************************************************************************
** Meta object code from reading C++ file 'frameprocessor.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../first release/frameprocessor.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'frameprocessor.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_FrameProcessor_t {
    QByteArrayData data[15];
    char stringdata0[144];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_FrameProcessor_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_FrameProcessor_t qt_meta_stringdata_FrameProcessor = {
    {
QT_MOC_LITERAL(0, 0, 14), // "FrameProcessor"
QT_MOC_LITERAL(1, 15, 10), // "changedRPM"
QT_MOC_LITERAL(2, 26, 0), // ""
QT_MOC_LITERAL(3, 27, 5), // "value"
QT_MOC_LITERAL(4, 33, 10), // "changedSOC"
QT_MOC_LITERAL(5, 44, 13), // "changedHEALTH"
QT_MOC_LITERAL(6, 58, 15), // "changedCHARGING"
QT_MOC_LITERAL(7, 74, 12), // "changedSEATB"
QT_MOC_LITERAL(8, 87, 13), // "FrameIncoming"
QT_MOC_LITERAL(9, 101, 6), // "Frame*"
QT_MOC_LITERAL(10, 108, 5), // "frame"
QT_MOC_LITERAL(11, 114, 6), // "setPwm"
QT_MOC_LITERAL(12, 121, 5), // "color"
QT_MOC_LITERAL(13, 127, 9), // "enableAdc"
QT_MOC_LITERAL(14, 137, 6) // "enable"

    },
    "FrameProcessor\0changedRPM\0\0value\0"
    "changedSOC\0changedHEALTH\0changedCHARGING\0"
    "changedSEATB\0FrameIncoming\0Frame*\0"
    "frame\0setPwm\0color\0enableAdc\0enable"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_FrameProcessor[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   54,    2, 0x06 /* Public */,
       4,    1,   57,    2, 0x06 /* Public */,
       5,    1,   60,    2, 0x06 /* Public */,
       6,    1,   63,    2, 0x06 /* Public */,
       7,    1,   66,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       8,    1,   69,    2, 0x0a /* Public */,
      11,    2,   72,    2, 0x0a /* Public */,
      13,    1,   77,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 9,   10,
    QMetaType::Void, QMetaType::UChar, QMetaType::UChar,   12,    3,
    QMetaType::Void, QMetaType::UChar,   14,

       0        // eod
};

void FrameProcessor::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<FrameProcessor *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->changedRPM((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->changedSOC((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->changedHEALTH((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->changedCHARGING((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->changedSEATB((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->FrameIncoming((*reinterpret_cast< Frame*(*)>(_a[1]))); break;
        case 6: _t->setPwm((*reinterpret_cast< quint8(*)>(_a[1])),(*reinterpret_cast< quint8(*)>(_a[2]))); break;
        case 7: _t->enableAdc((*reinterpret_cast< quint8(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 5:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< Frame* >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (FrameProcessor::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&FrameProcessor::changedRPM)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (FrameProcessor::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&FrameProcessor::changedSOC)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (FrameProcessor::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&FrameProcessor::changedHEALTH)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (FrameProcessor::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&FrameProcessor::changedCHARGING)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (FrameProcessor::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&FrameProcessor::changedSEATB)) {
                *result = 4;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject FrameProcessor::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_FrameProcessor.data,
    qt_meta_data_FrameProcessor,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *FrameProcessor::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FrameProcessor::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_FrameProcessor.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int FrameProcessor::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}

// SIGNAL 0
void FrameProcessor::changedRPM(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void FrameProcessor::changedSOC(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void FrameProcessor::changedHEALTH(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void FrameProcessor::changedCHARGING(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void FrameProcessor::changedSEATB(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
