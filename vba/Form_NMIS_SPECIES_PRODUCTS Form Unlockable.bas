Option Compare Database

Private Sub CULTURAL_GROUP_DblClick(Cancel As Integer)
On Error GoTo Err_CULTURAL_GROUP_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_CULTURAL_GROUP_DblClick:
    Exit Sub

Err_CULTURAL_GROUP_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_CULTURAL_GROUP_DblClick
    
End Sub

Private Sub Current_Crop_Only_AfterUpdate()

    SPECIES_PRODUCT_Lookup.Requery
    DoCmd.Requery
    Filter_for_Species.Requery
    
End Sub

Private Sub Duplicate_Current_Species_Product_Click()
On Error GoTo Err_Duplicate_Current_Species_Product_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_PRODUCTS_Duplicate Form"
    Response = MsgBox("Create New Species Product using selected?", vbOKCancel)
    
    If Response = vbOK Then
        
        DoCmd.RunMacro "Refresh"
        DoCmd.OpenForm stDocName
    Else
        'MsgBox "OK I won't do it"
    End If
    
    
Exit_Duplicate_Current_Species_Product_Click:
    Exit Sub

Err_Duplicate_Current_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Duplicate_Current_Species_Product_Click
End Sub

Private Sub Filter_For_Product_AfterUpdate()

    'DoCmd.Requery
    SPECIES_PRODUCT_Lookup = Null
    
End Sub

Private Sub Filter_For_Product_DblClick(Cancel As Integer)

    Filter_For_Product = Null
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    Filter_For_Product = Null
    DoCmd.Requery
    Filter_for_Species.Requery
    
End Sub

Private Sub Filter_for_Species_AfterUpdate()

    Filter_For_Product = Null
    DoCmd.Requery
    
End Sub

Private Sub Filter_for_Species_DblClick(Cancel As Integer)

    Filter_for_Species = Null
    
End Sub

Private Sub Form_Close()
    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENTS"
    strFormName2 = "NMIS_AGREEMENT_LOTS"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS_APPEND"
    DoCmd.SetWarnings True
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        Forms![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 Then
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![SPECIES_PRODUCT_CN].Requery
        Forms![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN].Requery
    End If
End Sub


Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open_Click

    DoCmd.Requery
    DoCmd.GoToControl "SPECIES_PRODUCT_Lookup"

Exit_Form_Open_Click:
    Exit Sub

Err_Form_Open_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open_Click
    
    
End Sub

Private Sub Like_Description_AfterUpdate()

    DoCmd.Requery
    SPECIES_PRODUCT_Lookup.Requery
    
End Sub

Private Sub Like_Description_DblClick(Cancel As Integer)

    Like_Description = "*"

End Sub

Private Sub NMIS_FACTORS_subform_Exit(Cancel As Integer)

    DoCmd.RunCommand acCmdRefresh
    
End Sub

Private Sub Open_NMIS_Factors_Form_Click()
On Error GoTo Err_Open_NMIS_Factors_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_PRODUCTS"
    
    DoCmd.RunMacro "Refresh"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Factors_Form_Click:
    Exit Sub

Err_Open_NMIS_Factors_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Factors_Form_Click
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol.Locked = False
 
End Sub

Private Sub Plntmstr_Symbol_Enter()

    If Not IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol.Locked = True
    Else
        Plntmstr_Symbol.Locked = False
    End If
   
End Sub

Private Sub PRODUCT_CN_DblClick(Cancel As Integer)

    PRODUCT_CN.Locked = False
    'MsgBox "Product Description unlocked for editing"
    
End Sub

Private Sub PRODUCT_CN_Enter()
    If IsNull(Index) Then
        New_Species_Product = True
    End If
    
    If IsNull(PRODUCT_CN) Then
        PRODUCT_CN.Locked = False
        Else
        PRODUCT_CN.Locked = True
    End If
    
End Sub

Private Sub PRODUCT_CN_Exit(Cancel As Integer)
    If New_Species_Product Then
        DoCmd.RunMacro "Set_CN2"
        New_Species_Product = False
    End If

End Sub

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

Private Sub SPECIES_PRODUCT_DESC_DblClick(Cancel As Integer)

    SPECIES_PRODUCT_DESC.Locked = False
    
End Sub

Private Sub SPECIES_PRODUCT_DESC_Enter()

    If Not IsNull(SPECIES_PRODUCT_DESC) Then
        SPECIES_PRODUCT_DESC.Locked = True
    Else
        SPECIES_PRODUCT_DESC.Locked = False
    End If
    
End Sub

Private Sub SPECIES_PRODUCT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![SPECIES_PRODUCT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub SPECIES_PRODUCT_Lookup_Enter()

    SPECIES_PRODUCT_Lookup.Requery
    
End Sub

Private Sub Species_Symbol_DblClick(Cancel As Integer)

    Species_Symbol.Locked = False
    
End Sub

Private Sub Species_Symbol_Enter()

    If Not IsNull(Species_Symbol) Then
        Species_Symbol.Locked = True
    Else
        Species_Symbol.Locked = False
    End If
    
End Sub

Private Sub TOTAL_NUMBER_OF_FY_DblClick(Cancel As Integer)

    TOTAL_NUMBER_OF_FY.Locked = False
 
End Sub

Private Sub TOTAL_NUMBER_OF_FY_Enter()

    If Not IsNull(TOTAL_NUMBER_OF_FY) Then
        TOTAL_NUMBER_OF_FY.Locked = True
    Else
        TOTAL_NUMBER_OF_FY.Locked = False
    End If
    
End Sub

Private Sub TRANSPLANT_GROUP_DblClick(Cancel As Integer)
On Error GoTo Err_TRANSPLANT_GROUP_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_TRANSPLANT_GROUP_DblClick:
    Exit Sub

Err_TRANSPLANT_GROUP_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_TRANSPLANT_GROUP_DblClick
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
 
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
End Sub

Private Sub UNIT_Description_DblClick(Cancel As Integer)

    UNIT_Description.Locked = False
 
End Sub

Private Sub UNIT_Description_Enter()

    If Not IsNull(UNIT_Description) Then
        UNIT_Description.Locked = True
    Else
        UNIT_Description.Locked = False
    End If
End Sub

Private Sub View_By_Scientific_Name_AfterUpdate()

    SPECIES_PRODUCT_Lookup.Requery
    Filter_for_Species.Requery
    Species_Symbol.Requery
    Plntmstr_Symbol.Requery
    
End Sub
Private Sub Tip_on_Create_New_Species_Product_Click()
On Error GoTo Err_Tip_on_Create_New_Species_Product_Click


    MsgBox "To Create a new Species Product using a current Species Product, " & _
        "Select the Species Product to Duplicate and Click the Create New Species Product from Selected Button Below. " & _
        "To Create a Species Product from scratch click the New Record Icon (>*) on the menu bar or the Record Selector. " & _
        "To Add add or edit a Product click on the Add or Edit Product Button Below.", vbInformation

Exit_Tip_on_Create_New_Species_Product_C:
    Exit Sub

Err_Tip_on_Create_New_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Tip_on_Create_New_Species_Product_C
    
End Sub