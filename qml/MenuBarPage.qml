/** Copyright (C) Olivier Le Doeuff 2019 
 * Contact: olivier.ldff@gmail.com */

import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

import QQuickMaterialHelper.Components 1.12
import QQuickMaterialHelper.Containers 1.12
import QQuickMaterialHelper.Style 1.12

Page 
{
    id: page

    header: ToolBar { AppBarContent { anchors.fill: parent; title: "Menu Tab Bar" } } // ToolBar

    ColumnLayout
    {
        spacing: 0
        width: parent.width
        SwitchDelegate
        {
            text: "Display Menu"
            Layout.fillWidth: true
            onCheckedChanged: window.menuBar.visible = checked
            Component.onCompleted: checked = true
        } // SwitchDelegate
        SwitchDelegate
        {
            text: "onPrimary"
            Layout.fillWidth: true
            onCheckedChanged: window.menuBar.onPrimary = checked
            Component.onCompleted: checked = true
        } // SwitchDelegate     
    } // ColumnLayout
} // Page
