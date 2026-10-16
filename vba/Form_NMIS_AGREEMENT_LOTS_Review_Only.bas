
Private Sub Calculate_Click()
'Calculate source required

On Error GoTo Err_Calculate_Click
    Dim ASF As Double
    Dim PLS As Double
    Dim NF As Double
    Dim REQ As Double
    Dim HARVEST_FACTOR As Double
    Dim Source_Req As Double
    Dim Source_Reg2 As Double
    Dim Will_Grow As Double
    Dim Shortage As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


' Calculate source needs
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT / 100)
    HARVEST_FACTOR = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 / 100)
    Source_Req = Round((REQ / (PLS * HARVEST_FACTOR * ASF)), 3)

    If Source_Req <= Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] Then
            Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] >= 0 Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                    MsgBox "This is a Zero Balance Lot!"
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                Else
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS]
                    MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                End If
            Else
                Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                MsgBox "Undetermined amount of source material."
            End If
    End If
    
    'Calculate Grow Containers
    If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CONTAINER_FACTOR_1] / 100
            CF2 = [CONTAINER_FACTOR_2] / 100
            CF3 = [CONTAINER_FACTOR_3] / 100
            TARGET_DENSITY = [DESIRED_DENSITY]
            Cells_Per_Container = _
                [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
               ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
        Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
     End If
     
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub

Private Sub Desired_Density_DblClick(Cancel As Integer)

    MsgBox "Target Density is now UNLOCKED for Editing."
    [DESIRED_DENSITY].Locked = False

End Sub

Private Sub Desired_Density_Exit(Cancel As Integer)

'Relock Desired_Density
    
    If [DESIRED_DENSITY].Locked = False Then
        [DESIRED_DENSITY].Locked = True
    End If

'Recalculate the container needs if the Target Density is changed

    Dim ASF As Double
    Dim Source_Req2 As Double
    Dim PLS As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


'Calculate Grow Containers
    If IsNull(SOURCE_REQUIRED) Then
       MsgBox "No Source Required Entered"
    Else
    If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
                  (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
                  (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            CF1 = [CONTAINER_FACTOR_1] / 100
            CF2 = [CONTAINER_FACTOR_2] / 100
            CF3 = [CONTAINER_FACTOR_3] / 100
            TARGET_DENSITY = [DESIRED_DENSITY]
            Cells_Per_Container = _
                [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                    ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * CONTAINER_ASF)
        Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
     End If
     End If

End Sub

Private Sub Form_Close()
' Close the NMIS_AGREEMENT_LOTS_NEW FORM if it is open

    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        DoCmd.Close acForm, "NMIS_AGREEMENT_LOTS_NEW"
    End If
    
End Sub

Private Sub Form_Current()
    SPECIES_PRODUCT_CN.Requery
End Sub

Private Sub ID_DblClick(Cancel As Integer)

    [ID].Locked = False
    MsgBox "Agreement Lot Id is now UNLOCKED for Editing."

End Sub

Private Sub ID_Exit(Cancel As Integer)
    
    If [ID].Locked = False Then
        [ID].Locked = True
        MsgBox "Agreement Lot Id is now LOCKED."
    End If
        
End Sub

Private Sub ID_ORIGINAL_DblClick(Cancel As Integer)

    [ID_ORIGINAL].Locked = False
    MsgBox "ORIGINAL Agreement Lot Id is now UNLOCKED for Editing."

End Sub

Private Sub ID_ORIGINAL_Exit(Cancel As Integer)
    
    If [ID_ORIGINAL].Locked = False Then
        [ID_ORIGINAL].Locked = True
        MsgBox "ORIGINAL Agreement Lot Id is now LOCKED."
    End If
    
End Sub

Private Sub Label98_Click()
    Label_click_error
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

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    [SOURCE_LOT_CN].Locked = False
    MsgBox "Source Lot ID is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_LOT_CN_Exit(Cancel As Integer)
'Relock SOURCE_LOT_CN IF UNLOCKED
    
    If [SOURCE_LOT_CN].Locked = False Then
        [SOURCE_LOT_CN].Locked = True
        MsgBox "Source Lot ID is now LOCKED."
    End If

End Sub

Private Sub SOURCE_REQUIRED_DblClick(Cancel As Integer)

    [SOURCE_REQUIRED].Locked = False
    MsgBox "Source Required is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_REQUIRED_Exit(Cancel As Integer)
'Relock Source_Required
    
    If [SOURCE_REQUIRED].Locked = False Then
        [SOURCE_REQUIRED].Locked = True
    End If

'Recalculate the container needs if the source amount is changed

    Dim ASF As Double
    Dim Source_Req2 As Double
    Dim PLS As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


'Calculate Grow Containers
    If IsNull(SOURCE_REQUIRED) Then
       MsgBox "No Source Required Entered"
    Else
    If [DESIRED_DENSITY] > 0 Then
        Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
        PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
        CF1 = [CONTAINER_FACTOR_1] / 100
        CF2 = [CONTAINER_FACTOR_2] / 100
        CF3 = [CONTAINER_FACTOR_3] / 100
        TARGET_DENSITY = [DESIRED_DENSITY]
        Cells_Per_Container = _
            [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
        CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
        CONTAINER_FACTOR = CF1 * CF2 * CF3
    
        Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
        Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
     End If
     End If
End Sub

Private Sub SPECIES_PRODUCT_CN_DblClick(Cancel As Integer)
    
    [SPECIES_PRODUCT_CN].Locked = False
    MsgBox "Species Product is now UNLOCKED for Editing."
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [SPECIES_PRODUCT_CN].Locked = True

End Sub

Private Sub TOTAL_REQUEST_DblClick(Cancel As Integer)

    [TOTAL_REQUEST].Locked = False
    MsgBox "Total Request is now UNLOCKED for Editing."
    
End Sub

Private Sub TOTAL_REQUEST_Exit(Cancel As Integer)
    
    If [TOTAL_REQUEST].Locked = False Then
        [TOTAL_REQUEST].Locked = True
        MsgBox "Total Request is now LOCKED."
    End If
    
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
    Forms!NMIS_AGREEMENT_LOTS!DESIRED_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    
Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click
    
End Sub


Private Sub Preview_Source_Work_Order_Click()
On Error GoTo Err_Preview_Source_Work_Order_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order"
    
    [CN].Requery
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Source_Work_Order_Click:
    Exit Sub

Err_Preview_Source_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Source_Work_Order_Click
    
End Sub