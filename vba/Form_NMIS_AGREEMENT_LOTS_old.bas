Option Compare Database

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click
    
    Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
    Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    
Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click
    
End Sub
Private Sub Calculate_Click()
On Error GoTo Err_Calculate_Click
    Dim ASF As Double
    Dim PLS As Double
    Dim NF As Double
    Dim REQ As Double
    
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT * 0.01))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT * 0.01)
    NF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 * 0.01)
    
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = (REQ / (PLS * NF * ASF))
    DoCmd.RunCommand acCmdRefreshPage
    
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub