#ifndef CLICKFUNC_H
#define CLICKFUNC_H

#include <QObject>
#include <QString>

class Backend : public QObject
{
    Q_OBJECT
public:
    explicit Backend(QObject *parent = nullptr);

    Q_INVOKABLE void modify_up();
    Q_INVOKABLE int click(int y);
};

#endif // BACKEND_H
