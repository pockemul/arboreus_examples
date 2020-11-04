// ----------------------------------------------------------
/*!
	\qmltype
	\brief

	\list
	\li @notice Template file classes/file.h
	\li @copyright Arboreus (http://arboreus.systems)
	\li @author Alexandr Kirilov (http://alexandr.kirilov.me)
	\li @created 04/11/2020 at 21:10:27
	\endlist
*/
// ----------------------------------------------------------

// System includes
import QtQuick 2.15
import Qt.labs.qmlmodels 1.0

// Application includes
import "qrc:/js/AColor.js" as COLORS;


// Component
TableView {

	columnSpacing: 1;
	rowSpacing: 1;
	clip: true;

	model: TableModel {

		TableModelColumn { display: "Capital"; }
		TableModelColumn { display: "Country"; }

		rows: [
			{"Country": "Afghanistan","Capital": "Kabul"},
			{"Country": "Albania","Capital": "Tirana"},
			{"Country": "Algeria","Capital": "Algiers"},
			{"Country": "Andorra","Capital": "Andorra la Vella"},
			{"Country": "Angola","Capital": "Luanda"},
			{"Country": "Antigua and Barbuda","Capital": "Saint John's"},
			{"Country": "Argentina","Capital": "Buenos Aires"},
			{"Country": "Armenia","Capital": "Yerevan"},
			{"Country": "Afghanistan","Capital": "Kabul"},
			{"Country": "Albania","Capital": "Tirana"},
			{"Country": "Algeria","Capital": "Algiers"},
			{"Country": "Andorra","Capital": "Andorra la Vella"},
			{"Country": "Angola","Capital": "Luanda"},
			{"Country": "Antigua and Barbuda","Capital": "Saint John's"},
			{"Country": "Argentina","Capital": "Buenos Aires"},
			{"Country": "Armenia","Capital": "Yerevan"},
			{"Country": "Afghanistan","Capital": "Kabul"},
			{"Country": "Albania","Capital": "Tirana"},
			{"Country": "Algeria","Capital": "Algiers"},
			{"Country": "Andorra","Capital": "Andorra la Vella"},
			{"Country": "Angola","Capital": "Luanda"},
			{"Country": "Antigua and Barbuda","Capital": "Saint John's"},
			{"Country": "Argentina","Capital": "Buenos Aires"},
			{"Country": "Armenia","Capital": "Yerevan"},{"Country": "Afghanistan","Capital": "Kabul"},
			{"Country": "Albania","Capital": "Tirana"},
			{"Country": "Algeria","Capital": "Algiers"},
			{"Country": "Andorra","Capital": "Andorra la Vella"},
			{"Country": "Angola","Capital": "Luanda"},
			{"Country": "Antigua and Barbuda","Capital": "Saint John's"},
			{"Country": "Argentina","Capital": "Buenos Aires"},
			{"Country": "Armenia","Capital": "Yerevan"}
		]
	}

	delegate: Rectangle {

		implicitWidth: parent.width / 2 - 0.5;
		implicitHeight: 50;

		Text {

			text: display;
			anchors.centerIn: parent;
		}
	}
}