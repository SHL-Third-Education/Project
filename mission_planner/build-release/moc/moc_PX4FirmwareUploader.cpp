/****************************************************************************
** Meta object code from reading C++ file 'PX4FirmwareUploader.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/configuration/PX4FirmwareUploader.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'PX4FirmwareUploader.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_PX4FirmwareUploader_t {
    QByteArrayData data[34];
    char stringdata0[327];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_PX4FirmwareUploader_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_PX4FirmwareUploader_t qt_meta_stringdata_PX4FirmwareUploader = {
    {
QT_MOC_LITERAL(0, 0, 19), // "PX4FirmwareUploader"
QT_MOC_LITERAL(1, 20, 7), // "kickOff"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 13), // "gotDeviceInfo"
QT_MOC_LITERAL(4, 43, 7), // "devinfo"
QT_MOC_LITERAL(5, 51, 5), // "reply"
QT_MOC_LITERAL(6, 57, 17), // "requestDevicePlug"
QT_MOC_LITERAL(7, 75, 18), // "devicePlugDetected"
QT_MOC_LITERAL(8, 94, 8), // "complete"
QT_MOC_LITERAL(9, 103, 12), // "serialNumber"
QT_MOC_LITERAL(10, 116, 2), // "sn"
QT_MOC_LITERAL(11, 119, 3), // "OTP"
QT_MOC_LITERAL(12, 123, 3), // "otp"
QT_MOC_LITERAL(13, 127, 8), // "boardRev"
QT_MOC_LITERAL(14, 136, 3), // "rev"
QT_MOC_LITERAL(15, 140, 7), // "boardId"
QT_MOC_LITERAL(16, 148, 2), // "id"
QT_MOC_LITERAL(17, 151, 13), // "bootloaderRev"
QT_MOC_LITERAL(18, 165, 9), // "flashSize"
QT_MOC_LITERAL(19, 175, 4), // "size"
QT_MOC_LITERAL(20, 180, 13), // "flashProgress"
QT_MOC_LITERAL(21, 194, 7), // "current"
QT_MOC_LITERAL(22, 202, 5), // "total"
QT_MOC_LITERAL(23, 208, 5), // "error"
QT_MOC_LITERAL(24, 214, 12), // "statusUpdate"
QT_MOC_LITERAL(25, 227, 6), // "status"
QT_MOC_LITERAL(26, 234, 11), // "debugUpdate"
QT_MOC_LITERAL(27, 246, 5), // "debug"
QT_MOC_LITERAL(28, 252, 7), // "warning"
QT_MOC_LITERAL(29, 260, 7), // "message"
QT_MOC_LITERAL(30, 268, 16), // "kickOffTriggered"
QT_MOC_LITERAL(31, 285, 13), // "portReadyRead"
QT_MOC_LITERAL(32, 299, 12), // "checkForPort"
QT_MOC_LITERAL(33, 312, 14) // "eraseSyncCheck"

    },
    "PX4FirmwareUploader\0kickOff\0\0gotDeviceInfo\0"
    "devinfo\0reply\0requestDevicePlug\0"
    "devicePlugDetected\0complete\0serialNumber\0"
    "sn\0OTP\0otp\0boardRev\0rev\0boardId\0id\0"
    "bootloaderRev\0flashSize\0size\0flashProgress\0"
    "current\0total\0error\0statusUpdate\0"
    "status\0debugUpdate\0debug\0warning\0"
    "message\0kickOffTriggered\0portReadyRead\0"
    "checkForPort\0eraseSyncCheck"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_PX4FirmwareUploader[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      20,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      16,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,  114,    2, 0x06 /* Public */,
       3,    2,  115,    2, 0x06 /* Public */,
       6,    0,  120,    2, 0x06 /* Public */,
       7,    0,  121,    2, 0x06 /* Public */,
       8,    0,  122,    2, 0x06 /* Public */,
       9,    1,  123,    2, 0x06 /* Public */,
      11,    1,  126,    2, 0x06 /* Public */,
      13,    1,  129,    2, 0x06 /* Public */,
      15,    1,  132,    2, 0x06 /* Public */,
      17,    1,  135,    2, 0x06 /* Public */,
      18,    1,  138,    2, 0x06 /* Public */,
      20,    2,  141,    2, 0x06 /* Public */,
      23,    1,  146,    2, 0x06 /* Public */,
      24,    1,  149,    2, 0x06 /* Public */,
      26,    1,  152,    2, 0x06 /* Public */,
      28,    1,  155,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      30,    0,  158,    2, 0x08 /* Private */,
      31,    0,  159,    2, 0x08 /* Private */,
      32,    0,  160,    2, 0x08 /* Private */,
      33,    0,  161,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::UChar, QMetaType::UInt,    4,    5,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   10,
    QMetaType::Void, QMetaType::QString,   12,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void, QMetaType::Int,   16,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void, QMetaType::Int,   19,
    QMetaType::Void, QMetaType::LongLong, QMetaType::LongLong,   21,   22,
    QMetaType::Void, QMetaType::QString,   23,
    QMetaType::Void, QMetaType::QString,   25,
    QMetaType::Void, QMetaType::QString,   27,
    QMetaType::Void, QMetaType::QString,   29,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void PX4FirmwareUploader::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PX4FirmwareUploader *_t = static_cast<PX4FirmwareUploader *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->kickOff(); break;
        case 1: _t->gotDeviceInfo((*reinterpret_cast< unsigned char(*)>(_a[1])),(*reinterpret_cast< uint(*)>(_a[2]))); break;
        case 2: _t->requestDevicePlug(); break;
        case 3: _t->devicePlugDetected(); break;
        case 4: _t->complete(); break;
        case 5: _t->serialNumber((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 6: _t->OTP((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 7: _t->boardRev((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->boardId((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->bootloaderRev((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->flashSize((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 11: _t->flashProgress((*reinterpret_cast< qint64(*)>(_a[1])),(*reinterpret_cast< qint64(*)>(_a[2]))); break;
        case 12: _t->error((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 13: _t->statusUpdate((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 14: _t->debugUpdate((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 15: _t->warning((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 16: _t->kickOffTriggered(); break;
        case 17: _t->portReadyRead(); break;
        case 18: _t->checkForPort(); break;
        case 19: _t->eraseSyncCheck(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (PX4FirmwareUploader::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::kickOff)) {
                *result = 0;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(unsigned char , unsigned int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::gotDeviceInfo)) {
                *result = 1;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::requestDevicePlug)) {
                *result = 2;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::devicePlugDetected)) {
                *result = 3;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::complete)) {
                *result = 4;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::serialNumber)) {
                *result = 5;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::OTP)) {
                *result = 6;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::boardRev)) {
                *result = 7;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::boardId)) {
                *result = 8;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::bootloaderRev)) {
                *result = 9;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::flashSize)) {
                *result = 10;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(qint64 , qint64 );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::flashProgress)) {
                *result = 11;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::error)) {
                *result = 12;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::statusUpdate)) {
                *result = 13;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::debugUpdate)) {
                *result = 14;
            }
        }
        {
            typedef void (PX4FirmwareUploader::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PX4FirmwareUploader::warning)) {
                *result = 15;
            }
        }
    }
}

const QMetaObject PX4FirmwareUploader::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_PX4FirmwareUploader.data,
      qt_meta_data_PX4FirmwareUploader,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *PX4FirmwareUploader::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *PX4FirmwareUploader::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_PX4FirmwareUploader.stringdata0))
        return static_cast<void*>(const_cast< PX4FirmwareUploader*>(this));
    return QThread::qt_metacast(_clname);
}

int PX4FirmwareUploader::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 20)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 20;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 20)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 20;
    }
    return _id;
}

// SIGNAL 0
void PX4FirmwareUploader::kickOff()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void PX4FirmwareUploader::gotDeviceInfo(unsigned char _t1, unsigned int _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PX4FirmwareUploader::requestDevicePlug()
{
    QMetaObject::activate(this, &staticMetaObject, 2, Q_NULLPTR);
}

// SIGNAL 3
void PX4FirmwareUploader::devicePlugDetected()
{
    QMetaObject::activate(this, &staticMetaObject, 3, Q_NULLPTR);
}

// SIGNAL 4
void PX4FirmwareUploader::complete()
{
    QMetaObject::activate(this, &staticMetaObject, 4, Q_NULLPTR);
}

// SIGNAL 5
void PX4FirmwareUploader::serialNumber(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void PX4FirmwareUploader::OTP(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void PX4FirmwareUploader::boardRev(int _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void PX4FirmwareUploader::boardId(int _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void PX4FirmwareUploader::bootloaderRev(int _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void PX4FirmwareUploader::flashSize(int _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void PX4FirmwareUploader::flashProgress(qint64 _t1, qint64 _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}

// SIGNAL 12
void PX4FirmwareUploader::error(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 12, _a);
}

// SIGNAL 13
void PX4FirmwareUploader::statusUpdate(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 13, _a);
}

// SIGNAL 14
void PX4FirmwareUploader::debugUpdate(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 14, _a);
}

// SIGNAL 15
void PX4FirmwareUploader::warning(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 15, _a);
}
QT_END_MOC_NAMESPACE
