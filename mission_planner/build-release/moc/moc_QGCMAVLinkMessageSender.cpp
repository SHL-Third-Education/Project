/****************************************************************************
** Meta object code from reading C++ file 'QGCMAVLinkMessageSender.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/mavlink/QGCMAVLinkMessageSender.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGCMAVLinkMessageSender.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QGCMAVLinkMessageSender_t {
    QByteArrayData data[4];
    char stringdata0[45];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QGCMAVLinkMessageSender_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QGCMAVLinkMessageSender_t qt_meta_stringdata_QGCMAVLinkMessageSender = {
    {
QT_MOC_LITERAL(0, 0, 23), // "QGCMAVLinkMessageSender"
QT_MOC_LITERAL(1, 24, 11), // "sendMessage"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 7) // "refresh"

    },
    "QGCMAVLinkMessageSender\0sendMessage\0"
    "\0refresh"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QGCMAVLinkMessageSender[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   24,    2, 0x0a /* Public */,
       3,    0,   25,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Bool,
    QMetaType::Void,

       0        // eod
};

void QGCMAVLinkMessageSender::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGCMAVLinkMessageSender *_t = static_cast<QGCMAVLinkMessageSender *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { bool _r = _t->sendMessage();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 1: _t->refresh(); break;
        default: ;
        }
    }
}

const QMetaObject QGCMAVLinkMessageSender::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_QGCMAVLinkMessageSender.data,
      qt_meta_data_QGCMAVLinkMessageSender,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QGCMAVLinkMessageSender::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QGCMAVLinkMessageSender::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QGCMAVLinkMessageSender.stringdata0))
        return static_cast<void*>(const_cast< QGCMAVLinkMessageSender*>(this));
    return QWidget::qt_metacast(_clname);
}

int QGCMAVLinkMessageSender::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE