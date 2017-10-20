#MaxThreadsPerHotkey 2
#SingleInstance force


spammingv := 0 ;add var for each char to spam
r::
	spammingv := !spammingv ;change to prev thing
	hasletgo := 0
	while(spammingv=1) ;change to prev thing
	{
		GetKeyState, keyPressed, r ;put key here
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

~^+r::
	Reload
Return

^!x::
	ExitApp
Return

~Esc::
	Suspend
Return