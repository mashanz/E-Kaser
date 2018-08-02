#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os
from PyQt5.QtCore import QUrl, QCoreApplication, Qt, QObject
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication
import PyQt5.QtQuick
import contextlib
from customer import customer
from login import login
import qrc


def resource_path(ralative_path):
    try:
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")
    return os.path.join(base_path, ralative_path)


def main():
    # qrc.qInitResources()
    QCoreApplication.setAttribute(Qt.AA_EnableHighDpiScaling, True)
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    # engine.load(QUrl().fromLocalFile(resource_path("customer.qml")))
    # engine.load(QUrl().fromLocalFile(resource_path("main.qml")))
    engine.load(QUrl().fromLocalFile(resource_path("login.qml")))
    # engine.load(QUrl().fromLocalFile(resource_path("SplitBill.qml")))
    # engine.load(QUrl().fromLocalFile(resource_path("SplitPayment.qml")))

    # if engine.rootObjects() is None:
    #     exit(1)

    win = engine.rootObjects()[0]
    button = win.findChild(QObject, "myButton")
    button.messageRequired.connect(Login)
    button.clicked.connect(Login)

    # qrc.qCleanupResources()
    # win.show()
    sys.exit(app.exec_())


@contextlib.contextmanager
def application():
    app = PyQt5.QtGui.QGuiApplication(sys.argv)
    yield
    app.exec_()

def Login():
    print("")

def newEngine():
    qml = QUrl.fromLocalFile("login.qml")

    with application():
        window = PyQt5.QtQuick.QQuickView()
        window.setTitle("Manager")
        window.setResizeMode(window.SizeRootObjectToView)
        engine = window.engine()
        window.setSource(qml)
        window.show()


if __name__ == "__main__":
    # newEngine()
    main()