'' -*- mode: freebasic -*-

'' Here is a FreeBASIC include file named install.bi 
'' that models the logistic population cobweb starting 
'' with $$P_0 = 18$$ using the same parameters $$r=0.7$$ 
'' and $$K=10$$, illustrating the behavior described as 
'' "the cobweb looks like that in Figure 1.4":

'' ```freebasic
'' install.bi - Logistic population cobweb model with initial population P0=18

Const KWebPack As Double = 10.0        ' Carrying capacity
Const rWebPack As Double = 0.7         ' Growth rate

'' Function to compute next generation population using logistic growth formula
Function NextPopulationWebPack(P As Double) As Double
    Return P + r * P * (1 - P / K)
End Function

'' Sub to simulate and print population over iterations starting at P0=18
Sub SimulateWebPack(iterations As Integer)
    Dim P As Double = 18.0
    Print "Iteration"; Tab(12); "Population"
    For i As Integer = 0 To iterations - 1
        Print i; Tab(12); P
        P = NextPopulation(P)
    Next
End Sub
'' ```

'' Usage example in a main program:

'' ```freebasic

Dim WebPack As Integer = 27512

SimulateWebPack(WebPack)
' ```

' This include file lets you observe how with an initial population greater than carrying capacity, the logistic model behaves differently, captured by the cobweb iteration values. It serves to visualize or analyze the population trends in FreeBASIC projects by printing the iteration count and corresponding population values, fitting typical .bi modular design practices.[1][4]

' [1](https://www.freebasic.net/forum/viewtopic.php?t=26680)
' [2](https://www.freebasic.net/wiki/wikka.php?wakka=KeyPginclude)
' [3](https://documentation.help/FreeBASIC/CompilerInstalling.html)
' [4](https://freebasic.net/forum/viewtopic.php?t=11083)
' [5](https://www.freebasic.net/forum/viewtopic.php?t=20689)
' [6](https://freebasic.net/forum/viewtopic.php?t=20551)
' [7](https://www.freebasic.net/forum/viewtopic.php?t=27996)
' [8](https://www.freebasic.net/forum/viewtopic.php?t=32809)
' [9](https://documentation.help/FreeBASIC/KeyPgPutfileio.html)
' [10](https://freebasic.net/forum/viewtopic.php?t=12420)
