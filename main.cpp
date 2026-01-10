#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>
#include <QQmlContext>
#include <QWindow>
#include <QObject>
#include <QString>
#include <clickfunc.h>
using namespace std;
int modify = 0;
int x;
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("textContent", QString::number(x));
    Backend clickfunc;
    engine.rootContext()->setContextProperty("cppClicker", &clickfunc);
    const QUrl url("qrc:/path/main.qml");
    engine.load(url);
    return app.exec();
}

