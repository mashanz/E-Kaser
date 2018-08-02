#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os
from PyQt5.QtCore import QUrl, QCoreApplication, Qt, QObject, pyqtSlot
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication, QWindow
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton
from PyQt5 import QtWidgets
import PyQt5.QtQuick
import contextlib
from functools import partial
from customer import customer
from login import login
import qrc
import time
from OtherWindow import Ui_OtherWindow


def resource_path(ralative_path):
    try:
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")
    return os.path.join(base_path, ralative_path)


def main():
    app = QGuiApplication(sys.argv)
    # qrc.qInitResources()
    engine = QQmlApplicationEngine()
    # engine.load(QUrl().fromLocalFile(resource_path("customer.qml")))
    # engine.load(QUrl().fromLocalFile(resource_path("main.qml")))
    engine.load(QUrl().fromLocalFile(resource_path("login.qml")))
    # engine.load(QUrl().fromLocalFile(resource_path("SplitBill.qml")))
    # engine.load(QUrl().fromLocalFile(resource_path("SplitPayment.qml")))

    if engine.rootObjects() is None:
        exit(1)

    # win = engine.rootObjects()[0]
    # button = win.findChild(QObject, "myButton")
    # button.messageRequired.connect(partial(Login, app))
    # button.clicked.connect(partial(Login, app))

    qrc.qCleanupResources()
    sys.exit(app.exec_())


def Login(app):
    print("Login Succes")


if __name__ == "__main__":
    main()

