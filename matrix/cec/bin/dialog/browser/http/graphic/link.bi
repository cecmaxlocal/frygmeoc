'' -*- mode: freebasic -*-
'' Here is an example of a FreeBASIC header file named 
'' `link.bi` that declares a 6 x 7 table structure and 
'' includes declarations relevant for HTTP handling, 
'' filename management, graphic plotting, and image 
'' handling. This composite header organizes variables 
'' and function prototypes you might use in a FreeBASIC 
'' project involving table data, HTTP interactions, 
'' file operations, and graphics:

'' ```freebasic
#ifndef __LINK_BI__
#define __LINK_BI__

'' Constants for table dimensions
Const TABLE_ROWS As Integer = 6
Const TABLE_COLS As Integer = 7

'' Declare table as 2D array of integers
Dim Shared TableData(TABLE_ROWS - 1, TABLE_COLS - 1) As Integer

'' HTTP related constants and function prototypes
Const HTTP_PORT As Integer = 80
Const HTTPS_PORT As Integer = 443

Declare Function HttpGetRequest(url As ZString) As String
Declare Function HttpPostRequest(url As ZString, payload As ZString) As String

'' Filename handling
Const MAX_FILENAME_LEN As Integer = 260
Dim Shared FilenameGraphicPlot As ZString * MAX_FILENAME_LEN

'' Graphics and image handling prototypes
Const GRAPH_WIDTH As Integer = 640
Const GRAPH_HEIGHT As Integer = 480

Declare Sub DrawImage(filename As ZString, x As Integer, y As Integer)
Declare Sub DrawTable(data() As Integer, rows As Integer, cols As Integer)

#endif
'' ```

'' Explanation:
'' - `TableData` is a 6x7 shared integer array designed to store numerical table data.
'' - HTTP functions `HttpGetRequest` and `HttpPostRequest` are declared for network 
'' connectivity (implementations would involve external libs or APIs).
'' - `Filename` is a shared string for file operations.
'' - Graphic constants define a fixed-size drawing area.
'' - Procedures `DrawImage` and `DrawTable` declared for graphical rendering 
'' of images and table data.

'' You would implement the actual functions and subs in your `.bas` source files 
'' and include this header with `#include once "link.bi"`.

'' This modular approach lets you keep your network, file, table, and graphics 
'' code organized and reusable in FreeBASIC projects combining HTTP-accessed data, 
'' table management, file I/O, and graphical output.

'' If needed, I can help provide example implementations of the declared functions 
'' or usage snippets for better understanding and practical coding.

'' This method fits well with FreeBASIC's flexible header and module system 
'' to compose functionalities cleanly in a single `.bi` header file.[1][5]

' [1](https://www.freebasic.net/wiki/wikka.php?wakka=ProPgHeaderFiles)
' [2](https://freebasic.net/forum/viewtopic.php?t=20851)
' [3](https://www.freebasic.net/forum/viewtopic.php?t=20689)
' [4](https://www.freebasic.net/wiki/wikka.php?wakka=TutInterfacingWithC)
' [5](https://www.freebasic.net/wiki/wikka.php?wakka=FaqPggfxlib2)
' [6](https://documentation.help/FreeBASIC/documentation.pdf)
' [7](https://freebasic.net/wiki/ProPgSharedLibraries)
' [8](https://documentation.help/FreeBASIC/ProPgSharedLibraries.html)
' [9](https://www.freebasic.net/forum/viewtopic.php?t=15364)
' [10](https://gist.github.com/CherryDT/8e8c10c7139179774c2e6dff88433559)
