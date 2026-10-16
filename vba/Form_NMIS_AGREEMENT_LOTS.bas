
Private Sub AKA_DblClick(Cancel As Integer)

    AKA.Locked = False
    
End Sub

Private Sub AKA_Enter()
    
    If Not IsNull(AKA) Then
        AKA.Locked = True
    Else
        AKA.Locked = False
    End If
    
End Sub

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
    'Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double

'Propagule
    If CATEGORY_CODE = "NSP" Then
    'Calculate Grow Containers
        EST_CONTAINERS_REQUIRED = TOTAL_REQUEST * Propagule_BF_per_Acre
    'Calculate Source Needs
        MsgBox "NMIS does not currently calculate source needs. To be implemented at a later time."
    Else
        
'Non-Propagule
    'Calculate source needs
    If Pure_Live_Seed > 0 Then
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT / 100)
    HARVEST_FACTOR = (Forms!NMIS_AGREEMENT_LOTS!HF1 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF2 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF3 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF4 / 100)
    Source_Req = Round((REQ / (PLS * HARVEST_FACTOR * ASF)), 3)

    If Source_Req <= Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] Then
            Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] >= 0 Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                    MsgBox "This is a Zero Balance Lot!"
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                Else
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                    MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                End If
            Else
                Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                MsgBox "Undetermined amount of source material."
            End If
    End If
    Else
        MsgBox "No test data entered to calculate source. Calculating containers only"
    End If
    
    'Calculate Grow Containers
    If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
            
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_FACTOR) + 0.35
            End If
        Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
     End If
     End If
     
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub

Private Sub CONTAINER_ASF_ADJUSTMENT_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'CELLS_PER_CONTAINER = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![CELLS_PER_CONTAINER]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub CONTAINER_FACTOR_1_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
     
End Sub

Private Sub CONTAINER_FACTOR_2_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container =
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub CONTAINER_FACTOR_3_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub Container_Factor_Tip_Click()

    MsgBox "Container Factors GREATER THAN 100% with an OP of / will REDUCE the number of containers " & _
            "and with an OP of * will INCREASE the number of containers." & _
            " Container Factors LESS THAN than 100% with an OP of / will INCREASE the number of containers " & _
            "and with an OP of * will REDUCE the number of containers." & _
            "   A Container ASF adjustment GREATER THAN 100% will INCREASE the number of containers and LESS THAN 100% " & _
            "will REDUCE the number of containers", vbInformation, _
            "Container Factor Help"
    
End Sub

Private Sub Containers_Required_by_spc_DblClick(Cancel As Integer)

    'If Pure_Live_Seed > 0 Then
        If Not IsNull(Containers_Required_by_spc) And CONTAINER_FACTOR_3 = 100 Then
            CONTAINER_FACTOR_3 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
            EST_CONTAINERS_REQUIRED = Containers_Required_by_spc
        End If
    'End If
 
End Sub

Private Sub Containers_Will_Grow_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    
End Sub

Private Sub Desired_Density_DblClick(Cancel As Integer)

    'MsgBox "Target Density is now UNLOCKED for Editing."
    [DESIRED_DENSITY].Locked = False

End Sub

Private Sub Desired_Density_Exit(Cancel As Integer)

'Relock Desired_Density
    
    If [DESIRED_DENSITY].Locked = False Then
        [DESIRED_DENSITY].Locked = True
    End If
    
'Recalculate the container needs if the Target Density is changed
 

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'CELLS_PER_CONTAINER = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![CELLS_PER_CONTAINER]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF) + 0.35
                'Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                '((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  'CONTAINER_ASF)
                  'Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                  '(([Source_Will_Grow_Gross] * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  'CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
      
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_Client_Enter()

    Filter_For_Client.Requery
    
End Sub

Private Sub Filter_For_Product_DblClick(Cancel As Integer)

    Filter_For_Product = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_DblClick(Cancel As Integer)

    Filter_for_Product_Type = "*"
    
End Sub

Private Sub Filter_for_Species_DblClick(Cancel As Integer)

    Filter_for_Species = "*"
    
End Sub

Private Sub Filter_for_Species_Enter()

    Filter_for_Species.Requery
    
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Find_Lot_Enter()

    Find_Lot.Requery
    
End Sub

Private Sub Form_Close()

' Close the NMIS_AGREEMENT_LOTS_NEW FORM if it is open

    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        DoCmd.Close acForm, strFormName
        Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN].Requery
        DoCmd.GoToRecord , , acLast
    End If
    
End Sub

Private Sub Form_Current()
    
    Find_Lot = CN  'update the find record box match record selected
    SPECIES_PRODUCT_CN.Requery
    PREVIOUS_SPECIES_PRODUCT_CN.Requery
    PREVIOUS_AGREEMENT_LOT_CN.Requery

End Sub

Private Sub Form_Open(Cancel As Integer)

    Dim strFormName As String
    Dim strFormName2 As String
    Dim strFormName3 As String
    Dim strFormName4 As String
    Dim strFormName5 As String
    Dim strFormName6 As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    strFormName2 = "NMIS_AGREEMENTS"
    strFormName3 = "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
    strFormName4 = "NMIS_PRODUCT_INVENTORIES"
    strFormName5 = "NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM"
    strFormName6 = "Seed_Sow_Withdrawal_Ticket subform"
    strFormName7 = "NMIS_ID_ACTIVITY_FORM"
    
    If (SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 _
        Or SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 _
            Or SysCmd(acSysCmdGetObjectState, acForm, strFormName3) <> 0 _
                Or SysCmd(acSysCmdGetObjectState, acForm, strFormName4) <> 0 _
                    Or SysCmd(acSysCmdGetObjectState, acForm, strFormName5) <> 0 _
                        Or SysCmd(acSysCmdGetObjectState, acForm, strFormName6) <> 0 _
                            Or SysCmd(acSysCmdGetObjectState, acForm, strFormName7) <> 0) Then
        Title1.Visible = False
        Title2.Visible = True
        Sort_By_Entry_Order.Visible = False
        Screen_For_Begin_FY.Visible = False
        Screen_For_End_FY.Visible = False
        Find_Lot.Visible = False
        Filter_for_Product_Type.Visible = False
        Filter_For_Product.Visible = False
        Filter_For_Client.Visible = False
        Filter_for_Species.Visible = False
        Filter_for_Product_Type_Label.Visible = False
        Filter_For_Product_Label.Visible = False
        Filter_For_Client_Label.Visible = False
        Filter_for_Species_Label.Visible = False
        Clear_Filters.Visible = False
        [Like_Agreement_Lots Label].Visible = False
        Like_Agreement_Lots.Visible = False
        Like_Source_Lots.Visible = False
        Wildcard_Tips.Visible = False
        'DoCmd.GoToControl "ID"
        DoCmd.GoToControl "Use Last Test Data"
    Else
        Title1.Visible = True
        Title2.Visible = False
        Sort_By_Entry_Order.Visible = True
        Screen_For_Begin_FY.Visible = True
        Screen_For_End_FY.Visible = True
        Find_Lot.Visible = True
        Filter_for_Product_Type.Visible = True
        Filter_For_Product.Visible = True
        Filter_For_Client.Visible = True
        Filter_for_Species.Visible = True
        Filter_for_Product_Type_Label.Visible = True
        Filter_For_Product_Label.Visible = True
        Filter_For_Client_Label.Visible = True
        Filter_for_Species_Label.Visible = True
        [Like_Agreement_Lots Label].Visible = True
        Like_Agreement_Lots.Visible = True
        Clear_Filters.Visible = True
        DoCmd.GoToControl "Find_Lot"
    End If
    
End Sub

Private Sub Germ_Detail_Click()

On Error GoTo Err_erm_Detail_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot"
    If Not IsNull([NMIS_SOURCE_LastTestData Query subform].Form![GERM_PCT]) Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "No Detailed Germination Information Available"
    End If
    
Exit_erm_Detail_Click:
    Exit Sub

Err_erm_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_erm_Detail_Click
        
End Sub

Private Sub HARVEST_ASF_ADJUSTMENT_DblClick(Cancel As Integer)
    
    DoCmd.OpenForm "H_ASF"
    
End Sub

Private Sub Harvest_ASF_Form_Click()
    
    DoCmd.OpenForm "H_ASF"
 
End Sub

Private Sub HARVEST_FACTOR_1_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub HARVEST_FACTOR_2_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub HARVEST_FACTOR_3_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub Harvest_Factor_Tip_Click()

    MsgBox "Harvest Factors GREATER THAN 100% with an OP of / will INCREASE the amount of seed " & _
            "and with an OP of * will REDUCE the amount of seed." & _
            "   Harvest Factors LESS THAN than 100% with an OP of / will REDUCE the amount of seed " & _
            "and with an OP of * will INCREASE the amount of seed." & _
            "   A Harvest ASF adjustment GREATER THAN 100% will REDUCE the amount of seed and LESS THAN 100 " & _
            "will INCREASE the amount of seed", vbInformation, _
            "Harvest Factor Help"
  
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

Private Sub Like_Agreement_Lots_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)

    Like_Agreement_Lots = "*"
    
End Sub

Private Sub Like_Source_Lots_DblClick(Cancel As Integer)

    Like_Source_Lots = "*"

End Sub

Private Sub NURSERY_ASSOCIATE_DblClick(Cancel As Integer)

    NURSERY_ASSOCIATE.Locked = False
    
End Sub

Private Sub NURSERY_ASSOCIATE_Enter()

    NURSERY_ASSOCIATE.Locked = True
    
End Sub



Private Sub PREVIOUS_AGREEMENT_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(PREVIOUS_AGREEMENT_LOT_CN) And IsNull(PREVIOUS_NURSERY_ASSOCIATE) Then
        PREVIOUS_NURSERY_ASSOCIATE = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        PREVIOUS_NURSERY_ASSOCIATE.Requery
    End If
    
End Sub

Private Sub PREVIOUS_SPECIES_PRODUCT_CN_Enter()

    PREVIOUS_SPECIES_PRODUCT_CN.Requery

End Sub

Private Sub Refresh_and_Close_Form_Click()
On Error GoTo Err_Refresh_and_Close_Form_Click

    Dim stDocName As String

    stDocName = "Close_Form"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Form_Click:
    Exit Sub

Err_Refresh_and_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Form_Click
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Screen_For_Begin_FY_DblClick(Cancel As Integer)

    Screen_For_Begin_FY = "*"
    
End Sub

Private Sub Screen_For_Begin_FY_Enter()

    Screen_For_Begin_FY.Requery
    
End Sub

Private Sub Screen_For_End_FY_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Screen_For_End_FY_DblClick(Cancel As Integer)

    Screen_For_End_FY = "*"
    
End Sub

Private Sub Screen_For_End_FY_Enter()

    Screen_For_End_FY.Requery
  
End Sub

Private Sub Shortage_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Source_Will_Grow, 3) 'Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    [NMIS_AGREEMENTS subform1].Form![AMOUNT_REQUESTED] = Round(Source_Will_Grow, 3)
    
End Sub

Private Sub Sort_By_Entry_Order_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub SOURCE_LOT_CN_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
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

Private Sub SOURCE_REQUIRED_AfterUpdate()

    If Not IsNull(SOURCE_REQUIRED) Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
            MsgBox "This is a Zero Balance Lot!"
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum of Activity_Units], 3)
            MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
        End If
        End If
    End If
        
End Sub

Private Sub Source_Required_by_spc_DblClick(Cancel As Integer)

    If Pure_Live_Seed > 0 Then
        If Not IsNull(Source_Required_by_spc) Then
            If HARVEST_FACTOR_4 = 100 And CONTAINER_FACTOR_3 = 100 Then
                HARVEST_FACTOR_4 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                CONTAINER_FACTOR_3 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                SOURCE_REQUIRED = Round(Source_Required_by_spc, 3)
            End If
            
            If Not IsNull(SOURCE_REQUIRED) Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
                    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                        MsgBox "This is a Zero Balance Lot!"
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                    Else
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                        MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                    End If
                End If
            End If
        End If
    End If
 
End Sub

Private Sub SOURCE_REQUIRED_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub SOURCE_REQUIRED_DblClick(Cancel As Integer)

    [SOURCE_REQUIRED].Locked = False
    'MsgBox "Source Required is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_REQUIRED_Exit(Cancel As Integer)
'Relock Source_Required
    
    If [SOURCE_REQUIRED].Locked = False Then
        [SOURCE_REQUIRED].Locked = True
    End If

'Recalculate the container needs for bareroot if the source amount is changed

   If [Type_of_Container] = "SB" Then
  
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
        If Not IsNull(Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT) Then
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
        End If
        CF1 = [CF1A] / 100
        CF2 = [CF2A] / 100
        CF3 = [CF3A] / 100
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
   End If
    
End Sub

Private Sub Source_Will_Grow_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Source_Will_Grow, 3) 'Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    [NMIS_AGREEMENTS subform1].Form![AMOUNT_REQUESTED] = Round(Source_Will_Grow, 3)
   
End Sub

Private Sub SPC_Use_Containers_Click()

    'If Pure_Live_Seed > 0 Then
        If Not IsNull(Containers_Required_by_spc) And THINNING_PROBABILITY_PCT = 100 Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                THINNING_PROBABILITY_PCT = Round(Calc_Source / Source_Required_by_spc * 100, 0)
                'CONTAINER_PROBABILITY_PCT = Round(EST_CONTAINERS_REQUIRED / Containers_Required_by_spc * 100, 0)
                EST_CONTAINERS_REQUIRED = Containers_Required_by_spc
            End If
        End If
    'End If
 
End Sub

Private Sub SPC_Use_Source_Click()

    If Pure_Live_Seed > 0 Then
        If Not IsNull(Source_Required_by_spc) Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                CONTAINER_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                THINNING_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                SOURCE_REQUIRED = Round(Source_Required_by_spc, 3)
            End If
            
            If Not IsNull(SOURCE_REQUIRED) Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
                    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                        MsgBox "This is a Zero Balance Lot!"
                        'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                    Else
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                        MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                    End If
                End If
            End If
        End If
    End If

End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub SPECIES_PRODUCT_CN_DblClick(Cancel As Integer)
    
    [SPECIES_PRODUCT_CN].Locked = False
    'MsgBox "Species Product is now UNLOCKED for Editing."
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [SPECIES_PRODUCT_CN].Locked = True

End Sub

Private Sub TOTAL_REQUEST_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub TOTAL_REQUEST_DblClick(Cancel As Integer)

    [TOTAL_REQUEST].Locked = False
    'MsgBox "Total Request is now UNLOCKED for Editing."
    
End Sub

Private Sub TOTAL_REQUEST_Exit(Cancel As Integer)
    
    If [TOTAL_REQUEST].Locked = False Then
        [TOTAL_REQUEST].Locked = True
        'MsgBox "Total Request is now LOCKED."
    End If
    
End Sub

Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click
    
    'If IsNull(Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT) Then
        Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
        Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    'End If
            
    DoCmd.GoToControl "Use_Default_Factors"
    
Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click
    
End Sub


Private Sub Use_Default_Factors_Click()
On Error GoTo Err_Use_Default_Factors_Click

    [NMIS_FACTORS subform].Requery
    
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 = [NMIS_FACTORS subform]![HARVEST_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 = [NMIS_FACTORS subform]![HARVEST_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 = [NMIS_FACTORS subform]![HARVEST_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 = [NMIS_FACTORS subform]![HARVEST_FACTOR_4]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!DESIRED_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    Forms!NMIS_AGREEMENT_LOTS!THINNING_PROBABILITY_PCT = 100
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_PROBABILITY_PCT = 100
    
    DoCmd.GoToControl "Calculate"
    
Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click
    
End Sub

Private Sub Preview_Source_Work_Order_Click()
On Error GoTo Err_Preview_Source_Work_Order_Click

    DoCmd.RunCommand acCmdRefresh
    
    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order"
    
    'If SOURCE_REQUIRED > 0 Then
        [CN].Requery
        DoCmd.OpenReport stDocName, acPreview
   ' Else
        'MsgBox "No Source Required"
    'End If
    
Exit_Preview_Source_Work_Order_Click:
    Exit Sub

Err_Preview_Source_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Source_Work_Order_Click
    
End Sub

Private Sub Tip_Seed_Per_Cell_Adjustment_Click()

    MsgBox "Enter the desired seed(s) per cell. The results are the adjustment to make to the number of Containers or Amount of Source Material. " & _
            "Click on the Use Button for the adjustment you want to use and a SPC% (Seed Per Cell Adjustment %) will be entered.", vbInformation, _
            "Seeds Per Cell Help"
    
End Sub

Private Sub View_Source_Calcs_Click()

    DoCmd.RunCommand acCmdRefresh
    DoCmd.OpenReport "Agreement_Lot_Source_Calcs", acPreview
    
End Sub
Private Sub Clear_Filters_Click()
On Error GoTo Err_Clear_Filters_Click

    Dim stDocName As String

    Filter_for_Product_Type = "*"
    Filter_For_Product = "*"
    Screen_For_Begin_FY = "*"
    Filter_For_Client = "*"
    Filter_for_Species = "*"
    Like_Agreement_Lots = "*"
    Like_Source_Lots = "*"

Exit_Clear_Filters_Click:
    Exit Sub

Err_Clear_Filters_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Clear_Filters_Click
    
End Sub

Private Sub Wildcard_Tips_Click()

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

End Sub