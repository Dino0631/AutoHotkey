script = '#MaxThreadsPerHotkey 2\n#SingleInstance force\n\n\nspammingv := 0 ;add var for each char to spam\n{}::\n	spammingv := !spammingv ;change to prev thing\n	hasletgo := 0\n	while(spammingv=1) ;change to prev thing\n	leftbracket\n		GetKeyState, keyPressed, {} ;put key here\n		if keyPressed = U\n		leftbracket\n			hasletgo := 1\n		rightbracket\n		if hasletgo = 1\n		leftbracket\n			if keyPressed = D\n			leftbracket\n				Return\n			rightbracket\n		rightbracket\n		Send, {} ;put chars to spam here\n	rightbracket\nReturn\n\n~^+r::\n	Reload\nReturn\n\n^!x::\n	ExitApp\nReturn\n\n~Esc::\n	Suspend\nReturn'
inkey = input("key to press?\n")
outkey = input("key to spam?\n")
try:
	script = script.format(inkey, inkey, outkey)
	script = script.replace('leftbracket', '{').replace('rightbracket', '}')
	print(script)
	name = "{}_to_{}.ahk".format(inkey, outkey)
	print(name)
	with open(name, 'w') as f:
		f.write(script)
	print(script)
except Exception as e:
	print(type(e), e)
input()
