/****************************************************************************
** Meta object code from reading C++ file 'dataselectionscreen.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/dataselectionscreen.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'dataselectionscreen.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_DataSelectionScreen_t {
    QByteArrayData data[10];
    char stringdata0[122];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_DataSelectionScreen_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_DataSelectionScreen_t qt_meta_stringdata_DataSelectionScreen = {
    {
QT_MOC_LITERAL(0, 0, 19), // "DataSelectionScreen"
QT_MOC_LITERAL(1, 20, 11), // "itemEnabled"
QT_MOC_LITERAL(2, 32, 0), // ""
QT_MOC_LITERAL(3, 33, 4), // "name"
QT_MOC_LITERAL(4, 38, 12), // "itemDisabled"
QT_MOC_LITERAL(5, 51, 27), // "clearSelectionButtonClicked"
QT_MOC_LITERAL(6, 79, 13), // "onItemChanged"
QT_MOC_LITERAL(7, 93, 16), // "QTreeWidgetItem*"
QT_MOC_LITERAL(8, 110, 4), // "item"
QT_MOC_LITERAL(9, 115, 6) // "column"

    },
    "DataSelectionScreen\0itemEnabled\0\0name\0"
    "itemDisabled\0clearSelectionButtonClicked\0"
    "onItemChanged\0QTreeWidgetItem*\0item\0"
    "column"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_DataSelectionScreen[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x06 /* Public */,
       4,    1,   37,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    0,   40,    2, 0x08 /* Private */,
       6,    2,   41,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 7, QMetaType::Int,    8,    9,

       0        // eod
};

void DataSelectionScreen::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DataSelectionScreen *_t = static_cast<DataSelectionScreen *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->itemEnabled((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->itemDisabled((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->clearSelectionButtonClicked(); break;
        case 3: _t->onItemChanged((*reinterpret_cast< QTreeWidgetItem*(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (DataSelectionScreen::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&DataSelectionScreen::itemEnabled)) {
                *result = 0;
            }
        }
        {
            typedef void (DataSelectionScreen::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&DataSelectionScreen::itemDisabled)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject DataSelectionScreen::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_DataSelectionScreen.data,
      qt_meta_data_DataSelectionScreen,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *DataSelectionScreen::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *DataSelectionScreen::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_DataSelectionScreen.stringdata0))
        return static_cast<void*>(const_cast< DataSelectionScreen*>(this));
    return QWidget::qt_metacast(_clname);
}

int DataSelectionScreen::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void DataSelectionScreen::itemEnabled(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void DataSelectionScreen::itemDisabled(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
