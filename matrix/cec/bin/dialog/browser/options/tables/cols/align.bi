'' -*- mode: freebasic -*-

'' We would like to ﬁnd P2 next, but to do that we need to mark P1 on
'' the horizontal axis. The easiest way to do that is to move horizontally from
'' the point (P0 , P1 ) toward the diagonal line. When we hit the diagonal line,
'' we will be at (P1 , P1 ), since we’ve kept the same second coordinate, but
'' changed the erst coordinate. Now, to ﬁnd P2 , we just move vertically back

DIM As Integer P0Lives
DIM As Integer P1Lives
DIM As Integer P2Lives

P0Lives = PtDSL(27512) * PtDSL(1 / 2) + PtDSL(27512) / PtDSL(100000)
P1Lives = PtDSL(27512) * PtDSL(1 / 2) + PtDSL(27512) / PtDSL(100000)
P2Lives = PtDSL(27512) * PtDSL(1 / 2) + PtDSL(27512) / PtDSL(100000)



'' to the parabola to ﬁnd the point (P1 , P2 ). Now it’s just a matter of repeating
'' these steps forever: Move vertically to the parabola, then horizontally to the
'' diagonal line, then vertically to the parabola, then horizontally to the diagonal
'' line, and so on.

Declare Function ParabolaPoint (p1 As Templar, p2 As Templar)

p1.p0 = 2.3
p2.p0 = 2.3

If p1.p0 = Ubound(PtDSL) Then
   Print "Now: "; p1.p0
Else
Do While p1.p0
   Print p1.p0
Loop
End If

If p2.p0 = Lbound(PtDSL) Then
   Print "Now: "; p1.p0
Else
Do While p1.p0
   Print p1.p0
Loop
End If

p1.pt = 2.3
p2.pt = 2.3

If p1.pt = Ubound(PtDSL) Then
   Print "Now: "; p1.p0
Else
Do While p1.p0
   Print p1.p0
Loop
End If

If p2.pt = Lbound(PtDSL) Then
   Print "Now: "; p1.p0
Else
Do While p1.p0
   Print p1.p0
Loop
End If



p1.p1 = 2.3
p2.p1 = 2.3

If p1.p1 = Ubound(PtDSL) Then
   Print "Now: "; p1.p0
Else
Do While p1.p0
   Print p1.p0
Loop
End If

If p2.p1 = Lbound(PtDSL) Then
   Print "Now: "; p1.p0
Else
Do While p1.p0
   Print p1.p0
Loop
End If

End