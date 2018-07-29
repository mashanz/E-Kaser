rm -R build
rm -R dist
pyrcc5 qml.qrc -o qrc.py
pyinstaller -d -y --clean build.spec --log-level DEBUG --windowed
