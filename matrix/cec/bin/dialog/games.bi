'' -*- mode: freebasic -*-

'' Population size measurement does not have to be restricted 
'' to whole numbers since populations can be expressed in units 
'' other than individual counts. Ecologists often measure 
'' population size in thousands or millions of individuals 
'' for large populations, resulting in fractional values 
'' being meaningful. For commercially valuable species 
'' like fish, it is also common to measure population 
'' size in units of biomass or mass, such as tons. This approach 
'' reflects practical management and economic interests where total 
'' weight is more relevant than individual counts.

DIM As Long BufferExpress(0 to 100)
DIM As Long OnlineLibrary
DIM As Long Characteristic

Declare Function Flexibility (productivity As Long) As Long

Let productivity = 100

If productivity = UBound(BufferExpress) Then
   Print "Stream: "; productivity; "Online Library: "; OnlineLibrary 
Else
Do While productivity / 1.25
   Input productivity
   Print "Stream Open: "; productivity
Loop   
End If

If productivity = LBound(BufferExpress) Then
   Print "Stream: "; productivity; "Character: "; Characteristic 
Else
Do While productivity / 1.25
   Input productivity
   Print "Stream Open: "; productivity
Loop   
End If

End


'' Using population units like biomass allows models to incorporate growth, 
'' harvest, and reproductive output more realistically, especially in fisheries 
'' science where the weight of fish is critical for stock assessments and cured. 
'' In such cases, logistic growth models and other population models work with 
'' continuous variables representing total mass instead of discrete individuals.

Function MagicCureBody1 (x As Byte, y As Byte, z As Byte) As Byte
    return x + y / z
End Function         


'' Therefore, modeling fish populations in a lake using mass units (e.g., tons) 
'' instead of individuals is appropriate and common practice, facilitating smoother 
'' calculations and interpretation aligned with ecological and commercial 
'' realities.[1][3][4]

Function MagicCureBody2 (x As Byte, y As Byte, z As Byte) As Byte
    return x + y / z
End Function         


'' This flexibility in units emphasizes that population models are conceptual 
'' tools adapted to the biology and practical needs of the species and context 
'' studied.

Function MagicCureBody3 (x As Byte, y As Byte, z As Byte) As Byte
    return x + y / z
End Function         


' [1](https://circabc.europa.eu/sd/a/a0a1e8e8-5f8a-4d0d-9fe4-931fe3fe948f/Population%20units-proposal%2001-03-2016.pdf)
' [2](https://www.deanza.edu/faculty/heyerbruce/b6c_pdf/3c_Estimating%20Population%20Size-Dispersion.pdf)
' [3](https://bio.libretexts.org/Bookshelves/Ecology/Environmental_Science_(Ha_and_Schleiger)/02:_Ecology/2.02:_Populations/2.2.02:_Population_Size)
' [4](https://www.khanacademy.org/science/biology/ecology/population-ecology/a/population-size-density-and-dispersal)
' [5](https://www.frontiersin.org/journals/ecology-and-evolution/articles/10.3389/fevo.2021.775754/full)
' [6](https://www.savemyexams.com/ap/biology/college-board/20/revision-notes/unit-8-ecology/population--and-community-ecology/population-ecology/)
' [7](https://www.bbc.co.uk/bitesize/guides/z9nwtv4/revision/4)
' [8](https://www.albert.io/blog/population-ecology-ap-biology-review/)
' [9](https://www.sciencedirect.com/science/article/pii/S0006320723002161)
' [10](https://fiveable.me/environmental-biology/unit-3)
