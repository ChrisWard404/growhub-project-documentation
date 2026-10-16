Option Compare Database

Private Sub Open_NMIS_Factors_Form_Click()
On Error GoTo Err_Open_NMIS_Factors_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_FACTORS"
    
    DoCmd.RunMacro "Refresh"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Factors_Form_Click:
    Exit Sub

Err_Open_NMIS_Factors_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Factors_Form_Click
    
End Sub