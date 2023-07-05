import QtQuick 2.7
import Lomiri.Components 1.3

Page {
    id: aboutPage

    header: PageHeader {
        title: i18n.tr("About")
    }

    ScrollView {
        id: scrollView
        anchors {
            top: aboutPage.header.bottom
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            leftMargin: units.gu(2)
            rightMargin: units.gu(2)
        }

        clip: true

        Column {
            id: aboutColumn
            spacing: units.gu(2)
            width: scrollView.width

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("ut-backup")
                fontSize: "x-large"
            }

            LomiriShape {
                width: units.gu(12); height: units.gu(12)
                anchors.horizontalCenter: parent.horizontalCenter
                radius: "medium"
                image: Image {
                    source: Qt.resolvedUrl("../assets/logo.png")
                }
            }

            Label {
                width: parent.width
                linkColor: LomiriColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("Version: ") + "%1".arg(Qt.application.version)
            }

            Label {
                width: parent.width
                linkColor: LomiriColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("A Graphical Backup Tool for Ubuntu Touch Devices.")
            }

            Label {
                width: parent.width
                linkColor: LomiriColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: "<a href='https://github.com/Aarontheissueguy/WaydroidHelper'>" + i18n.tr("SOURCE") + "</a> | <a href='https://github.com/Aarontheissueguy/WaydroidHelper/issues'>" + i18n.tr("ISSUES") + "</a> | <a href='https://www.paypal.com/paypalme/AaronTheIssueGuy'>" + i18n.tr("DONATE") + "</a>"
                onLinkActivated: Qt.openUrlExternally(link)
            }           

            Label {
                width: parent.width
                linkColor: LomiriColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                style: Font.Bold
                text: i18n.tr("Copyright") + " (c) 2023 Henrik Rosenke"
            }
            
        }
    }
}
