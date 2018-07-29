#!sh
# while True
# do

# Clean Chace
sudo rm -R build
sudo rm -R dist

# build Markup
sudo pyrcc5 qml.qrc -o qrc.py

# Building purpose
sudo pyi-makespec --noconsole --onefile main.py
sudo pyinstaller -d -y --clean build.spec --log-level DEBUG --onefile
sudo dist/main

# run Python
#sudo python3 main.py

# clean up
sudo rm *.qmlc
sudo rm -R __pycache__
# done
