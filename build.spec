# -*- mode: python -*-

block_cipher = None


a = Analysis(['build.py'],
             pathex=['d:\\bawahtanah\\E-Kaser'],
             binaries=[],
             datas=[],
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
          name='build',
          debug=True,
          strip=False,
          upx=True,
          runtime_tmpdir=None,
          console=True , icon='food.ico')
