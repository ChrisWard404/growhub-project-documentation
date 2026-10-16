# Form: NMIS_ID_ACTIVITY_FORM

**Caption:** NMIS ID Activities and Transactions  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_PRODUCTS.UNIT_CODE, Source_Lot_ID_and_Source_string.ID_SOURCE2, "FY's: " & [BEGIN_FY] & "-" & [END_FY] AS FYs, IIf([PRODUCT_GROUP]="PLANT","M","LB") AS DEFAULT_UNIT_CODE FROM (NMIS_PRODUCT_TYPES RIGHT JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) RIGHT JOIN ((NMIS_AGREEMENT_LOTS LEFT JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN = Source_Lot_ID_and_Source_string.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN ORDER BY NMIS_AGREEMENT_LOTS.Index;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_ID_ACTIVITIES_ACTIVITIES3_subform`, `Form.NMIS_ORDERS_Contract_Item`, `Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform`  
**Opens:** `Form:NMIS_AGREEMENT_LOTS`  
**Form events with code:** Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.16, 0.47, 9.61, 0.00 |
| Label | Label16 | NMIS ID Activities |  |  |  | 4.09, 0.07, 1.98, 0.31 |
| Label | Label96 | Default Activity |  |  |  | 0.96, 0.06, 0.89, 0.19 |
| Rectangle | Box97 |  |  |  |  | 0.93, 0.03, 0.97, 0.43 |
| CommandButton | Refresh_Close | Close |  |  |  | 9.12, 0.12, 0.47, 0.28 |
| ComboBox | Default_Activity_Code |  |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  | AfterUpdate | 0.96, 0.26, 0.89, 0.00 |
| TextBox | PRODUCT_GROUP |  | PRODUCT_GROUP |  |  | 7.04, 0.17, 0.00, 0.00 |
| TextBox | DEFAULT_ID_ACTIVITY_UNIT_CODE |  | DEFAULT_UNIT_CODE |  |  | 8.17, 0.08, 0.96, 0.21 |
| Label | Default_Date Label | Default Date |  |  |  | 0.14, 0.05, 0.69, 0.19 |
| Rectangle | Box151 |  |  |  |  | 0.12, 0.03, 0.74, 0.43 |
| TextBox | Default_Date |  |  |  | AfterUpdate | 0.15, 0.26, 0.66, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box153 |  |  |  |  | 0.00, 0.02, 1.96, 0.55 |
| Label | Label41 | Agreement Lot |  |  |  | 0.06, 0.06, 1.81, 0.20 |
| ComboBox | Agreement_Lot_Lookup |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID; | AfterUpdate, DblClick | 0.08, 0.29, 1.80, 0.24 |
| TabControl | TabCtl67 |  |  |  |  | 0.01, 0.58, 9.67, 5.66 |
| Page | Activities_Transactions | Activities |  |  |  | 0.10, 0.88, 9.48, 5.28 |
| Subform | NMIS_ID_ACTIVITIES_ACTIVITIES3_subform |  | Form.NMIS_ID_ACTIVITIES_ACTIVITIES3_subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.10, 0.88, 9.47, 5.28 |
| Page | Invisible_Subforms | Invisible Links and Subforms |  |  |  | 0.10, 0.88, 9.48, 5.27 |
| Subform | NMIS_ORDERS_Contract_Item |  | Form.NMIS_ORDERS_Contract_Item (master: Link3_Text → child: CN) |  |  | 1.92, 2.39, 2.62, 1.27 |
| Subform | NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform |  | Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform (master: ID_ACTIVITY_CN → child: CN) |  |  | 5.04, 1.97, 3.71, 2.04 |
| TextBox | ID_ACTIVITY_CN |  | =[NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].[Form]![CN] |  |  | 2.20, 1.05, 4.92, 0.21 |
| TextBox | Link3_Text |  | =[NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].[Form]![ORDER_CN] |  |  | 2.20, 1.30, 4.92, 0.21 |
| Label | Label135 | Link  ID Activity Order_CN: |  |  |  | 0.28, 1.30, 1.82, 0.20 |
| Label | Label136 | Link with ID Activity_CN: |  |  |  | 0.43, 1.05, 1.67, 0.20 |
| TextBox | Combo138 | Req: | TOTAL_REQUEST |  |  | 2.43, 0.28, 0.81, 0.22 |
| TextBox | SOURCE_LOT_CN | Source: | ID_SOURCE2 |  |  | 2.65, 0.03, 4.52, 0.22 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.29, 0.28, 0.37, 0.22 |
| TextBox | CN |  | CN |  |  | 6.02, 0.14, 0.00, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | CN |  |  | 4.85, 0.18, 0.00, 0.00 |
| TextBox | FYs |  | FYs |  |  | 7.22, 0.03, 1.14, 0.22 |

## Code-behind (VBA)

```vb
Private Sub Agreement_Lot_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
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
            "[CN] = Forms![NMIS_ID_ACTIVITY_FORM]![Agreement_Lot_Lookup]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    End If
End Sub

Private Sub Default_Activity_Code_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].Requery
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].Requery
    
End Sub

Private Sub Form_Current()

    Agreement_Lot_Lookup = CN  'update the find record box match record selected
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub View_All_Activities_Click()

     Activity_Parent1 = "*"
     Activity_Code1 = "*"
     Default_Activity_Code = Null
     Viewing_All_Activities_Notice.Visible = True
     DoCmd.Requery
     
End Sub
```
