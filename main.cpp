#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>
#include <QQmlContext>
#include <QWindow>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    return app.exec();
}
