#MaxThreadsPerHotkey 2
#SingleInstance force

~^!r::
	Reload
Return

^!x::
	ExitApp
Return

~$^Esc::
	Suspend
Return

$r::
Send, {Escape}
Sleep, 600
Send, {Down}
Send, z