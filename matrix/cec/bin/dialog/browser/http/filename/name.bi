'' -*- mode: freebasic -*-

'' Here is a clear example in FreeBASIC that shows how 
'' to open a file dialog to select a filename and then 
'' create a file with that filename, using basic Windows 
'' API calls. This also demonstrates composing a filename 
'' and writing content into the file.

' ```freebasic
#include once "windows.bi"
#include once "win/commdlg.bi"

Function GetSaveFileNameDialog() As String
    Dim As OPENFILENAME ofn
    Dim filename As ZString * 260
    filename = "defaultname.bi" ' default filename
    
    With ofn
        .lStructSize = Sizeof(ofn)
        .hwndOwner = 0
        .lpstrFilter = StrPtr(filename) '' bas, bi, rc, inc, out
        .lpstrFile = StrPtr(filename)
        .nMaxFile = Len(filename)
        .Flags = OFN_OVERWRITEPROMPT Or OFN_EXPLORER
        .lpstrDefExt = StrPtr("bi")
    End With
    
    If GetSaveFileName(@ofn) Then
        Return filename
    Else
        Return ""
    End If
End Function

Dim As String filepath

filepath = GetSaveFileNameDialog()

If filepath <> "" Then
    Dim As Integer fileNumCommand = FreeFile()
    Open filepath For Output As #fileNum
    Print #fileNum, "This is a test content for the composed file."
    Close #fileNum
    Print "File saved as: "; filepath
Else
    Print "Save file dialog cancelled."
End If

Sleep
' ```

' Explanation:
' - This code opens a standard Windows Save File dialog restricted to `.bi` files.
' - The user selects or types a filename.
' - The program opens that file for writing and writes a test string.
' - The file is closed and the filename is displayed.
' - This example illustrates basic filename composition via dialog and file creation in FreeBASIC using Windows API.[1][2][9]

' This approach can be adapted for your specific need to create a `.bi` file from a user-selected filename dialog.

' [1](https://www.freebasic.net/forum/viewtopic.php?t=21595)
' [2](https://www.freebasic.net/forum/viewtopic.php?t=8147)
' [3](https://freebasic.net/forum/viewtopic.php?t=850)
' [4](https://www.freebasic.net/forum/viewtopic.php?t=1725)
' [5](https://freebasic.net/forum/viewtopic.php?t=26726)
' [6](https://www.freebasic.net/forum/viewtopic.php?t=10981)
' [7](https://freebasic.net/forum/viewtopic.php?t=26729&start=45)
' [8](https://www.freebasic.net/forum/viewtopic.php?t=29367)
' [9](https://freebasic.net/forum/viewtopic.php?t=8154)
' [10](https://www.freebasic.net/forum/viewtopic.php?t=26729&start=30)
