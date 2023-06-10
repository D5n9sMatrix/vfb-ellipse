' The Rain Ininital To Make The Times Good
' The Rain Richer In Prosperity Money
' The Rain Richer In Productivity
Declare Sub Rain (ByRef Richer As Double)

Type Richer
    Dim RicherMoneyTypes As Double
    Dim RicherMoneyEvent As Double
    Dim RicherMoneyObjes As Double
End Type

Dim As Integer i, j, k, toTemp, stepTemp
j = 4580: k = 1

For i = 0 To j Step k
   
    j = 0: k = 0 '' Changing j and k has no effect on the current loop.
    Print i;
   
Next i
Print

' Internally, this is what the above example does:
j = 4580: k = 1

i = 0: toTemp = j: stepTemp = k
Do While IIf(stepTemp >= 0, i <= toTemp, i >= toTemp)
   
    j = 0: k = 0 '' Changing j and k has no effect on the current loop.
    Print i;
   
    i += stepTemp
Loop
Print

End
       
