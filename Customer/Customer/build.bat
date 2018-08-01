pyrcc5 qml.qrc -o qrc.py
pyinstaller -d -y --clean build.spec --log-level DEBUG --onedir --onefile