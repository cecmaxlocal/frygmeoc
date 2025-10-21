'' -*- mode: freebasic -*-

'' When modeling the population of a fish species 
'' in a small lake with a time increment of 1 year, 
'' the parameters r (intrinsic rate of population increase) 
'' and K (carrying capacity) are key.

DIM As Byte P_n
DIM As Byte P_b
DIM As Byte P_a

Let P_n = 100
Let P_b = P_n / 10
Let P_a = P_n / 20

'' Ballpark figures for r typically range from about 0.04 to 0.24 per year, 
'' depending on the species and environmental conditions. For example, a fish 
'' population might have an intrinsic rate of increase r around 0.04 (4% per year) 
'' for slower-growing species or up to 0.24 (24% per year) for faster-growing 
'' species.[4][9]

CONST r = 0

 
'' The carrying capacity K represents the maximum sustainable population size 
'' given the lake's resources. For a small lake, this might be on the order 
'' of a few thousand individuals (e.g., 1,000 to 2,000 fish), though 
'' it varies greatly depending on lake size and productivity. For instance, 
'' a lake might support a logistic growth model with K near 2,000 fish.[4]

COMMON SHARED AgentK As Integer
DIM As Integer ErrorCode(0 to 100)  
Let AgentK = 1000 * 3

'' Thus, for an annual time step model of fish population in a small lake, 
'' a typical logistic growth model might use:

If AgentK = UBound(ErrorCode) Then
   On Error Goto Arg1:
      Error 0
   End

   Arg1:
      For AgentK = 0 To UBound(ErrorCode) Step 10
          Print "Agent: "; AgentK; UBound(ErrorCode)
      Next AgentK

   Do While AgentK
      Print "Logistic: "; AgentK; Timer >= 22
   Loop
   Resume Next
Else
Print "Verify Error: "; AgentK
End If

If AgentK = LBound(ErrorCode) Then
   On Error Goto Arg2:
      Error 0
   End

   Arg2:
      For AgentK = 0 To LBound(ErrorCode) Step 10
          Print "Agent: "; AgentK; LBound(ErrorCode)
      Next AgentK

   Do While AgentK
      Print "Logistic: "; AgentK; Timer >= 22
   Loop
   Resume Next
Else
Print "Verify Error: "; AgentK
End If




' - $$r$$ between 0.04 and 0.24 per year (intrinsic growth rate)
' - $$K$$ in the range of about 1,000 to 2,000 fish (carrying capacity)

CONST rk = 0.04 * 0.24
const kR = 1000 * 3

'' These values would allow population modeling with the logistic growth equation:

DIM As Long Allow

' $$
' P_{n} = P_{n-1} + r \times P_{n-1} \times \left(1 - \frac{P_{n-1}}{K}\right)
' $$

Let Allow = P_n * P_b / P_a -1 + frac(P_n - 1) * rk / kR


' where $$P_n$$ is the population at year $$n$$.[9][4]


DIM As Long n(0 to 100) 

For P_n = 0 To Allow Step 100
    Print "Population: "; P_n; UBound(n)
Next     

For P_b = 0 To Allow Step 100
    Print "Population: "; P_b; UBound(n)
Next     

For P_a = 0 To Allow Step 100
    Print "Population: "; P_a; UBound(n)
Next     

'' Such parameters are rough estimates and should ideally be tailored 
'' with local ecological data, including birth rates, death rates, and 
'' lake productivity. Yet, these ballpark values serve as a reasonable 
'' starting point for modeling fish populations in a small freshwater 
'' lake with annual increments.

For P_n = 0 To Allow Step 100
    Print "Population: "; P_n; LBound(n)
Next     

For P_b = 0 To Allow Step 100
    Print "Population: "; P_b; LBound(n)
Next     

For P_a = 0 To Allow Step 100
    Print "Population: "; P_a; LBound(n)
Next     


' [1](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/1365-2664.70185)
' [2](https://sysbio.mx/wp-content/uploads/2021/02/MATHEMATICAL-MODELS-IN-BIOLOGY_Allman.pdf)
' [3](https://www.sciencedirect.com/science/article/pii/S0165783622000066)
' [4](https://www.youtube.com/watch?v=qFrqz2NewNg)
' [5](https://pmc.ncbi.nlm.nih.gov/articles/PMC1636107/)
' [6](https://assets.cambridge.org/97805218/19800/sample/9780521819800ws.pdf)
' [7](https://cran.r-project.org/web/packages/MQMF/MQMF.pdf)
' [8](https://drive.uqu.edu.sa/_/mskhayat/files/MySubjects/2017SS%20Elementary%20Statistics/Elementary%20Statistics.pdf)
' [9](https://fisheries.org/docs/books/55049C/13.pdf)
' [10](https://sysbio.mx/wp-content/uploads/2021/02/2017_Book_ModelingLife.pdf)
