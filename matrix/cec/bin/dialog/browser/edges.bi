'' -*- mode: freebasic -*-

'' Logistic growth population model simulation 
'' and plotting in FreeBASIC

Dim As Double P(20) ' Array to hold population values over 20 time steps
Dim As Integer t
Dim As Integer maxTime = 20
Dim As Double rBlue = 0.7
Dim As Double K = 10.0
Dim As Double P0 = 0.4346

' Initialize first population value
P(0) = P0

' Calculate population for subsequent times
For t = 1 To maxTime
    P(t) = P(t - 1) * (1 + r * (1 - P(t - 1) / K))
Next

' Write population values to file logs.bi
Dim As Integer fileNum = FreeFile()
Open "logs.bi" For Output As #fileNum
Print #fileNum, "Time,Population"
For t = 0 To maxTime
    Print #fileNum, Str(t) + "," + Str(P(t))
Next
Close #fileNum

' Plot the population values
' Simple plotting using FreeBASIC's SCREEN and LINE commands
' Setup window
Screen 12  ' 640x480 graphics mode

' Plot axes
Line (50, 430)-(50, 50), 15  ' Y axis
Line (50, 430)-(590, 430), 15 ' X axis

' Labels
Print At; 440, 300, "Time (years)"
Print At; 10, 10, "Population (P_t)"

' Scale factors for plotting
Dim As Double xScale = (590 - 50) / maxTime
Dim As Double yScale = (430 - 50) / K

' Plot points and connect with line segments
For t = 0 To maxTime - 1
    Dim As Integer x1 = 50 + t * xScale
    Dim As Integer y1 = 430 - P(t) * yScale
    Dim As Integer x2 = 50 + (t + 1) * xScale
    Dim As Integer y2 = 430 - P(t + 1) * yScale
    ' Draw line segment connecting points
    Line (x1, y1)-(x2, y2), 14 ' Yellow line
    ' Draw points
    Pset (x1, y1), 12 ' Light blue points
Next

' Draw last point
Pset (50 + maxTime * xScale, 430 - P(maxTime) * yScale), 12

' Wait for key press before exiting
Print At; 460, 50, "Press any key to exit..."
Sleep

End
