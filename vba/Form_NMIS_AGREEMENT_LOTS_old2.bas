
Private Sub Calculate_Click()
On Error GoTo Err_Calculate_Click
    Dim ASF As Double
    Dim PLS As Double
    Dim NF As Double
    Dim REQ As Double
    Dim HARVEST_FACTOR As Double
    Dim Source_Req As Double

' Calculate source needs
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT * 0.01) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT * 0.01))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT * 0.01)
    HARVEST_FACTOR = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 * 0.01) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 * 0.01) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 * 0.01) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 * 0.01)
    Source_Req = (REQ / (PLS * HARVEST_FACTOR * ASF))
    
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req

    
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub

Private Sub CATEGORY_CODE_Enter()

    With CodeContextObject
        ' Sets the Category_Code to a default value of Bareroot'
        .CATEGORY_CODE = "BR"
    End With
        
End Sub

Private Sub CATEGORY_CODE_Exit(Cancel As Integer)

    With CodeContextObject
        ' Sets the ID to a default based on the table index'
        .ID = .Index
        DoCmd.RunCommand acCmdRefreshPage
    End With


CATEGORY_CODE_Exit_Exit:
    Exit Sub
    
End Sub
Private Sub Refresh_and_Close_Form_Click()
On Error GoTo Err_Refresh_and_Close_Form_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Form_Click:
    Exit Sub

Err_Refresh_and_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Form_Click
    
End Sub

Private Sub TOTAL_REQUEST_Enter()
On Error GoTo TOTAL_REQUEST_Enter_Err

    Forms!NMIS_AGREEMENTS!AGREEMENT_LOTS_CN = Forms!NMIS_AGREEMENT_LOTS!CN


TOTAL_REQUEST_Enter_Exit:
    Exit Sub
    
TOTAL_REQUEST_Enter_Err:
    MsgBox Error$
    Resume TOTAL_REQUEST_Enter_Exit
End Sub

Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click
    
    Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
    Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    
Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click
    
End Sub
Private Sub Use_Default_Factors_Click()
On Error GoTo Err_Use_Default_Factors_Click

    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 = [NMIS_FACTORS subform]![HARVEST_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 = [NMIS_FACTORS subform]![HARVEST_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 = [NMIS_FACTORS subform]![HARVEST_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 = [NMIS_FACTORS subform]![HARVEST_FACTOR_4]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3]
    
Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click
    
End Sub
Private Sub Calculate_Containers_Required_Button_Click()
On Error GoTo Err_Calculate_Containers_Required_Button_Click

Dim ASF As Double
    Dim Source_Req As Double
    Dim PLS As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


'Calculate Grow Containers
    Source_Req = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT * 0.01) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT * 0.01))
    CF1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1] / 100
    CF2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2] / 100
    CF3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3] / 100
    TARGET_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    Cells_Per_Container = [NMIS_AGREE_NEW_UNITS subform]![Cells_Per_Container]
    CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT * 0.01)
    CONTAINER_FACTOR = CF1 * CF2 * CF3
    
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
            ((Source_Req * PLS) / CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
              CONTAINER_ASF)
    

Exit_Calculate_Containers_Required_Butto:
    Exit Sub

Err_Calculate_Containers_Required_Button_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Containers_Required_Butto
    
End Sub
Private Sub Preview_Seed_Work_Order_Click()
On Error GoTo Err_Preview_Seed_Work_Order_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Seed_Work_Order_Click:
    Exit Sub

Err_Preview_Seed_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Seed_Work_Order_Click
    
End Sub