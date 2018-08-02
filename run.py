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


def resource_path(ralative_path):
    try:
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")
    return os.path.join(base_path, ralative_path)


if __name__ == "__main__":
    qrc.qInitResources()
    QCoreApplication.setAttribute(Qt.AA_EnableHighDpiScaling, True)
    app = QApplication(sys.argv)

    engine = QQmlApplicationEngine()
    engine.load(QUrl().fromLocalFile(resource_path("run.qml")))
    if engine.rootObjects() is None:
        exit(1)
    qrc.qCleanupResources()
    sys.exit(app.exec_())
