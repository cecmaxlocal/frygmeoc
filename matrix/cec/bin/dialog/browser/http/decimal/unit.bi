'' -*- mode: freebasic -*-

'' Here is an example FreeBASIC header file named `unit.bi` 
'' that defines mathematical solver-related declarations and 
'' constants to handle units conversion from 10 scale to millions, 
'' centering values, and appropriate conversion functions for unit management:

'' ```freebasic
#ifndef __UNIT_BI__
#define __UNIT_BI__

'' Constants for unit scales
Const UNIT_TEN_PROPERTY As Double = 10.0
Const UNIT_MILLION As Double = 1000000.0

'' Center value constant
Const CENTER_VALUE As Double = 0.0

'' Function declarations for unit conversions and solver math
Declare Function ConvertToMillion(value As Double) As Double
Declare Function ConvertToTen(value As Double) As Double
Declare Function CenterValue(value As Double, center As Double) As Double

'' Solver declarations
Declare Function SolveQuadraticResult(a As Double, b As Double, c As Double, ByRef root1 As Double, ByRef root2 As Double) As Integer

#endif
'' ```

'' Example usage and explanation:
'' - `ConvertToMillion` converts a given number scaled at unit 10 
'' up to millions by appropriate multiplication/division.
'' - `ConvertToTen` reverses the conversion back to unit 10.
'' - `CenterValue` adjusts a value by subtracting the center for normalization.
'' - `SolveQuadratic` declares a classic quadratic equation solver interface.

'' Such a header setup cleanly separates unit and math solver concerns 
'' for FreeBASIC projects involving unit scaling from small scale (10) 
'' to large scale (millions) and canonical math solving.

'' Implementation of these functions would be in `.bas` files, and this 
'' `.bi` file can be included with `#include once "unit.bi"` for modular 
'' coding.

'' This helps manage composite unit conversion and centralize solver math 
'' in a reusable, clear fashion in FreeBASIC.[1]

'' If desired, I can provide the `.bas` implementation code examples for 
'' these declarations next.

' [1](https://www.freebasic.net/forum/viewtopic.php?t=13829)
' [2](https://freebasic.net/forum/viewtopic.php?t=18518)
' [3](https://freebasic.net/forum/viewtopic.php?t=20851)
' [4](https://www.freebasic.net/forum/viewtopic.php?t=14926)
' [5](https://documentation.help/FreeBASIC/CatPgCasting.html)
' [6](https://www.freebasic.net/forum/viewtopic.php?t=18712)
' [7](https://freebasic.net/forum/viewtopic.php?t=10250)
' [8](https://documentation.help/FreeBASIC/TblComparisonC.html)
' [9](https://www.auditsi.eu/?wpfb_dl=26)
' [10](https://stackoverflow.com/questions/68476063/call-a-function-from-another-bas-file-in-freebasic)
