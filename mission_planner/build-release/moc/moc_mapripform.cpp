/****************************************************************************
** Meta object code from reading C++ file 'mapripform.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../libs/opmapcontrol/src/mapwidget/mapripform.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mapripform.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MapRipForm_t {
    QByteArrayData data[19];
    char stringdata0[265];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MapRipForm_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MapRipForm_t qt_meta_stringdata_MapRipForm = {
    {
QT_MOC_LITERAL(0, 0, 10), // "MapRipForm"
QT_MOC_LITERAL(1, 11, 8), // "beginRip"
QT_MOC_LITERAL(2, 20, 0), // ""
QT_MOC_LITERAL(3, 21, 9), // "cancelRip"
QT_MOC_LITERAL(4, 31, 13), // "shouldAutoRip"
QT_MOC_LITERAL(5, 45, 13), // "SetPercentage"
QT_MOC_LITERAL(6, 59, 4), // "perc"
QT_MOC_LITERAL(7, 64, 11), // "SetProvider"
QT_MOC_LITERAL(8, 76, 4), // "prov"
QT_MOC_LITERAL(9, 81, 4), // "zoom"
QT_MOC_LITERAL(10, 86, 16), // "SetNumberOfTiles"
QT_MOC_LITERAL(11, 103, 5), // "total"
QT_MOC_LITERAL(12, 109, 6), // "actual"
QT_MOC_LITERAL(13, 116, 29), // "on_rdoBtn_multiLlayer_clicked"
QT_MOC_LITERAL(14, 146, 32), // "on_spnBoxLevelLimit_valueChanged"
QT_MOC_LITERAL(15, 179, 5), // "value"
QT_MOC_LITERAL(16, 185, 25), // "on_pshBtnBeginRip_clicked"
QT_MOC_LITERAL(17, 211, 23), // "on_cancelButton_clicked"
QT_MOC_LITERAL(18, 235, 29) // "on_rdoBtn_singleLayer_clicked"

    },
    "MapRipForm\0beginRip\0\0cancelRip\0"
    "shouldAutoRip\0SetPercentage\0perc\0"
    "SetProvider\0prov\0zoom\0SetNumberOfTiles\0"
    "total\0actual\0on_rdoBtn_multiLlayer_clicked\0"
    "on_spnBoxLevelLimit_valueChanged\0value\0"
    "on_pshBtnBeginRip_clicked\0"
    "on_cancelButton_clicked\0"
    "on_rdoBtn_singleLayer_clicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MapRipForm[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   69,    2, 0x06 /* Public */,
       3,    0,   70,    2, 0x06 /* Public */,
       4,    1,   71,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    1,   74,    2, 0x0a /* Public */,
       7,    2,   77,    2, 0x0a /* Public */,
      10,    2,   82,    2, 0x0a /* Public */,
      13,    0,   87,    2, 0x08 /* Private */,
      14,    1,   88,    2, 0x08 /* Private */,
      16,    0,   91,    2, 0x08 /* Private */,
      17,    0,   92,    2, 0x08 /* Private */,
      18,    0,   93,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    2,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    6,
    QMetaType::Void, QMetaType::QString, QMetaType::Int,    8,    9,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   11,   12,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   15,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void MapRipForm::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MapRipForm *_t = static_cast<MapRipForm *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->beginRip(); break;
        case 1: _t->cancelRip(); break;
        case 2: _t->shouldAutoRip((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->SetPercentage((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 4: _t->SetProvider((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 5: _t->SetNumberOfTiles((*reinterpret_cast< const int(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 6: _t->on_rdoBtn_multiLlayer_clicked(); break;
        case 7: _t->on_spnBoxLevelLimit_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->on_pshBtnBeginRip_clicked(); break;
        case 9: _t->on_cancelButton_clicked(); break;
        case 10: _t->on_rdoBtn_singleLayer_clicked(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MapRipForm::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MapRipForm::beginRip)) {
                *result = 0;
            }
        }
        {
            typedef void (MapRipForm::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MapRipForm::cancelRip)) {
                *result = 1;
            }
        }
        {
            typedef void (MapRipForm::*_t)(bool );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MapRipForm::shouldAutoRip)) {
                *result = 2;
            }
        }
    }
}

const QMetaObject MapRipForm::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_MapRipForm.data,
      qt_meta_data_MapRipForm,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *MapRipForm::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MapRipForm::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_MapRipForm.stringdata0))
        return static_cast<void*>(const_cast< MapRipForm*>(this));
    return QWidget::qt_metacast(_clname);
}

int MapRipForm::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void MapRipForm::beginRip()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void MapRipForm::cancelRip()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}

// SIGNAL 2
void MapRipForm::shouldAutoRip(bool _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE