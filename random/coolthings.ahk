#MaxThreadsPerHotkey 2
#SingleInstance force


spammingv := 0 ;add var for each char to spam
g::
	spammingv := !spammingv ;change to prev thing
	hasletgo := 0
	while(spammingv=1) ;change to prev thing
	{
		GetKeyState, keyPressed, g ;put key here
		if keyPressed = U
		{
			hasletgo := 1
		}
		if hasletgo = 1
		{
			if keyPressed = D
			{
				Return
			}
		}
		Send, e ;put chars to spam here
	}
Return

^+h::
	Send #s
	Send cmd{Enter}

^+r::
	Reload
Return

^!x::
	ExitApp
Return

~Esc::
	Suspend
Return


