'' A FreeBASIC include file with extension .bi named 
'' parabolaPoint.bi can define functions or subroutines 
'' to calculate parabola points based on the quadratic 
'' equation $$y = ax^2 + bx + c$$.

'' A simple example parabolaPoint.bi could declare a 
'' function to calculate y given x and parameters a, b, c:

'' ```freebasic
'' parabolaPoint.bi - Calculate y coordinate for a parabola at given x

Function ParabolaY(a As Double, b As Double, c As Double, x As Double) As Double
    Return a*x*x + b*x + c
End Function
'' ```

'' This .bi file can then be included in any .bas FreeBASIC source by using 
'' `#include "parabolaPoint.bi"` and calling `ParabolaY` with appropriate 
'' parameters.

'' This approach provides a reusable utility function encapsulated in a single 
'' include file for calculating points on a parabola.

'' No libraries or external dependencies are required. This fits FreeBASIC's 
'' typical usage of .bi files to share declarations and small helper functions 
'' among projects.

'' This answers the request to create a parabolaPoint.bi in FreeBASIC, 
'' providing a clear, simple function for evaluating parabola points 
'' mathematically.[1][4][10]

' [1](https://www.youtube.com/watch?v=yW0wRXDAGBc)
' [2](http://www.streetinfo.lu/computing/programming/windows/fbc.html)
' [3](https://stackoverflow.com/questions/717762/how-to-calculate-the-vertex-of-a-parabola-given-three-points)
' [4](https://freebasic.net/forum/viewtopic.php?t=12420)
' [5](https://math.wonderhowto.com/how-to/find-extra-points-for-parabola-quadractic-equation-302981/)
' [6](https://freebasic.net/forum/viewtopic.php?t=11083)
' [7](https://www.scribd.com/document/525788431/Parabola-Basics-and-Shortcut-Formula)
' [8](https://www.freebasic.net/forum/viewtopic.php?t=25230)
' [9](https://www.facebook.com/groups/2057165187928233/posts/3653275368317199/)
' [10](https://freebasic.net/forum/viewtopic.php?t=19686)
