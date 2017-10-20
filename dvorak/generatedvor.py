QWERTY = list('''-=qwertyuiop[]sdfghjkl;'zxcvbn,./_+QWERTYUIOP{}SDFGHJKL:"ZXCVBN<>?''')
DVORAK = list('''[]',.pyfgcrl/=oeuidhtns-;qjkxbwvz{}"<>PYFGCRL?+OEUIDHTNS_:QJKXBWVZ''')
dvo2qwe = {}
qwe2dvo = {}
n = 0
dvo2qwe = dict(zip(DVORAK, QWERTY))
qwe2dvo = dict(zip(QWERTY, DVORAK))

AHKcode = '#SingleInstance force\n\n'
try:
	for q in qwe2dvo:
		newline = "${}::{}\nReturn\n".format(q, qwe2dvo[q])
		AHKcode += newline 
	with open('dvorak.ahk', 'w') as f:
		f.write(AHKcode)
except Exception as e:
	print(e)

input()