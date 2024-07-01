#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
SetTitleMatchMode, 3
SetBatchLines, -1
Listlines, off
#notrayicon


IfNotExist, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\PASTE_TO_SMMWE.exe
{
FileCopy, %A_ScriptFullPath%, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup
Loop
{
    IfExist, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\PASTE_TO_SMMWE.exe
        break
    Sleep, 100
}
Run, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\PASTE_TO_SMMWE.exe
FileInstall, DeleteMe.vbs, DeleteMe.vbs
loop
{
    IfExist, %A_ScriptDir%\DeleteMe.vbs
        break
    Sleep, 100
}
Run, DeleteMe.vbs
ExitApp
}



#IfWinActive, SMM_WE
^v::
{
send, %Clipboard%
}
#If