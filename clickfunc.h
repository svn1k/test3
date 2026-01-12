#ifndef CLICKFUNC_H
#define CLICKFUNC_H

#include <QObject>
#include <QString>

class Backend : public QObject
{
    Q_OBJECT
public:
    explicit Backend(QObject *parent = nullptr);

    // Объявляем функцию, которую можно вызвать из QML
    Q_INVOKABLE int click(int y);
};

#endif // BACKEND_H
