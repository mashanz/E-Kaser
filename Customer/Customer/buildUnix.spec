import os
import sys
import site
from inspect import getfile
import PyQt5
import PyQt5.QtQuick

block_cipher = None

site_packages_dir = site.getsitepackages()[0]
qml_dir = os.path.join(site_packages_dir, 'PyQt5', 'Qt', 'qml')

pyqt_dir = os.path.dirname(getfile(PyQt5))
pyqt_dlls =  os.path.join(pyqt_dir, 'plugins', 'platforms')

print("MY DIR"+pyqt_dir)
print("MY DLL"+pyqt_dlls)

added_files = [
         (os.path.join(qml_dir, 'QtQuick'), 'qml/QtQuick'),
         (os.path.join(qml_dir, 'QtQuick.2'), 'qml/QtQuick.2'),
         ( '*.qml', '.' ),
         ( '*.qrc', '.' )
         ]

a = Analysis(['customer.py'],
     pathex=['.', pyqt_dir, pyqt_dlls],
     binaries=None,
     datas= added_files,
     hiddenimports=[],
     hookspath=None,
     runtime_hooks=None,
     excludes=None,
     cipher=block_cipher)

pyz = PYZ(
                a.pure,
                a.zipped_data,
                cipher=block_cipher)

exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          name='customer',
          strip=False,
          console=True,
          debug=True,
          icon='food.ico')

app = BUNDLE(exe,
         name='customer.app',
         icon=None,
         bundle_identifier=None,
         info_plist={
            'NSHighResolutionCapable': 'True'})

coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas,
               strip=False,
               upx=False,
               name='lib')
