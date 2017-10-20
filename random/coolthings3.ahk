#MaxThreadsPerHotkey 1
#SingleInstance force

Toggle = 0

g::
	Toggle := !Toggle
	While Toggle{
		Send v
	}
return

^+r::
	Reload
Return

^!x::
	ExitApp
Return

~Esc::
	Suspend
Return


