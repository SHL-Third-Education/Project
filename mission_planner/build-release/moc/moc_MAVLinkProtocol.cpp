/****************************************************************************
** Meta object code from reading C++ file 'MAVLinkProtocol.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/comm/MAVLinkProtocol.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MAVLinkProtocol.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MAVLinkProtocol_t {
    QByteArrayData data[32];
    char stringdata0[304];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MAVLinkProtocol_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MAVLinkProtocol_t qt_meta_stringdata_MAVLinkProtocol = {
    {
QT_MOC_LITERAL(0, 0, 15), // "MAVLinkProtocol"
QT_MOC_LITERAL(1, 16, 21), // "protocolStatusMessage"
QT_MOC_LITERAL(2, 38, 0), // ""
QT_MOC_LITERAL(3, 39, 5), // "title"
QT_MOC_LITERAL(4, 45, 7), // "message"
QT_MOC_LITERAL(5, 53, 12), // "valueChanged"
QT_MOC_LITERAL(6, 66, 5), // "uasId"
QT_MOC_LITERAL(7, 72, 4), // "name"
QT_MOC_LITERAL(8, 77, 4), // "unit"
QT_MOC_LITERAL(9, 82, 5), // "value"
QT_MOC_LITERAL(10, 88, 4), // "msec"
QT_MOC_LITERAL(11, 93, 19), // "textMessageReceived"
QT_MOC_LITERAL(12, 113, 5), // "uasid"
QT_MOC_LITERAL(13, 119, 11), // "componentid"
QT_MOC_LITERAL(14, 131, 8), // "severity"
QT_MOC_LITERAL(15, 140, 4), // "text"
QT_MOC_LITERAL(16, 145, 18), // "receiveLossChanged"
QT_MOC_LITERAL(17, 164, 2), // "id"
QT_MOC_LITERAL(18, 167, 15), // "messageReceived"
QT_MOC_LITERAL(19, 183, 14), // "LinkInterface*"
QT_MOC_LITERAL(20, 198, 4), // "link"
QT_MOC_LITERAL(21, 203, 17), // "mavlink_message_t"
QT_MOC_LITERAL(22, 221, 18), // "radioStatusChanged"
QT_MOC_LITERAL(23, 240, 8), // "rxerrors"
QT_MOC_LITERAL(24, 249, 5), // "fixed"
QT_MOC_LITERAL(25, 255, 4), // "rssi"
QT_MOC_LITERAL(26, 260, 7), // "remrssi"
QT_MOC_LITERAL(27, 268, 5), // "txbuf"
QT_MOC_LITERAL(28, 274, 5), // "noise"
QT_MOC_LITERAL(29, 280, 8), // "remnoise"
QT_MOC_LITERAL(30, 289, 12), // "receiveBytes"
QT_MOC_LITERAL(31, 302, 1) // "b"

    },
    "MAVLinkProtocol\0protocolStatusMessage\0"
    "\0title\0message\0valueChanged\0uasId\0"
    "name\0unit\0value\0msec\0textMessageReceived\0"
    "uasid\0componentid\0severity\0text\0"
    "receiveLossChanged\0id\0messageReceived\0"
    "LinkInterface*\0link\0mavlink_message_t\0"
    "radioStatusChanged\0rxerrors\0fixed\0"
    "rssi\0remrssi\0txbuf\0noise\0remnoise\0"
    "receiveBytes\0b"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MAVLinkProtocol[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   49,    2, 0x06 /* Public */,
       5,    5,   54,    2, 0x06 /* Public */,
      11,    4,   65,    2, 0x06 /* Public */,
      16,    2,   74,    2, 0x06 /* Public */,
      18,    2,   79,    2, 0x06 /* Public */,
      22,    8,   84,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      30,    2,  101,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString,    3,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::QString, QMetaType::QString, QMetaType::QVariant, QMetaType::ULongLong,    6,    7,    8,    9,   10,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::QString,   12,   13,   14,   15,
    QMetaType::Void, QMetaType::Int, QMetaType::Float,   17,    9,
    QMetaType::Void, 0x80000000 | 19, 0x80000000 | 21,   20,    4,
    QMetaType::Void, 0x80000000 | 19, QMetaType::UInt, QMetaType::UInt, QMetaType::Int, QMetaType::Int, QMetaType::UInt, QMetaType::UInt, QMetaType::UInt,   20,   23,   24,   25,   26,   27,   28,   29,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 19, QMetaType::QByteArray,   20,   31,

       0        // eod
};

void MAVLinkProtocol::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MAVLinkProtocol *_t = static_cast<MAVLinkProtocol *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->protocolStatusMessage((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 1: _t->valueChanged((*reinterpret_cast< const int(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QVariant(*)>(_a[4])),(*reinterpret_cast< const quint64(*)>(_a[5]))); break;
        case 2: _t->textMessageReceived((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4]))); break;
        case 3: _t->receiveLossChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2]))); break;
        case 4: _t->messageReceived((*reinterpret_cast< LinkInterface*(*)>(_a[1])),(*reinterpret_cast< mavlink_message_t(*)>(_a[2]))); break;
        case 5: _t->radioStatusChanged((*reinterpret_cast< LinkInterface*(*)>(_a[1])),(*reinterpret_cast< uint(*)>(_a[2])),(*reinterpret_cast< uint(*)>(_a[3])),(*reinterpret_cast< int(*)>(_a[4])),(*reinterpret_cast< int(*)>(_a[5])),(*reinterpret_cast< uint(*)>(_a[6])),(*reinterpret_cast< uint(*)>(_a[7])),(*reinterpret_cast< uint(*)>(_a[8]))); break;
        case 6: _t->receiveBytes((*reinterpret_cast< LinkInterface*(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 4:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< LinkInterface* >(); break;
            }
            break;
        case 5:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< LinkInterface* >(); break;
            }
            break;
        case 6:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< LinkInterface* >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MAVLinkProtocol::*_t)(const QString & , const QString & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkProtocol::protocolStatusMessage)) {
                *result = 0;
            }
        }
        {
            typedef void (MAVLinkProtocol::*_t)(const int , const QString & , const QString & , const QVariant & , const quint64 );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkProtocol::valueChanged)) {
                *result = 1;
            }
        }
        {
            typedef void (MAVLinkProtocol::*_t)(int , int , int , const QString & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkProtocol::textMessageReceived)) {
                *result = 2;
            }
        }
        {
            typedef void (MAVLinkProtocol::*_t)(int , float );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkProtocol::receiveLossChanged)) {
                *result = 3;
            }
        }
        {
            typedef void (MAVLinkProtocol::*_t)(LinkInterface * , mavlink_message_t );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkProtocol::messageReceived)) {
                *result = 4;
            }
        }
        {
            typedef void (MAVLinkProtocol::*_t)(LinkInterface * , unsigned  , unsigned  , int , int , unsigned  , unsigned  , unsigned  );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkProtocol::radioStatusChanged)) {
                *result = 5;
            }
        }
    }
}

const QMetaObject MAVLinkProtocol::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_MAVLinkProtocol.data,
      qt_meta_data_MAVLinkProtocol,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *MAVLinkProtocol::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MAVLinkProtocol::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_MAVLinkProtocol.stringdata0))
        return static_cast<void*>(const_cast< MAVLinkProtocol*>(this));
    return QObject::qt_metacast(_clname);
}

int MAVLinkProtocol::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void MAVLinkProtocol::protocolStatusMessage(const QString & _t1, const QString & _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void MAVLinkProtocol::valueChanged(const int _t1, const QString & _t2, const QString & _t3, const QVariant & _t4, const quint64 _t5)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void MAVLinkProtocol::textMessageReceived(int _t1, int _t2, int _t3, const QString & _t4)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void MAVLinkProtocol::receiveLossChanged(int _t1, float _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void MAVLinkProtocol::messageReceived(LinkInterface * _t1, mavlink_message_t _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void MAVLinkProtocol::radioStatusChanged(LinkInterface * _t1, unsigned  _t2, unsigned  _t3, int _t4, int _t5, unsigned  _t6, unsigned  _t7, unsigned  _t8)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)), const_cast<void*>(reinterpret_cast<const void*>(&_t6)), const_cast<void*>(reinterpret_cast<const void*>(&_t7)), const_cast<void*>(reinterpret_cast<const void*>(&_t8)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}
QT_END_MOC_NAMESPACE
