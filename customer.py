#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os
from PyQt5.QtCore import QUrl, QCoreApplication, Qt
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication
import PyQt5.QtQuick
# from ..Customer.qrcc import *
import qrc
def resource_path(ralative_path):
	try:
		base_path = sys._MEIPASS
	except Exception:
		base_path = os.path.abspath(".")
	return os.path.join(base_path, ralative_path)

def customer():
    qrc.qInitResources()
    QCoreApplication.setAttribute(Qt.AA_EnableHighDpiScaling, True)
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    engine.load(QUrl().fromLocalFile(resource_path("customer.qml")))
    if engine.rootObjects() is None:
        exit(1)
    qrc.qCleanupResources()
    sys.exit(app.exec_())

if __name__ == "__main__":
    customer()
