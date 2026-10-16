# Form: Source_Material_Work_List

**Caption:** Source Material Work Order List  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE`, `Report:Seed_Bank_Work_Order_Checklist`, `Report:Seed_Bank_Work_Order_list`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Agreement Lot Source Material Withdrawal Requests |  |  |  | 1.49, 0.08, 2.08, 0.74 |
| ComboBox | Plntmstr_Symbol | Like Species: |  | SELECT NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM (NMIS_PRODUCTS INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN) INNER JOIN NMIS_SOURCE_LOTS ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports] And (NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports]) AND ((NMIS_PRODUCTS.PRODUCT_CLASS) Like [Forms]![Source_Material_Work_List]![Product_Class]) AND ((Left$([nmis_agreement_lots].[CATEGORY_CODE],1)) Like [Forms]![Source_Material_Work_List]![BorC]) AND ((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) GROUP BY NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR; | Enter, Exit | 2.22, 2.33, 0.90, 0.25 |
| ComboBox | Product_Class | Like Stock Type: |  | SELECT NMIS_PRODUCTS.PRODUCT_CLASS FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Source_Material_Work_List]![Plntmstr_Symbol]) AND ((Left$([nmis_products].[CATEGORY_CODE],1)) Like [Forms]![Source_Material_Work_List]![BorC] And (Left$([nmis_products].[CATEGORY_CODE],1)) Like [Forms]![Source_Material_Work_List]![BorC]) AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_PRODUCTS.PRODUCT_CLASS HAVING (((NMIS_PRODUCTS.PRODUCT_CLASS) Not Like "0*")) ORDER BY NMIS_PRODUCTS.PRODUCT_CLASS; | Exit | 2.22, 2.02, 1.51, 0.25 |
| Line | Line14 |  |  |  |  | 0.08, 0.89, 4.79, 0.00 |
| CommandButton | Print Work Orders | Click to Preview/Print Withdrawal Requests |  |  | Click | 0.99, 3.00, 1.51, 0.58 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 2.22, 1.69, 2.00, 0.24 |
| CheckBox | Hide Withdrawn Lots | Hide Withdrawn Lots |  |  |  | 2.35, 2.74, 0.00, 0.00 |
| CommandButton | Print Work Orders_Checklist | Click to Preview/Print Withdrawal Checklist |  |  | Click | 2.75, 3.00, 1.51, 0.58 |
| TextBox | Ordered_By | Ordered by: |  |  |  | 2.21, 0.99, 2.00, 0.24 |
| TextBox | Ticket_ID | Order #: |  |  |  | 2.21, 1.28, 0.67, 0.24 |
| TextBox | Date | Date: |  |  |  | 3.50, 1.28, 0.72, 0.24 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Offsite_Source_Order_Form_Click()
On Error GoTo Err_Preview_Offsite_Source_Order_Form_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Offsite_Source_Order_Form_C:
    Exit Sub

Err_Preview_Offsite_Source_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Offsite_Source_Order_Form_C
    
End Sub

Private Sub Begin_ID_Change()
    
    End_ID = Null
    
End Sub

Private Sub Begin_ID_Enter()

    Begin_ID.Requery
    
End Sub

Private Sub End_ID_Enter()

    End_ID.Requery
    
End Sub

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Plntmstr_Symbol_Exit(Cancel As Integer)

    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
End Sub

Private Sub Print_Work_Orders_Checklist_Click()
On Error GoTo Err_Print_Work_Orders_Checklist_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Checklist"
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
        DoCmd.OpenReport stDocName, acViewPreview

Exit_Print_Work_Orders_Checklist_Click:
    Exit Sub

Err_Print_Work_Orders_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Checklist_Click
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_list"
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
        DoCmd.OpenReport stDocName, acViewPreview

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub

Private Sub PRODUCT_CLASS_Enter()

    PRODUCT_CLASS.Requery
    
End Sub

Private Sub Product_Class_Exit(Cancel As Integer)
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    
End Sub
```
