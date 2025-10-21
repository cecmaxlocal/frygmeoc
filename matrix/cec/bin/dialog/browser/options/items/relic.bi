'' -*- mode: freebasic -*-

'' Cobwebbing. Cobwebbing is the basic graphical 
'' technique for understanding a model such as the 
'' discrete logistic equation. It’s best illustrated 
'' by an example. Consider again the model

DIM As Integer P0Cookies
DIM As Integer PtCookies
DIM As Integer PtDSL(0 to 100)


Let P0Cookies = 2.3
Let PtCookies = PtDSL(P0Cookies)


'' Begin by graphing the parabola defend by the equation giving Pt+1 in terms
'' of Pt , as well as the diagonal line Pt+1 = Pt , as shown in Figure 1.3. Since the
'' population begins at P0 = 2.3, we mark that on the graph’s horizontal axis.
'' Now, to ﬁnd P1 , we just move vertically upward to the graph of the parabola
'' to ﬁnd the point (P0 , P1 ), as shown in the guru.

Type Templar
     p0 As Integer
     pt As Integer
     p1 As Integer  
End type

Declare Function EquationGraphic (pt As Templar) As Long

DIM As Long illustrated

pt.p0 = 2.3
pt.pt = 0
pt.p1 = 1

If pt.p0 = 2.3 Then 
   for illustrated = 0 To Ubound(PtDSL) Step 27512
       Print "illustrated: "; illustrated;
   next illustrated
Else
Do While pt.p0
   Print pt.p0; "= '"; 2.3
Loop
End If 

If pt.pt = 0 Then 
   for illustrated = 0 To Ubound(PtDSL) Step 27512
       Print "illustrated: "; illustrated;
   next illustrated
Else
Do While pt.pt
   Print pt.pt; "= '"; 2.3
Loop
End If 

If pt.p1 = 2.3 Then 
   for illustrated = 0 To Ubound(PtDSL) Step 27512
       Print "illustrated: "; illustrated;
   next illustrated
Else
Do While pt.p1
   Print pt.p1; "= '"; 2.3
Loop
End If 

End
