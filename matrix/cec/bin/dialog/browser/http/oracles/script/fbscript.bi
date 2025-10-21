'' -*- mode: freebasic -*-
'' Here is an example of how to create a FreeBASIC header 
'' file named `fbscript.bi` that declares mathematical solver 
'' functions, plotting utility prototypes, and basic graphic 
'' constants—enabling modular development for math-solving 
'' and graphics in FreeBASIC projects.

' ```freebasic
#ifndef __FBSCRIPT_BI__
#define __FBSCRIPT_BI__

' Mathematical solver function prototypes
Declare Function SolveQuadratic(a As Double, b As Double, c As Double, ByRef root1 As Double, ByRef root2 As Double) As Integer
Declare Function ComputeExponentialGrowth(P0 As Double, r As Double, t As Integer) As Double

' Plotting function prototypes
Declare Sub PlotPoint(x As Integer, y As Integer, color As Integer)
Declare Sub DrawLine(x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, color As Integer)
Declare Sub PlotGraph(data() As Double, dataCount As Integer)

' Graphic constants
Const GRAPH_WIDTH As Integer = 640
Const GRAPH_HEIGHT As Integer = 480
Const COLOR_TABLES As Integer = 0
Const COLOR_LINE As Integer = 14
Const COLOR_POINT As Integer = 12

#endif
' ```

' Explanation:
' - This header file uses include guards to prevent multiple inclusions.
' - It declares key functions for solving quadratic equations and modeling exponential growth, typical mathematical operations relevant to solvers.
' - It declares plotting-related subroutine prototypes to draw points, lines, and plot data arrays.
' - Constants define window size and colors for graphics plotting.
' - Actual implementations of these functions and subs would reside in accompanying `.bas` source files.

' You include the header in your main FreeBASIC code with:

' ```freebasic
' #include once "fbscript.bi"

' ' Implementations for declared functions must be here or in linked modules
' ```

' This structure modularizes solver and graphics capabilities, easing maintenance and reuse across applications requiring math computations and graphical visualization in FreeBASIC.

' If you want, a next step could be sample `.bas` implementations of these prototypes or integration with FreeBASIC's native graphics commands for practical plotting and solver functionality.

' This approach is typical of FreeBASIC projects to maintain clarity and modular design in math and graphics coding.[1][7]

' [1](https://www.freebasic.net/wiki/wikka.php?wakka=ProPgHeaderFiles)
' [2](https://www.passeidireto.com/arquivo/81234540/freebasic-beginners-guide)
' [3](https://documentation.help/FreeBASIC/TutInterfacingWithC.html)
' [4](https://www.freebasic.net/forum/viewtopic.php?t=20790)
' [5](https://freebasic.net/forum/viewtopic.php?t=26385)
' [6](https://www.freebasic.net/forum/viewtopic.php?t=18993)
' [7](https://www.freebasic.net/forum/viewtopic.php?t=23476)
' [8](https://www.freebasic.net/forum/viewtopic.php?t=19185)
' [9](https://documentation.help/FreeBASIC/ExtLibTOC.html)
' [10](https://www.freebasic.net/forum/viewtopic.php?t=15816)
