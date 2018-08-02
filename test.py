import sys
import os

if sys.platform == "linux" or sys.platform == "linux2":
    # TODO remove this OpenGL fix when PyQt 
    # doesn't require OpenGL to be loaded first.
    # NOTE This must be placed before any other imports!
    import ctypes
    from ctypes.util import find_library

    libGL = find_library("GL")
    ctypes.CDLL(libGL, ctypes.RTLD_GLOBAL)

from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtQml import *
from PyQt5.QtWidgets import *
from functools import partial
import qrc


def resource_path(ralative_path):
    try:
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")
    return os.path.join(base_path, ralative_path)


def Login(aps):
    print("Poke")
    exit(1)
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load(QUrl().fromLocalFile(resource_path("login.qml")))
    if engine.rootObjects() is None:
        exit(1)
    win = engine.rootObjects()[0]
    button = win.findChild(QObject, "myButton")
    button.clicked.connect(partial(Login, app))
    print("close?")
    return app.exec_()
    # app = QGuiApplication(sys.argv)
    # engine = QQmlApplicationEngine()
    # engine.load(QUrl().fromLocalFile(resource_path("main.qml")))
    # if engine.rootObjects() is None:
    #     exit(1)
    # return app.exec_()


def main():
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load(QUrl().fromLocalFile(resource_path("login.qml")))
    if engine.rootObjects() is None:
        exit(1)
    win = engine.rootObjects()[0]
    button = win.findChild(QObject, "myButton")
    button.clicked.connect(partial(Login, app))
    return app.exec_()


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    main()
    # sys.exit(main())
