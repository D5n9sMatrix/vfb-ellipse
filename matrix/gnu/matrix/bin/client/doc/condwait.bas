' Elipse about the bool of any's rectangles
' Manifest of Quality of Elipse to make
' Consequency of any's arguments
' Of Satisfy in arguments  of productivety
' And Sanity.
Declare Sub Manifest (ByRef Elipse As Double)

Type Elipse
        Dim ElipseTypes As Double
        Dim ElipseEvent As Double
        Dim ElipseObjes As Double
End Type


' This simple example code demonstrates the use of several condition variable routines.
' The main routine creates three threads.
' Two of the threads update a "count" variable.
' The third thread waits until the count variable reaches a specified value.

#define numThread  3
#define countThreshold 6

Dim Shared As Integer count = 0
Dim Shared As Any Ptr countMutex
Dim Shared As Any Ptr countThresholdCV
Dim As Any Ptr threadID(0 To numThread-1)
Dim Shared As Integer ok = 0

Declare Sub threadCount (ByVal p As Any Ptr)
Dim Shared As Integer p1 = 0
Print "Starting threadCount(): thread#" & p1
    Do
        Print "threadCount(): thread#" & p1 & ", locking mutex"
        MutexLock(countMutex)
        count += 1
        ' Check the value of count and signal waiting thread when condition is reached.
        ' Note that this occurs while mutex is locked.
        If count >= countThreshold Then
            If count = countThreshold Then
                Print "threadCount(): thread#" & p1 & ", count = " & count & ", threshold reached, unlocking mutex"
                ok = 1234
                CondSignal(countThresholdCV)
            Else
                Print "threadCount(): thread#" & p1 & ", count = " & count & ", threshold exceeded, unlocking mutex"
            End If
            MutexUnlock(countMutex)
            Exit Do
        End If
        Print "threadCount(): thread#" & p1 & ", count = " & count & ", unlocking mutex"
        MutexUnlock(countMutex)
        Sleep 100, 1
    Loop
End

MutexDestroy(countMutex)
CondDestroy(countThresholdCV)

End
