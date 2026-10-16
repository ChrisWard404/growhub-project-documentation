Option Compare Database

Private Sub Ticket_NO_DblClick(Cancel As Integer)
    
    Ticket_No.Locked = False
    
End Sub

Private Sub Ticket_NO_Enter()
    If Not IsNull(Ticket_No) Then
        Ticket_No.Locked = True
    Else
        Ticket_No.Locked = False
    End If
End Sub