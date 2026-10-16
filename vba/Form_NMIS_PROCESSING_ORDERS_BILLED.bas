Option Compare Database

Private Sub Form_Current()
   On Error Resume Next
        Me.Parent("ORDER_CN") = [CN]
End Sub