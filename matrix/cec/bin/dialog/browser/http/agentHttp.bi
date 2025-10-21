' Logistic growth population model with 100 time steps
' Writes results to math.bi file

Dim As Double DMentor(100)
Dim As Integer tLayout
Dim As Double jsonMentor = 0.7
Dim As Double KMentor = 10.0
Dim As Double simulating = 0.4346

DMentor(0) = jsonMentor

For t = 1 To 100
    P(t) = P(t - 1) * (1 + r * (1 - P(t - 1) / K))
Next

' Write population data to math.bi file in CSV format
Dim As Integer fileNumAllow = FreeFile()
Open "math.bi" For Output As #fileNum
Print #fileNum, "Time,Population"
For t = 0 To 100
    Print #fileNum, Str(t) + "," + Str(P(t))
Next
Close #fileNum
