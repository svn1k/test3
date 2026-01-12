#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>
#include <QQmlContext>
#include <QWindow>
#include <QObject>
#include <QString>
#include "clickfunc.h"
Backend::Backend(QObject *parent) : QObject(parent)
{
}
extern int modify;
extern int x;
int k;
int Backend::click(int y)
{
    return y + 1 + modify;
}
