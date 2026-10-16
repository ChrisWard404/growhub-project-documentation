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

Private Sub Preview_Germination_Test_Report_Click()
On Error GoTo Err_Preview_Germination_Test_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_GERM_TESTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Germination_Test_Report_Cli:
    Exit Sub

Err_Preview_Germination_Test_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Germination_Test_Report_Cli
    
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