#MaxThreadsPerHotkey 2
#SingleInstance force
RepeatKey := false
u::
RepeatKey := !RepeatKey
if RepeatKey
{
	send, {i down}
}
else
{
	send, {i up}
}

Return

; spammingv := 0 ;add var for each char to spam
; u::
; 	spammingv := !spammingv ;change to prev thing
; 	hasletgo := 0
; 	while(spammingv=1) ;change to prev thing
; 	{
; 		GetKeyState, keyPressed, u ;put key here
; 		if keyPressed = U
; 		{
; 			hasletgo := 1
; 		}
; 		if hasletgo = 1
; 		{
; 			if keyPressed = D
; 			{
; 				Return
; 			}
; 		}
; 		Send, i ;put chars to spam here
; 		Sleep, 100
; 	}
; Return

~^!r::
	Reload
Return

^!x::
	ExitApp
Return

~^Esc::
	Suspend
Return