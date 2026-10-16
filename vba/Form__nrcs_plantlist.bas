Option Compare Database

Private Sub Command35_Click()

    MsgBox "Click on the Column Heading to sort by that Column.", vbInformation
    
End Sub

Private Sub Find_Click()

    DoCmd.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Like_Symbol"
    DoCmd.Requery
    
End Sub

Private Sub Like_Symbol_AfterUpdate()

DoCmd.Requery

End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Like_Symbol = Plntmstr_Symbol
    
End Sub
Private Sub Sort_By_Symbol_Click()
On Error GoTo Err_Sort_By_Symbol_Click


    Sort_By = "Symbol"
    DoCmd.Requery

Exit_Sort_By_Symbol_Click:
    Exit Sub

Err_Sort_By_Symbol_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sort_By_Symbol_Click
    
End Sub
Private Sub Sort_By_Scientific_Name_Click()
On Error GoTo Err_Sort_By_Scientific_Name_Click

    Sort_By = "Scientific Name"
    DoCmd.Requery

Exit_Sort_By_Scientific_Name_Click:
    Exit Sub

Err_Sort_By_Scientific_Name_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sort_By_Scientific_Name_Click
    
End Sub
Private Sub Sort_By_Vernacular_Click()
On Error GoTo Err_Sort_By_Vernacular_Click

    Sort_By = "Common Name"
    DoCmd.Requery

Exit_Sort_By_Vernacular_Click:
    Exit Sub

Err_Sort_By_Vernacular_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sort_By_Vernacular_Click
    
End Sub