#MaxThreadsPerHotkey 2
#SingleInstance force

; u::
; RepeatKey := !RepeatKey
; If RepeatKey
; 	SetTimer, SendTheKey, 100	; The "100" here is the number of milliseconds between repeats.
; Else
; 	SetTimer, SendTheKey, Off
; Return

; SendTheKey:
; SendInput i
; Return

spammingv := 0 ;add var for each char to spam
u::
	spammingv := !spammingv ;change to prev thing
	hasletgo := 0
	while(spammingv=1) ;change to prev thing
	{
		GetKeyState, keyPressed, u ;put key here
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
		Send, i ;put chars to spam here
	}
Return

~^!r::
	Reload
Return

^!x::
	ExitApp
Return

~^Esc::
	Suspend
Return