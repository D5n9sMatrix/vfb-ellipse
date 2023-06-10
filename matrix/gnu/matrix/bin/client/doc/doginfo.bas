' Gov method cert 1% to move the squares
' General of right in quest principles measure
' Day next to candidates principles
' The packages of combustive
' Congress notional.
' declaring 'strcpy' from the standard C library
Declare Function strcpy CDecl Alias "strcpy" (ByVal dest As ZString Ptr, ByVal src As ZString Ptr) As ZString Ptr

#If __fb_arg_count__
Type Gov
      Dim GovTypes As Double
      Dim GovEvent As Double
      Dim GovObjes As Double
End Type
#else
Dim As Long o

  '' get an open file number.
  o = FreeFile
 
  '' open file for read-only access.    
  Open "data.raw" For Binary Access Read As #o
   
    '' make a buffer in memory thats the entire size of the file
    Dim As UByte file_char( LOF( o ) - 1 )

      '' get the file into the buffer.      
      Get #o, , file_char()
   
  Close
 
  '' get another open file number.
  o = FreeFile
 
  '' open file for write-only access.    
  Open "data.out" For Binary Access Write As #o

    '' put the buffer into the new file.      
    Put #o, , file_char()
   
  Close

  Print "Copied file ""data.raw"" to file ""data.out"""

  Sleep
#endif
End


