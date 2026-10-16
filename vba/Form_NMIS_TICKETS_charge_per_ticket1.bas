Option Compare Database

Private Sub Find_TSO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
    Mileage_Override = Null
    TSO_Charge = Null
    
End Sub

Private Sub Find_TSO_Enter()
    
    Find_TSO.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Mileage_Override_AfterUpdate()

    [NMIS_TICKETS_Charge_Per_Ticket subform].Form![Ship_Miles_PCT].Requery
    
End Sub

Private Sub Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Ticket_No_TSO2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click
    
End Sub

Private Sub Prod_Ship_Ticket_list_by_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_TSO"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_TSO_Click
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_TSO.Requery
    
End Sub