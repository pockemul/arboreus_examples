/* -------------------------------------------------------------------
 *  @doc
 *  @notice Template file tablemodel.h
 *
 *  @copyright Arboreus (http://arboreus.systems)
 *  @author Alexandr Kirilov (http://alexandr.kirilov.me)
 *  @created 30/08/2019 at 13:17:07
 * */// --------------------------------------------------------------

// System includes
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlProperty>
#include <QQmlComponent>
#include <QQuickItem>

// Application includes
#include "aglobal.h"

// Constants
const QString Main = "qrc:/main.qml";


// QtQuick Application
int main(int Counter, char *Arguments[]) {

	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication Application(Counter, Arguments);

	QQmlApplicationEngine Engine;
	Engine.load(QUrl(Main));
	if (Engine.rootObjects().isEmpty()) {
		return -1;
	}

	QObject *oRootObject = dynamic_cast<QObject*>(Engine.rootObjects()[0]);
	QObject *oBottomBlock = oRootObject->findChild<QObject*>("bottomBlock");

	if (oBottomBlock) {

		QQmlComponent oComponentButtonExit(&Engine,QUrl(QString("qrc:/ButtonExit.qml")));
		QObject *oButtonExit = oComponentButtonExit.create();
		QQuickItem *oItemButtonExit = qobject_cast<QQuickItem*>(oButtonExit);
		oItemButtonExit->setParentItem(qobject_cast<QQuickItem*>(oBottomBlock));
		oButtonExit->setParent(oBottomBlock);

		QQmlComponent oComponentPaddingBottom(&Engine,QUrl(QString("qrc:/PaddingItem.qml")));
		QObject *oPaddingBottom = oComponentPaddingBottom.create();
		oPaddingBottom->setParent(oBottomBlock);
		oPaddingBottom->setProperty("height",30);
		QQuickItem *oItemPaddingBottom = qobject_cast<QQuickItem*>(oPaddingBottom);
		oItemPaddingBottom->setParentItem(qobject_cast<QQuickItem*>(oBottomBlock));

		aLOG << oBottomBlock;
		aLOG << oBottomBlock->children();
	}

	return Application.exec();
}
