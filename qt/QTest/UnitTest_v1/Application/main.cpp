/* -------------------------------------------------------------------
 *  @doc
 *  @notice Template file tablemodel.h
 *
 *  @copyright Arboreus (http://arboreus.systems)
 *  @author Alexandr Kirilov (http://alexandr.kirilov.me)
 *  @created 11/08/2019 at 14:39:18
 * */// --------------------------------------------------------------

// System includes
#include <QGuiApplication>
#include <QQmlApplicationEngine>

// Application includes
#include "aglobal.h"

// Constants
const QString Main = "qrc:/main.qml";


#ifdef QT_UI_TESTS

// UI Tests Application
int main(int Counter, char *Arguments[]) {

	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication Application(Counter, Arguments);

	QQmlApplicationEngine Engine;
	Engine.load(QUrl(Main));
	if (Engine.rootObjects().isEmpty())
		return -1;

	aLOG << "UI Tests application started";

	return Application.exec();
}

#else

// Regular Application
int main(int Counter, char *Arguments[]) {

	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication Application(Counter, Arguments);

	QQmlApplicationEngine Engine;
	Engine.load(QUrl(Main));
	if (Engine.rootObjects().isEmpty())
		return -1;

	aLOG << "Regular application started";

	return Application.exec();
}

#endif

