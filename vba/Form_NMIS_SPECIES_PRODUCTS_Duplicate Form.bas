Option Compare Database

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Form_Close()
    Dim strFormName As String
    
    strFormName = "NMIS_SPECIES_PRODUCTS Form"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        Forms![NMIS_SPECIES_PRODUCTS Form].Requery
    End If
    
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

Private Sub PRODUCT_CN_Enter()
   
    PRODUCT_CN = [Forms]![NMIS_SPECIES_PRODUCTS Form]![PRODUCT_CN]

    If IsNull(CN) And Not IsNull(Index) Then
        DoCmd.RunMacro "Set_CN2"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_CYCLES_APPEND"
        DoCmd.OpenQuery "NMIS_SPECIES_PROD_DUP_FACTOR_APPEND_CT"
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_FACTORS_APPEND1"
        DoCmd.RunMacro "Refresh"
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_FACTORS_APPEND"
        DoCmd.DeleteObject acTable, "**NMIS_SPECIES_PROD_DUP_FACTOR_APPEND"
        DoCmd.SetWarnings True
        DoCmd.RunMacro "Refresh"
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