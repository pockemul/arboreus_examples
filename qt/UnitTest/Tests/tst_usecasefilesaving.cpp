/* -------------------------------------------------------------------
 *  @doc
 *  @notice Template file is tst_src.cpp
 *
 *  @copyright Arboreus (http://arboreus.systems)
 *  @author Alexandr Kirilov (http://alexandr.kirilov.me)
 *  @created 11/08/2019 at 14:41:04
 * */// --------------------------------------------------------------

// System includes
#include <QtTest>
#include <QCoreApplication>

// Application includes

class UsecaseFileSaving : public QObject {

	Q_OBJECT
public:
	UsecaseFileSaving();
	~UsecaseFileSaving();
private slots:
	void test_case1();
};

UsecaseFileSaving::UsecaseFileSaving() {

}

UsecaseFileSaving::~UsecaseFileSaving() {

}

void UsecaseFileSaving::test_case1() {

}

QTEST_MAIN(UsecaseFileSaving)

#include "tst_usecasefilesaving.moc"