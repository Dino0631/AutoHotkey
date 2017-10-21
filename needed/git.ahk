; MINGW64:/c/Users/Aidan/Desktop/mestuff/AutoHotKey
; ahk_class mintty
; ahk_exe mintty.exe
#SingleInstance, force

$^v::
WinGetActiveTitle, title
StringLeft, firstpart, title, 7
if firstpart = MINGW64
{
	Send, +{Ins}
}else
{
	Send, ^v
}
Return
::gitstuff::
WinGetActiveTitle, title
StringLeft, firstpart, title, 7
if firstpart = MINGW64
{
	Send git init{Enter}git add .{Enter}git commit -m "thing"{Enter}git remote rm origin{Enter}git remote add origin https://github.com/Dino0631/
}
else
{
	Send, gitstuffpenis
}
Return
::git push::
WinGetActiveTitle, title
StringLeft, firstpart, title, 7
if firstpart = MINGW64
{
	Send, git push origin master{Enter}
}
else
{
	Send, git push
}
Return