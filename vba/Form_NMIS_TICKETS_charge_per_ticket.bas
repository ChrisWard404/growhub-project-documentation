Option Compare Database

Private Sub Find_TSO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Find_TSO_Enter()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Find_TSO = Forms![NMIS_SHIPPING_TICKET Subform]![EXT_DOC_REF]
    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_TSO.Requery
    
End Sub