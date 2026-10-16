Option Compare Database

Private Sub Find_Click()

    'DoCmd.Requery
    
End Sub

Private Sub Form_Current()
    
    'Like_Plntmstr_Symbol = PLNTMSTR_SYMBOL
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Plntmstr_Symbol"
    
End Sub

Private Sub Like_Plntmstr_Symbol_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[plntmstr_symbol] = '" & Me![Like_Plntmstr_Symbol] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Like_Plntmstr_Symbol_DblClick(Cancel As Integer)

    Like_Plntmstr_Symbol = Null
    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "plntmstr_symbol"
    
End Sub

Private Sub Like_Plntmstr_Symbol_Enter()

    Like_Plntmstr_Symbol.Requery
    
End Sub

Private Sub Like_Plntmstr_Symbol_Exit(Cancel As Integer)

    ' Find the record that matches the control.
    Dim rs As Object

    If Not IsNull(Like_Plntmstr_Symbol) Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[plntmstr_symbol] = '" & Me![Like_Plntmstr_Symbol] & "'"
        Me.Bookmark = rs.Bookmark
    End If

End Sub

Private Sub Like_Symbol_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Symbol_DblClick(Cancel As Integer)

    Like_Symbol = "*"
    DoCmd.Requery
    
End Sub

Private Sub Local_vs_NRCS_by_Group_Click()
On Error GoTo Err_Local_vs_NRCS_by_Group_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "nmis_species_vs_nrcs_plantlist_by_group"
    DoCmd.OpenQuery stDocName

Exit_Local_vs_NRCS_by_Group_Click:
    Exit Sub

Err_Local_vs_NRCS_by_Group_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Local_vs_NRCS_by_Group_Click
    
End Sub

Private Sub Local_vs_NRCS_Click()
On Error GoTo Err_Local_vs_NRCS_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "nmis_species_vs_nrcs_plantlist"
    DoCmd.OpenQuery stDocName
Exit_Local_vs_NRCS_Click:
    Exit Sub

Err_Local_vs_NRCS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Local_vs_NRCS_Click
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol.Locked = False
    
End Sub

Private Sub Plntmstr_Symbol_Enter()

    If Not IsNull([Plntmstr_Symbol]) Then
        [Plntmstr_Symbol].Locked = True
    Else
        [Plntmstr_Symbol].Locked = False
    End If
    
End Sub

Private Sub Plntmstr_Symbol_Exit(Cancel As Integer)

        [Plntmstr_Symbol].Locked = True

End Sub

Private Sub Preview_Species_Checklist_Click()
On Error GoTo Err_Preview_Species_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Species_Checklist_Click:
    Exit Sub

Err_Preview_Species_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Species_Checklist_Click
    
End Sub

Private Sub Open_NRCS_Plantlist_Click()
On Error GoTo Err_Open_NRCS_Plantlist_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "*nrcs_plantlist"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NRCS_Plantlist_Click:
    Exit Sub

Err_Open_NRCS_Plantlist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NRCS_Plantlist_Click
    
End Sub

Private Sub Text104_Change()

End Sub

Private Sub VERNACULAR_DblClick(Cancel As Integer)

    VERNACULAR.Locked = False
    
End Sub

Private Sub VERNACULAR_Enter()

    If IsNull(VERNACULAR) Then
        VERNACULAR.Locked = False
    Else
        VERNACULAR.Locked = True
    End If
    
End Sub