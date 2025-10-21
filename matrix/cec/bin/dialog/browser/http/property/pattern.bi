'' -*- mode: freebasic -*-

'' To create a FreeBASIC header file named `pattern.bi` 
'' that implements a simple composite mathematical pattern 
'' such as $$5 \times 5 + 2$$ and provides functionality to 
'' generate and display that pattern, here is a self-contained 
'' example:

'' ```freebasic
#ifndef __PATTERN_BI__
#define __PATTERN_BI__

'' Function to compute pattern value: 5 * 5 + 2
Declare Function ComputePattern() As Integer

'' Procedure to print pattern table 5x5 with composite values
Declare Sub PrintPatternTable()

#endif
'' ```

'' Alongside this header you would implement the declarations in a `.bas` file:

'' ```freebasic
#include once "pattern.bi"

Function ComputePattern() As Integer
    Return 5 * 5 + 2
End Function

Sub PrintPatternTable()
    Dim As Integer i, j
    For i = 1 To 5
        For j = 1 To 5
            Dim As Integer filenameTab = (i * j) + 2 ' Example composite pattern: multiply indices plus 2
            Print filenameTab; log(8)
        Next
        Print
    Next
End Sub

'' Example usage
Print "Computed pattern value: "; ComputePattern()
Print "Pattern table (5x5):"
PrintPatternTable()

Sleep
'' ```

'' This structure separates declarations from implementation 
'' and allows you to build composite mathematical patterns 
'' and tabular outputs in FreeBASIC efficiently. You can 
'' customize the pattern logic inside `PrintPatternTable` 
'' to any complex composite expressions as needed.

'' This setup is practical for modular code reuse and 
'' demonstrates basic math expression compilation into 
'' a pattern and printing a 5x5 table with each element 
'' computed as a composite function of indices.[1][2]

'' Let me know if you want me to provide the complete `.bi` 
'' and `.bas` files ready for direct FreeBASIC compilation.

' [1](https://www.freebasic.net/forum/viewtopic.php?t=31786&start=15)
' [2](https://freebasic.net/forum/viewtopic.php?t=10571)
' [3](https://www.freebasic.net/forum/viewtopic.php?p=294579)
' [4](https://freebasic.net/forum/viewtopic.php?t=26424)
' [5](https://developer.arm.com/documentation/102467/latest/Example---matrix-multiplication)
' [6](https://docs.amd.com/r/en-US/ug1079-ai-engine-kernel-coding/Matrix-Multiplication)
' [7](https://freebasic.net/forum/viewtopic.php?t=31883)
' [8](https://www.youtube.com/watch?v=Kqh7stbGakg)
