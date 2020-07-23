/* -------------------------------------------------------------------
 *  @doc
 *  @notice Template file tablemodel.h
 *
 *  @copyright Arboreus (http://arboreus.systems)
 *  @author Alexandr Kirilov (http://alexandr.kirilov.me)
 *  @created 23/07/2020 at 17:07:51
 * */// --------------------------------------------------------------

// System includes
#include <QGuiApplication>
#include <QQmlApplicationEngine>

// Application includes
#include "alogger.h"
#include "aglobal.h"

// Constants and definitions


// Qt Quick Application
int main(int inCounter, char *inArguments[]) {

	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication oApplication(inCounter, inArguments);

	QQmlApplicationEngine oEngine;
	const QUrl oUrl(QStringLiteral("qrc:/main.qml"));
	QObject::connect(
		&oEngine, &QQmlApplicationEngine::objectCreated,
		&oApplication, [oUrl](QObject *inObject, const QUrl &inObjectURL) {
			if (!inObject && oUrl == inObjectURL) {
				QCoreApplication::exit(-1);
			}
		}, Qt::QueuedConnection
	);
	oEngine.load(oUrl);

	void* oPointer1 = nullptr;
	ALOG << "oPointer1: " << oPointer1 << endl;

	int oInteger1 = 10;
	ALOG << "oInteger1: " << oInteger1 << endl;

	void* oPointer2 = &oInteger1;
	ALOG << "oPointer2: " << oPointer2 << endl;
	ALOG << "oPointer2 value: " << *static_cast<int*>(oPointer2) << endl;
	ALOG << "oInteger1: " << oInteger1 << endl;
	*static_cast<int*>(oPointer2) = 12;
	ALOG << "oPointer2 value: " << *static_cast<int*>(oPointer2) << endl;
	ALOG << "oInteger1: " << oInteger1 << endl;

	int* oPointer3 = &oInteger1;
	ALOG << "oPointer3: " << oPointer3 << endl;
	ALOG << "oPointer3 value: " << *oPointer3 << endl;
	ALOG << "oInteger1: " << oInteger1 << endl;
	*oPointer3 = 14;
	ALOG << "oPointer3 value: " << *oPointer3 << endl;
	ALOG << "oInteger1: " << oInteger1 << endl;

	float oFloat1 = 1.1f;
	AGlobal::mPrintValue("oFloat1",&oFloat1,ADataType::Float);

	char* oChar1 = (char*)"Char value";
	AGlobal::mPrintValue("oChar1",oChar1,ADataType::Char);

	int* oPointerInteger1 = new int(0);
	float* oPointerFloat2 = new float(1.23456);
	*oPointerInteger1 = static_cast<int>(*oPointerFloat2);
	ALOG << "oPointerFloat2: " << *oPointerFloat2 << endl;
	ALOG << "oPointerInteger1: " << oPointerInteger1 << endl;
	ALOG << "oPointerInteger1 value: " << *oPointerInteger1 << endl;
	*oPointerFloat2 = 2.3456f;
	ALOG << "oPointerFloat2: " << *oPointerFloat2 << endl;
	ALOG << "oPointerInteger1: " << oPointerInteger1 << endl;
	ALOG << "oPointerInteger1 value: " << *oPointerInteger1 << endl;
	*oPointerInteger1 = 10;
	ALOG << "oPointerFloat2: " << *oPointerFloat2 << endl;
	ALOG << "oPointerInteger1: " << oPointerInteger1 << endl;
	ALOG << "oPointerInteger1 value: " << *oPointerInteger1 << endl;

	ALOG << "Pointers demo - OK" << endl;

	return oApplication.exec();
}
