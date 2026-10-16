Option Compare Database

Private Sub preview_print_seedbox_label_Click()
On Error GoTo Err_preview_print_seedbox_label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_preview_print_seedbox_label_Click:
    Exit Sub

Err_preview_print_seedbox_label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_print_seedbox_label_Click
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Selected_Source_ID"
    
End Sub

Private Sub like_species_AfterUpdate()

    [Selected_Source_ID].Requery
    [Selected_Source_Code].Requery
   
End Sub

Private Sub Like_Species_Enter()

    Like_Species.Requery
    
End Sub

Private Sub Like_Stored_For_AfterUpdate()

    [Selected_Source_ID].Requery
    [Selected_Source_Code].Requery
    
End Sub

Private Sub Like_Stored_For_Enter()

    Like_Stored_For.Requery
    
End Sub

Private Sub NMIS_GERM_ACTIVITY_REPORT_Click()
On Error GoTo Err_NMIS_GERM_ACTIVITY_REPORT_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_REPORT2"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_GERM_ACTIVITY_REPORT_Click:
    Exit Sub

Err_NMIS_GERM_ACTIVITY_REPORT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_GERM_ACTIVITY_REPORT_Click
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_Subform_Exit(Cancel As Integer)

    [NMIS_ID_ACTIVITIES Subform].Requery
    
End Sub

Private Sub NMIS_SOURCE_CARD_BACK_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_BACK_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_BACK"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_BACK_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_BACK_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_BACK_Click
    
End Sub

Private Sub NMIS_SOURCE_CARD_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_2"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub NMIS_SOURCE_TESTS_Subform_Enter()

    [NMIS_SOURCE_TESTS Subform].Form![ID_ACTIVITY_CN].Requery
    
End Sub

Private Sub Preview_Box_Mini_Labels_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2b"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub


Private Sub Open_Source_Lot_Input_Form_Click()
On Error GoTo Err_Open_Source_Lot_Input_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Input_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Input_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Input_Form_Click
    
End Sub
Private Sub Open_NMIS_SOURCE_LOT_INPUT_Click()
On Error GoTo Err_Open_NMIS_SOURCE_LOT_INPUT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_SOURCE_LOT_INPUT_Click:
    Exit Sub

Err_Open_NMIS_SOURCE_LOT_INPUT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_SOURCE_LOT_INPUT_Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub
Private Sub Command243_Click()
On Error GoTo Err_Command243_Click


    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70
    DoCmd.Close

Exit_Command243_Click:
    Exit Sub

Err_Command243_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command243_Click
    
End Sub

Private Sub Selected_Source_Code_Enter()


    Selected_Source_ID = Null
    
End Sub

Private Sub Selected_Source_ID_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Selected_Source_ID] & "'"
    Me.Bookmark = rs.Bookmark
    
    [NMIS_SOURCE_TESTS Subform].Form![ID_ACTIVITY_CN].Requery

End Sub

Private Sub Selected_Source_ID_Enter()

    Selected_Source_Code = Null
    
End Sub
Private Sub Find_Selected_Lot_Click()
On Error GoTo Err_Find_Selected_Lot_Click

    If [Selected_Source_ID] <> "" Then
        CN = Selected_Source_ID
    Else
        CN = Selected_Source_Code
    End If
    'Screen.PreviousControl.SetFocus
    'DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_Find_Selected_Lot_Click:
    Exit Sub

Err_Find_Selected_Lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Find_Selected_Lot_Click
    
End Sub

Private Sub Transactions_Click()
On Error GoTo Err_Transactions_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Transactions_Click:
    Exit Sub

Err_Transactions_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transactions_Click
    
End Sub