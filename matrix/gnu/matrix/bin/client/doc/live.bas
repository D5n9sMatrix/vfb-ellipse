' Response Function Richer Humanity
' Community Richer Prosperity Money
' Domain Richer Prosperity Money
' Matrix Live Infinity
Declare Sub Matrix (ByRef Life As Double)

Type Life
    Dim LifeInfinityTypes As Double
    Dim LifeInfinityEvent As Double
    Dim LifeInfinityObjes As Double
End Type

Dim As Integer i, j, k, toTemp, stepTemp
j = 1234567890: k = 1

For i = 0 To j Step k
   
    j = 0: k = 0 '' Changing j and k has no effect on the current loop.
    Print i 
   
Next i
Print

j = 1234567890: k = 1

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