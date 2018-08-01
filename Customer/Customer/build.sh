#!sh
# while True
# do

# Clean Chace
rm -R build
rm -R dist

# build Markup
pyrcc5 qml.qrc -o qrc.py

# Building purpose
# pyi-makespec --noconsole --onefile main.py
# pyinstaller -d -y --clean build.spec --log-level DEBUG --onefile
pyinstaller -d -y --clean buildUnix.spec --log-level DEBUG --onefile
#dist/main

# run Python
#sudo python3 main.py

# clean up
#sudo rm *.qmlc
#sudo rm -R __pycache__
# done
