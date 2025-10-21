'' -*- mode: freebasic -*-

'' Here is an example of a FreeBASIC header file `graphic.bi` 
'' that declares foundational elements for math solvers, units 
'' with decimal handling, plotting, matrix math, command handling, 
'' and figure management related to graphics. This provides a modular 
'' interface to use in your FreeBASIC projects involving math 
'' and graphics:

'' ```freebasic
#ifndef __GRAPHIC_BI__
#define __GRAPHIC_BI__

' Mathematical solver declarations
Declare Function SolveQuadraticPattern(a As Double, b As Double, c As Double, ByRef root1 As Double, ByRef root2 As Double) As Integer
Declare Function DecimalToFraction(decimalVal As Double, ByRef numerator As Integer, ByRef denominator As Integer) As Integer

' Plotting declarations
Declare Sub PlotPointUnit(x As Integer, y As Integer, color As Integer)
Declare Sub DrawLinePlot(x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, color As Integer)

' Matrix operations
Declare Sub MatrixMultiply(ByRef A As Double, ByRef B As Double, ByRef Result As Double, _
                            rowsA As Integer, colsA As Integer, colsB As Integer)
Declare Sub PrintMatrix(ByRef M As Double, rows As Integer, cols As Integer)

' Command handling
Declare Sub ExecuteCommand(cmd As ZString)

' Figure related constants and declarations
Const SCREEN_WIDTH As Integer = 640
Const SCREEN_HEIGHT As Integer = 480

Declare Sub DrawFigure(x As Integer, y As Integer, scale As Double)

#endif
' ```

' Explanation:
' - Solvers for quadratic equations and decimal-to-fraction conversion for handling numerical units precisely.
' - Basic plot commands for points and lines to create plots and graphs.
' - Matrix multiplication and print functions for matrix math operations.
' - A placeholder `ExecuteCommand` procedure for command pattern or CLI handling.
' - Figure drawing declarations with screen size constants to keep all graphic-related elements together.

' Implementations of these declarations would be in your `.bas` files, calling native FreeBASIC graphic functions like `Plot`, `Line`, and using arrays for matrix storage and operations.

' This modular design promotes clarity and reuse when working with math, graphics, and commands together in FreeBASIC.

' Let me know if you want example source (`.bas`) implementations or integration examples for plotting and matrix operations.

' This structure aligns with typical FreeBASIC header file practices for math and graphics modules.[1][2][11]

' [1](https://www.freebasic.net/wiki/wikka.php?wakka=FaqPggfxlib2)
' [2](https://www.freebasic.net/wiki/wikka.php?wakka=ProPgHeaderFiles)
' [3](https://www.freebasic.net/wiki/wikka.php?wakka=GfxInternalFormats)
' [4](https://www.freebasic.net/wiki/wikka.php?wakka=TutFBgfxImgAndFontBuf)
' [5](https://freebasic.net/forum/viewtopic.php?t=29652)
' [6](https://documentation.help/FreeBASIC/KeyPgGetgraphics.html)
' [7](https://www.freebasic.net/forum/viewtopic.php?t=29249)
' [8](https://documentation.help/FreeBASIC/KeyPgBload.html)
' [9](https://freebasic.net/forum/viewtopic.php?t=9943)
' [10](https://www.freebasic.net/wiki/wikka.php?wakka=KeyPgScreengraphics)
' [11](https://www.freebasic.net/forum/viewtopic.php?t=23476)
