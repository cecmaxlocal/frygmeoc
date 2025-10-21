'' -*- mode: freebasic -*- 

'' In FreeBASIC, a `.bi` file is a header file usually containing 
'' declarations, constants, types, and function prototypes used 
'' to share common definitions across source files. To create a 
'' simple `script.bi` header file for FreeBASIC, you can define 
'' reusable declarations and constants relevant to your project.

'' Here’s an example content for `script.bi` you can create with 
'' any text editor:

'' ```freebasic
'' script.bi - example header file for FreeBASIC

#if fb_script

#define fb_script

' Constants
Const MAX_FILENAME_LEN As Integer = 260

' Declare shared variables
Dim Shared Filename As ZString * MAX_FILENAME_LEN

' Example types
Type Person
    Name As ZString * 50
    Age As Integer
End Type

' Function prototypes
Declare Sub PrintPerson(p As Person)

#endif
'' ```

'' Usage:
'' - Save the above content as `script.bi`.
'' - In your FreeBASIC `.bas` source file, include it with:

'' ```

'' This header file pattern helps modularize your code by sharing declarations 
'' while keeping implementation code in `.bas` files. Remember to use the include 
'' guards (`#Ifndef/#Define/#End If`) or `#include once` to avoid multiple inclusions.

'' Creating `script.bi` this way provides you a structured starting point 
'' for FreeBASIC projects requiring shared constants, types, and declarations.

'' Let me know if you want examples for specific declarations or library 
'' integrations for HTTP, databases, or network operations in FreeBASIC headers.[1]

' [1](https://www.freebasic.net/wiki/wikka.php?wakka=ProPgHeaderFiles)
' [2](https://www.freebasic.net/wiki/wikka.php?wakka=ProPgPrebuiltLibraries)
' [3](https://www.freebasic.net/forum/viewtopic.php?t=15364)
' [4](https://www.freebasic.net/forum/viewtopic.php?t=20689)
' [5](https://freebasic.net/forum/viewtopic.php?t=20851)
' [6](https://www.freebasic.net/forum/viewtopic.php?t=19376)
' [7](https://www.auditsi.eu/?wpfb_dl=26)
' [8](https://documentation.help/FreeBASIC/documentation.pdf)
' [9](https://www.freebasic.net/forum/viewtopic.php?t=21166)
' [10](https://documentation.help/FreeBASIC/KeyPgMetaInclude.html)