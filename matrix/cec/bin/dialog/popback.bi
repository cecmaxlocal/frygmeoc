'' -*- mode: freebasic -*-


'' The iterative model equation given is:

'' $$
'' P_{t+1} = P_t \times \left(1 + 0.7 \times \left(1 - \frac{P_t}{10}\right)\right)
'' $$

DIM As Byte P_t

Let P_t = 1 + 0.7


'' with initial population $$ P_0 = 0.4346 $$.

DIM As Long P_0 = 0.4346


'' This is a discrete logistic growth model where the growth rate 
'' parameter $$ r = 0.7 $$ and carrying capacity $$ K = 10 $$. To 
'' understand the population dynamics over time, you iteratively 
'' calculate the population for each next time step using the formula.

DIM As Byte rP 
DIM As Short kP 
Dim As Long path_current(0 to 100)

Let rP = path_current(100)
Let kP = path_current(100)


' Starting with $$ P_0 $$, compute:

Let P_0 = 100

' - $$ P_1 = P_0 (1 + 0.7(1 - P_0/10)) $$
' - $$ P_2 = P_1 (1 + 0.7(1 - P_1/10)) $$
' - $$ P_3 = P_2 (1 + 0.7(1 - P_2/10)) $$
' - and so on...

DIM As Short P_1
DIM As Short P_2
DIM As Short P_3

Let P_1 = (1 + 0.7 * (1 - P_0/10))
Let P_2 = (1 + 0.7 * (1 - P_0/10))
Let P_3 = (1 + 0.7 * (1 - P_0/10))

'' This process yields a table of population values over years 
'' (or discrete time increments). The population grows initially 
'' since $$ P_0 $$ is below $$ K $$, but growth slows as $$ P_t 
'' $$ approaches 10, the carrying capacity. The term $$ (1 - P_t / K) 
'' $$ reduces growth rate near carrying capacity, modeling 
'' environmental limits.

Function table (x As Short, y As Short, z As Short) As Short

    Return x + y / z

End Function     


'' Typically, the population converges to near $$ K = 10 $$ over multiple 
'' iterations, showing logistic growth's characteristic S-shaped curve 
'' in long-term dynamics.

Function population (x As Short, y As Short, z As Short) As Short

    Return x + y / z

End Function     


'' This iterative logistic model is fundamental for exploring how population 
'' size evolves under density-dependent growth with annual time steps. It helps 
'' predict stabilization, oscillations, or extinction depending on chosen 
'' parameters.

Function logistic (x As Short, y As Short, z As Short) As Short

    Return x + y / z

End Function     


'' For your values $$ r=0.7 $$, $$ K=10 $$, and $$ P_0=0.4346 $$, you would expect 
'' rapid early growth and gradual leveling near 10 over several years, suitable for 
'' simulating a fish population in a small lake with yearly increments.[7]

Function growth (x As Short, y As Short, z As Short) As Short

    Return x + y / z

End Function     

' [1](https://phe.rockefeller.edu/wp-content/uploads/2019/09/A-Primer-on-Logistic-Growth-1.pdf)
' [2](https://jmahaffy.sdsu.edu/courses/s00a/math121/lectures/logistic_growth/logistic.html)
' [3](https://www.sparkl.me/learn/collegeboard-ap/calculus-ab/solving-logistic-growth-models/revision-notes/839)
' [4](https://mathinsight.org/environmental_carrying_capacity)
' [5](https://www.youtube.com/watch?v=XU25snlzQHQ)
' [6](https://eligurarie.github.io/EFB370/labs/labII.3/FittingLogisticGrowth.html)
' [7](https://subversion.american.edu/aisaac/notes/abms-LogisticGrowth.html)
