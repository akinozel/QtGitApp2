#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QByteArray>
#include <QCoreApplication>

int main(int argc, char *argv[])
{
    // Virtual Keyboard modülünü aktifleştir
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    // QML modülünü yükle
    engine.loadFromModule("QtGitApp2", "Main");

    return app.exec();
}
