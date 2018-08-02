# -*- mode: python -*-

import os
import sys
import site
from inspect import getfile
import PyQt5
import PyQt5.QtQuick

block_cipher = None

site_packages_dir = site.getsitepackages()[0]
qml_dir = os.path.join(site_packages_dir, 'Lib','site-packages', 'PyQt5', 'Qt', 'qml')

pyqt_dir = os.path.dirname(getfile(PyQt5))
pyqt_dlls =  os.path.join(pyqt_dir, 'plugins', 'platforms')

print("MY DIR"+pyqt_dir)
print("MY DLL"+pyqt_dlls)

added_files = [
         (os.path.join(qml_dir, 'QtQuick'), 'qml/QtQuick'),
         (os.path.join(qml_dir, 'QtQuick.2'), 'qml/QtQuick.2'),
         ( 'qtquickcontrols2.conf', '.' ),
         ( '*.qml', '.' ),
         ( '*.qrc', '.' )
         ]

a = Analysis(['main.py'],
             pathex=['C:\\Users\\hanjara\\Desktop\\ksr', pyqt_dir, pyqt_dlls],
             binaries=[],
             datas=added_files,
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher)

pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)

exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          name='main',
          debug=True,
          strip=False,
          upx=True,
          runtime_tmpdir=None,
          console=False )
