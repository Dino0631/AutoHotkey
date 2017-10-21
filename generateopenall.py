try:
	import os
	BATcode = '@echo off\nSETLOCAL ENABLEDELAYEDEXPANSION\n\nfor %%v in ("*.ahk") do (\n	start "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%%~v"\n)'
	startpath = os.path.curdir
	n = 0
	def writeopenallahk(dirname):
		os.remove('{}/openallahk.txt'.format(dirname))
		with open('{}/openallahk.bat'.format(dirname), 'w') as f:
			print(dir(f))
			f.write(BATcode)

	for root, dirs, files in os.walk(startpath):
		if '.git' in root: #dont put open all ahk file in git dirs.
			continue
		dirname = os.path.basename(root)
		level = root.replace(startpath, '').count(os.sep)
		indent = ' ' * 4 * (level)
		print(indent, root)
		print('{}{}/'.format(indent, dirname))
		# print('{}{}/'.format(indent, root))
		# subindent = ' ' * 4 * (level + 1)
		# for f in files:
		# 	print('{}{}'.format(subindent, f))
		writeopenallahk(root)

except Exception as e:
	print(type(e), e)
input()