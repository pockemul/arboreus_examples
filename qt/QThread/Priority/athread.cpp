#include "athread.h"

AThread::AThread(void) : QThread() {

	aLOG << "AThread created";
}

AThread::~AThread(void) {

	aLOG << "AThread deleted";
}

void AThread::run(void) {

	aLOG << "AThread run";
	for (int i = 0; i < 100; i++) {
		aLOG << qPrintable(objectName()) << ": " << i;
	}
}
