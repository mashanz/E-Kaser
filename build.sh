#!sh
# while True
# do
	# Building the app
	sudo rm -R build
	sudo rm -R dist
	sudo pyrcc5 qml.qrc -o qrc.py
	#sudo pyi-makespec --noconsole --onefile main.py
	#sudo pyinstaller -d -y --clean build.spec --log-level DEBUG --onefile
	#sudo dist/main
	sudo python3 main.py
	sudo rm *.qmlc 
	sudo rm -R __pycache__
# done
