#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
from PyQt5.QtCore import QUrl, QCoreApplication, Qt
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication
import PyQt5.QtQuick
import qrc

if __name__ == "__main__":
    qrc.qInitResources()
    QCoreApplication.setAttribute(Qt.AA_EnableHighDpiScaling, True)
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    engine.load(QUrl().fromLocalFile("main.qml"))
    if engine.rootObjects() is None:
        exit(1)
    qrc.qCleanupResources()
    sys.exit(app.exec_())


