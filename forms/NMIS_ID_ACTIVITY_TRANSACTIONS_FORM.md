# Form: NMIS_ID_ACTIVITY_TRANSACTIONS_FORM

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_LOCATIONS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_ID_LOCATIONS subform2`, `Form.NMIS_ID_ACTIVITIES_ACTIVITIES_subform`, `Form.Transaction_Totals_By_Location_and_amt_per_unit1a subform`, `Form.NMIS_ID_ACTIVITIES_TRANSACTIONS_subform`, `Form.NMIS_ORDERS_Contract_Item`, `Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform`  
**Opens:** `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE`, `Form:NMIS_AGREEMENT_LOT_SELECT`  
**Opened from (VBA):** `Activity_Transactions_Form_Open Module`, `Form_Client_Bill_Menu`, `Form_H_ASF`  
**Form events with code:** Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box178 |  |  |  |  | 1.96, 0.52, 7.83, 0.30 |
| Rectangle | Box170 |  |  |  |  | 0.00, 0.53, 1.96, 0.81 |
| Label | Default_Location_Label |  Location |  |  |  | 1.95, 0.05, 0.90, 0.19 |
| Line | Line17 |  |  |  |  | 0.16, 0.48, 9.61, 0.00 |
| Label | Label16 | NMIS ID Activities/Transactions  |  |  |  | 4.25, 0.06, 3.55, 0.31 |
| Label | Label96 | Default Activity |  |  |  | 0.89, 0.05, 0.89, 0.20 |
| Rectangle | Box97 |  |  |  |  | 0.86, 0.03, 0.97, 0.43 |
| CommandButton | Refresh_Close | Close |  |  |  | 9.28, 0.08, 0.49, 0.28 |
| ComboBox | Default_Activity_Code |  |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  | Enter | 0.89, 0.26, 0.91, 0.00 |
| Label | Default_Date Label | Default Date |  |  |  | 0.08, 0.05, 0.69, 0.19 |
| Rectangle | Box151 |  |  |  |  | 0.04, 0.03, 0.77, 0.43 |
| TextBox | Default_Date |  |  |  | AfterUpdate, Enter | 0.08, 0.26, 0.67, 0.00 |
| Label | Default_Container_Label | Container |  |  |  | 2.90, 0.05, 0.75, 0.19 |
| ComboBox | Default_Container |  |  | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_TYPE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS; | Enter | 2.90, 0.26, 0.76, 0.00 |
| Rectangle | Box158 |  |  |  |  | 1.92, 0.04, 2.22, 0.44 |
| ComboBox | Default_Location |  |  | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS ORDER BY NMIS_LOCATIONS.LOCATION; | Enter | 1.95, 0.26, 0.91, 0.00 |
| TextBox | DEFAULT_ID_ACTIVITY_UNIT_CODE |  | DEFAULT_UNIT_CODE |  |  | 5.67, 0.08, 0.96, 0.21 |
| Label | Label163 | SbLT |  |  |  | 3.70, 0.05, 0.35, 0.19 |
| TextBox | Default_Sublot |  |  |  |  | 3.70, 0.26, 0.35, 0.00 |
| TextBox | PRODUCT_GROUP |  | PRODUCT_GROUP |  |  | 6.83, 0.12, 0.00, 0.00 |
| Label | Label167 | View Ag. Lots Like |  |  |  | 6.78, 0.59, 1.06, 0.19 |
| TextBox | Like_Agreement_Lots |  |  |  | AfterUpdate, DblClick | 7.89, 0.58, 0.95, 0.18 |
| CheckBox | first_open | first_open |  |  |  | 4.75, 0.17, 0.00, 0.00 |
| Subform | NMIS_ID_LOCATIONS subform2 | NMIS_ID_LOCATIONS subform2 | Form.NMIS_ID_LOCATIONS subform2 (master: ID_LOCATION_UNIT_CODE → child: CN) |  |  | 4.21, 0.04, 3.36, 0.43 |
| TextBox | ID_LOCATION_UNIT_CODE |  | =[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].[Form]![ID_LOCATION_CN] |  |  | 6.79, 0.25, 0.00, 0.21 |
| ComboBox | Filter_For_Fy |  |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | DblClick | 0.96, 0.56, 0.52, 0.21 |
| Label | Filter_For_Fy_Label | Like Beg Fy: |  |  |  | 0.03, 0.57, 0.89, 0.21 |
| ComboBox | Filter_For_Client |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) Not Like "99*")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | DblClick | 3.59, 0.57, 0.95, 0.21 |
| Label | Filter_For_Client_Label | Like Client: |  |  |  | 2.74, 0.57, 0.81, 0.21 |
| ComboBox | Filter_For_End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | DblClick | 2.16, 0.58, 0.52, 0.20 |
| Label | Like_Agreement_Lots Label | Like Source ID |  |  |  | 4.60, 0.57, 1.03, 0.21 |
| TextBox | Filter_For_Source_ID |  |  |  | DblClick | 5.69, 0.56, 1.02, 0.21 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 8.93, 0.57, 0.82, 0.21 |
| Label | Label41 | Find Agreement Lot ID |  |  |  | 0.03, 0.82, 1.85, 0.20 |
| ComboBox | Agreement_Lot_Lookup |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS, "FY's " & [NMIS_AGREEMENT_LOTS].[BEGIN_FY] & "-" & [NMIS_AGREEMENT_LOTS].[END_FY] AS [FY's], Source_Lot_ID_and_Source_string.ID_SOURCE2 AS [ID/Source], IIf(Not IsNull([nmis_agreement_lots_1].[id]),"Prev ID: " & [nmis_agreement_lots_1].[id]) AS [Prev ID], [CLIENT_ASSOCIATE] & " " AS Client, NMIS_AGREEMENT_LOTS.ID_ORIGINAL AS [ID Orig], NMIS_AGREEMENT_LOTS.AKA, NMIS_AGREEMENT_LOTS.END_FY, NMIS_AGREEMENT_LOTS.BEGIN_FY FROM NMIS_PRODUCTS RIGHT JOIN (NMIS_SPECIES_PRODUCTS RIGHT JOIN ((NMIS_AGREEMENTS RIGHT JOIN ((Source_Lot_ID_and_Source_string RIGHT JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) LEFT JOIN NMIS_AGREEMENT_LOTS AS NMIS_AGREEMENT_LOTS_1 ON NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS_1.CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) LEFT JOIN NMIS_SOURCE_LOTS ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE ((([CLIENT_ASSOCIATE] & " ") Like [Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Filter_For_Client] & "*") AND ((NMIS_AGREEMENT_LOTS.END_FY) Like [Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Filter_For_End_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Filter_For_Fy] & "*") AND ((NMIS_AGREEMENT_LOTS.ID) Like Nz([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Like_Agreement_Lots],"*")) AND ((NMIS_SOURCE_LOTS.ID) Like [Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Filter_For_Source_ID] & "*" Or (NMIS_SOURCE_LOTS.ID) Is Null)) ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID; | AfterUpdate, DblClick, Enter | 0.05, 1.05, 1.83, 0.24 |
| TextBox | Combo138 | Req: | TOTAL_REQUEST |  |  | 8.73, 1.11, 0.68, 0.22 |
| TextBox | SOURCE_LOT_CN | Source: | ID_SOURCE2 |  |  | 2.54, 1.10, 4.52, 0.22 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 9.45, 1.11, 0.37, 0.22 |
| TextBox | AGREEMENT_LOT_CN |  | CN |  |  | 3.89, 0.85, 0.00, 0.00 |
| TextBox | FYs |  | FYs |  |  | 7.12, 1.10, 1.14, 0.22 |
| TextBox | What_It_Is_Longer |  | What_It_Is_Longer |  |  | 1.99, 0.85, 7.83, 0.21 |
| TextBox | CN |  | CN |  |  | 3.89, 0.82, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl67 |  |  |  |  | 0.01, 0.03, 9.88, 5.60 |
| Page | Activities_Transactions | Activities/Transactions |  |  |  | 0.10, 0.32, 9.69, 5.22 |
| Subform | NMIS_ID_ACTIVITIES_ACTIVITIES_subform |  | Form.NMIS_ID_ACTIVITIES_ACTIVITIES_subform (master: CN → child: AGREEMENT_LOT_CN) |  | Enter, Exit | 0.11, 0.32, 9.66, 2.80 |
| Subform | Transaction_Totals_By_Location_and_amt_per_unit1a subform |  | Form.Transaction_Totals_By_Location_and_amt_per_unit1a subform |  |  | 2.10, 0.32, 7.68, 2.79 |
| Subform | NMIS_ID_ACTIVITIES_TRANSACTIONS_subform |  | Form.NMIS_ID_ACTIVITIES_TRANSACTIONS_subform (master: ID_ACTIVITY_CN → child: ID_ACTIVITY_CN) |  | Enter, Exit | 0.10, 3.16, 9.69, 2.39 |
| Page | Page169 | Reports |  |  |  | 0.10, 0.32, 9.69, 5.22 |
| CommandButton | Agreement_lot_Activities_Transactions | Agreement Lot Act/Trans... |  |  | Click | 0.16, 0.38, 2.00, 0.00 |
| CommandButton | Agreement_lot_Act_Tran_Balances | Agreemt Lot Act/Trans Balance... |  |  | Click | 0.16, 0.65, 2.00, 0.00 |
| Page | Invisible_Subforms | Invisible Links and Subforms |  |  |  | 0.10, 0.32, 9.69, 5.22 |
| Subform | NMIS_ORDERS_Contract_Item |  | Form.NMIS_ORDERS_Contract_Item (master: Link3_Text → child: CN) |  |  | 1.37, 1.57, 2.62, 1.27 |
| Subform | NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform |  | Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform (master: ID_ACTIVITY_CN → child: CN) |  |  | 4.99, 1.50, 3.71, 2.04 |
| TextBox | ID_ACTIVITY_CN |  | =NMIS_ID_ACTIVITIES_ACTIVITIES_subform.Form!CN |  |  | 2.20, 0.50, 4.92, 0.21 |
| TextBox | Link3_Text |  | =NMIS_ID_ACTIVITIES_ACTIVITIES_subform.Form!ORDER_CN |  |  | 2.20, 0.75, 4.92, 0.21 |
| Label | Label135 | Link  ID Activity Order_CN: |  |  |  | 0.28, 0.75, 1.82, 0.20 |
| Label | Label136 | Link with ID Activity_CN: |  |  |  | 0.43, 0.50, 1.67, 0.20 |

## Code-behind (VBA)

```vb
Private Sub Agreement_lot_Act_Tran_Balances_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE"
    DoCmd.OpenForm stDocName
    DoCmd.GoToControl "NMIS_AGREEMENT_LOT_REPORT_CREATE"
    
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT] = Agreement_Lot_Lookup
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID2_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID3_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID4_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID5_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID2_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID3_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID4_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID5_SELECT Label].Visible = False
    
 
End Sub

Private Sub Agreement_lot_Activities_Transactions_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_SELECT"
    
    DoCmd.OpenForm stDocName
    DoCmd.GoToControl "NMIS_AGREEMENT_LOT_REPORT_CREATE"
    
    
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT] = Agreement_Lot_Lookup
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID2_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID3_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID4_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID5_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID2_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID3_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID4_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID5_SELECT Label].Visible = False
    
End Sub

Private Sub Agreement_Lot_Lookup_AfterUpdate()

    'Find the record that matches the control.
    Dim rs As Object

    If first_open Then
        first_open = False
        What_It_Is_Longer.Visible = True
        Source_Label.Visible = True
        SOURCE_LOT_CN.Visible = True
        FYs.Visible = True
        Combo138.Visible = True
        Label139.Visible = True
        UNIT_CODE.Visible = True
        [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
        TabCtl67.Visible = True
    End If
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Default_ID_Location_CN] = Null
    
    [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
    
    If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]) Then
        DoCmd.GoToControl "ACTIVITY_CODE"
    Else
        DoCmd.GoToControl "ACTIVITY_UNITS"
    End If
    What_It_Is_Longer.Visible = True
    Source_Label.Visible = True
    SOURCE_LOT_CN.Visible = True
    FYs.Visible = True
    Combo138.Visible = True
    Label139.Visible = True
    UNIT_CODE.Visible = True
    
End Sub

Private Sub Agreement_Lot_Lookup_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = Agreement_Lot_Lookup

    If (Not IsNull([Agreement_Lot_Lookup]) Or [Agreement_Lot_Lookup] = "") Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & [Agreement_Lot_Lookup] & "'"
        Me.Bookmark = rs.Bookmark

        'DoCmd.FindRecord
        '"[CN] = [LastAgreementCN]"
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Agreement_Lot_Lookup]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    End If
End Sub

Private Sub Agreement_Lot_Lookup_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form!ID_LOCATION_CN.TabStop = True
    If first_open Then Agreement_Lot_Lookup = Null
    Agreement_Lot_Lookup.Requery
        
End Sub

Private Sub Default_Activity_Code_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Container_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
    
End Sub

Private Sub Default_Date_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Location_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_End_FY_DblClick(Cancel As Integer)

    Filter_For_End_Fy = "*"
    
End Sub

Private Sub Filter_For_Fy_DblClick(Cancel As Integer)

    Filter_For_Fy = "*"
    
End Sub

Private Sub Filter_For_Source_ID_DblClick(Cancel As Integer)

    Filter_For_Source_ID = "*"
    
End Sub

Private Sub Form_Current()

    Agreement_Lot_Lookup = CN  'update the find record box match record selected
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Agreement_Lot_Lookup"
    What_It_Is_Longer.Visible = False
    Source_Label.Visible = False
    SOURCE_LOT_CN.Visible = False
    FYs.Visible = False
    Combo138.Visible = False
    Label139.Visible = False
    UNIT_CODE.Visible = False
    TabCtl67.Visible = False
    
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    Agreement_Lot_Lookup.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)
On Error GoTo Err_Like_Agreement_Lots_DblClick

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Like_Agreement_Lots_DblClick:
    Exit Sub

Err_Like_Agreement_Lots_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Like_Agreement_Lots_DblClick
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Exit(Cancel As Integer)
    
    If (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE] = "ORDER" And _
        IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ORDER_CN]) And _
        Not IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![CN])) Then
        MsgBox "This Activity REQUIRES an ORDER NUMBER"
    End If
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![CN]) Then
        MsgBox "Must enter Activity Information First"
        [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
        If IsNull(Activity_Code) Then
            DoCmd.GoToControl "[NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form!ACTIVITY_CODE"
        Else
            'MsgBox "Must enter Activity Information First"
            'DoCmd.GoToControl "ACTIVITY_UNITS"
        End If
    Else
        [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = True
        ac = [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
        If ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XPLTC" Or ac = "XPLTP" Then
            [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = True
        Else
            [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = False
        End If
    End If
    
End Sub

Private Sub NMIS_ID_LOCATIONS_subform1_Exit(Cancel As Integer)

    'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery

End Sub

Private Sub View_All_Activities_Click()

     Activity_Parent1 = "*"
     Activity_Code1 = "*"
     Default_Activity_Code = Null
     Viewing_All_Activities_Notice.Visible = True
     DoCmd.Requery
     
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Exit(Cancel As Integer)

    '[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![FISCAL_YEAR].SetFocus
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Inv_Info].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form!ID_LOCATION_CN.TabStop = True
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
  
End Sub
```
