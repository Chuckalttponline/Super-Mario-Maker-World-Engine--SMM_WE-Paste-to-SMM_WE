WScript.Sleep 500

Dim fso, MyFile
Set fso = CreateObject("Scripting.FileSystemObject")
Set MyFile = fso.GetFile("PASTE_TO_SMMWE.exe")
MyFile.Delete

'Delete the currently executing script
Dim objFSO    'Create a File System Object
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile WScript.ScriptFullName
Set objFSO = Nothing