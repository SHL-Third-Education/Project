/****************************************************************************
** Meta object code from reading C++ file 'MAVLinkDecoder.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/comm/MAVLinkDecoder.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MAVLinkDecoder.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MAVLinkDecoder_t {
    QByteArrayData data[30];
    char stringdata0[338];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MAVLinkDecoder_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MAVLinkDecoder_t qt_meta_stringdata_MAVLinkDecoder = {
    {
QT_MOC_LITERAL(0, 0, 14), // "MAVLinkDecoder"
QT_MOC_LITERAL(1, 15, 21), // "protocolStatusMessage"
QT_MOC_LITERAL(2, 37, 0), // ""
QT_MOC_LITERAL(3, 38, 5), // "title"
QT_MOC_LITERAL(4, 44, 7), // "message"
QT_MOC_LITERAL(5, 52, 12), // "valueChanged"
QT_MOC_LITERAL(6, 65, 5), // "uasId"
QT_MOC_LITERAL(7, 71, 4), // "name"
QT_MOC_LITERAL(8, 76, 4), // "unit"
QT_MOC_LITERAL(9, 81, 5), // "value"
QT_MOC_LITERAL(10, 87, 4), // "msec"
QT_MOC_LITERAL(11, 92, 19), // "textMessageReceived"
QT_MOC_LITERAL(12, 112, 5), // "uasid"
QT_MOC_LITERAL(13, 118, 11), // "componentid"
QT_MOC_LITERAL(14, 130, 8), // "severity"
QT_MOC_LITERAL(15, 139, 4), // "text"
QT_MOC_LITERAL(16, 144, 18), // "receiveLossChanged"
QT_MOC_LITERAL(17, 163, 2), // "id"
QT_MOC_LITERAL(18, 166, 14), // "receiveMessage"
QT_MOC_LITERAL(19, 181, 31), // "QList<QPair<QString,QVariant> >"
QT_MOC_LITERAL(20, 213, 14), // "LinkInterface*"
QT_MOC_LITERAL(21, 228, 4), // "link"
QT_MOC_LITERAL(22, 233, 17), // "mavlink_message_t"
QT_MOC_LITERAL(23, 251, 11), // "sendMessage"
QT_MOC_LITERAL(24, 263, 3), // "msg"
QT_MOC_LITERAL(25, 267, 14), // "emitFieldValue"
QT_MOC_LITERAL(26, 282, 23), // "QPair<QString,QVariant>"
QT_MOC_LITERAL(27, 306, 18), // "mavlink_message_t*"
QT_MOC_LITERAL(28, 325, 7), // "fieldid"
QT_MOC_LITERAL(29, 333, 4) // "time"

    },
    "MAVLinkDecoder\0protocolStatusMessage\0"
    "\0title\0message\0valueChanged\0uasId\0"
    "name\0unit\0value\0msec\0textMessageReceived\0"
    "uasid\0componentid\0severity\0text\0"
    "receiveLossChanged\0id\0receiveMessage\0"
    "QList<QPair<QString,QVariant> >\0"
    "LinkInterface*\0link\0mavlink_message_t\0"
    "sendMessage\0msg\0emitFieldValue\0"
    "QPair<QString,QVariant>\0mavlink_message_t*\0"
    "fieldid\0time"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MAVLinkDecoder[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   49,    2, 0x06 /* Public */,
       5,    5,   54,    2, 0x06 /* Public */,
      11,    4,   65,    2, 0x06 /* Public */,
      16,    2,   74,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      18,    2,   79,    2, 0x0a /* Public */,
      23,    1,   84,    2, 0x0a /* Public */,
      25,    3,   87,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString,    3,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::QString, QMetaType::QString, QMetaType::QVariant, QMetaType::ULongLong,    6,    7,    8,    9,   10,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::QString,   12,   13,   14,   15,
    QMetaType::Void, QMetaType::Int, QMetaType::Float,   17,    9,

 // slots: parameters
    0x80000000 | 19, 0x80000000 | 20, 0x80000000 | 22,   21,    4,
    QMetaType::Void, 0x80000000 | 22,   24,
    0x80000000 | 26, 0x80000000 | 27, QMetaType::Int, QMetaType::ULongLong,   24,   28,   29,

       0        // eod
};

void MAVLinkDecoder::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MAVLinkDecoder *_t = static_cast<MAVLinkDecoder *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->protocolStatusMessage((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 1: _t->valueChanged((*reinterpret_cast< const int(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QVariant(*)>(_a[4])),(*reinterpret_cast< const quint64(*)>(_a[5]))); break;
        case 2: _t->textMessageReceived((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4]))); break;
        case 3: _t->receiveLossChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2]))); break;
        case 4: { QList<QPair<QString,QVariant> > _r = _t->receiveMessage((*reinterpret_cast< LinkInterface*(*)>(_a[1])),(*reinterpret_cast< mavlink_message_t(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< QList<QPair<QString,QVariant> >*>(_a[0]) = _r; }  break;
        case 5: _t->sendMessage((*reinterpret_cast< mavlink_message_t(*)>(_a[1]))); break;
        case 6: { QPair<QString,QVariant> _r = _t->emitFieldValue((*reinterpret_cast< mavlink_message_t*(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< quint64(*)>(_a[3])));
            if (_a[0]) *reinterpret_cast< QPair<QString,QVariant>*>(_a[0]) = _r; }  break;
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
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MAVLinkDecoder::*_t)(const QString & , const QString & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkDecoder::protocolStatusMessage)) {
                *result = 0;
            }
        }
        {
            typedef void (MAVLinkDecoder::*_t)(const int , const QString & , const QString & , const QVariant & , const quint64 );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkDecoder::valueChanged)) {
                *result = 1;
            }
        }
        {
            typedef void (MAVLinkDecoder::*_t)(int , int , int , const QString & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkDecoder::textMessageReceived)) {
                *result = 2;
            }
        }
        {
            typedef void (MAVLinkDecoder::*_t)(int , float );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkDecoder::receiveLossChanged)) {
                *result = 3;
            }
        }
    }
}

const QMetaObject MAVLinkDecoder::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_MAVLinkDecoder.data,
      qt_meta_data_MAVLinkDecoder,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *MAVLinkDecoder::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MAVLinkDecoder::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_MAVLinkDecoder.stringdata0))
        return static_cast<void*>(const_cast< MAVLinkDecoder*>(this));
    return QObject::qt_metacast(_clname);
}

int MAVLinkDecoder::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
void MAVLinkDecoder::protocolStatusMessage(const QString & _t1, const QString & _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void MAVLinkDecoder::valueChanged(const int _t1, const QString & _t2, const QString & _t3, const QVariant & _t4, const quint64 _t5)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void MAVLinkDecoder::textMessageReceived(int _t1, int _t2, int _t3, const QString & _t4)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void MAVLinkDecoder::receiveLossChanged(int _t1, float _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_END_MOC_NAMESPACE
