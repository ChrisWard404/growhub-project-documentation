# Form: Foreign_Source_Request

**Caption:** Foreign Source Request  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE`, `Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE_Summary`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Foreign Source Material Request |  |  |  | 1.25, 0.23, 2.51, 0.50 |
| ComboBox | Stored_At_Associate | Stored At Associate: |  | SELECT NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN) ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE) GROUP BY NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 1.95, 1.11, 2.89, 0.22 |
| TextBox | Begin_Date | Begin Date: |  |  |  | 2.42, 2.48, 1.04, 0.23 |
| TextBox | End_Date | End Date: |  |  |  | 2.42, 2.80, 1.04, 0.23 |
| CommandButton | Preview_Offsite_Source_Order_Form | Click to Preview Order Form |  |  | Click | 0.92, 3.19, 1.40, 0.71 |
| Label | Label11 | Request Entered |  |  |  | 1.78, 2.19, 1.40, 0.24 |
| CommandButton | Preview_Offsite_Source_Order_Summary_by_Associate | Click to Preview Summary By Associate |  |  | Click | 2.82, 3.19, 1.40, 0.71 |
| ComboBox | Plntmstr_Symbol | Like Species: |  | SELECT NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_PRODUCTS INNER JOIN (((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL) INNER JOIN NMIS_SOURCE_LOTS ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports] And (NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports]) AND ((NMIS_PRODUCTS.PRODUCT_CLASS) Like [Forms]![Foreign_Source_Request]![Product_Class]) AND ((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) GROUP BY NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR; | Enter | 2.42, 1.83, 0.90, 0.25 |
| ComboBox | Product_Class | Like Stock Type: |  | SELECT NMIS_PRODUCTS.PRODUCT_CLASS FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Foreign_Source_Request]![Plntmstr_Symbol]) AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_PRODUCTS.PRODUCT_CLASS HAVING (((NMIS_PRODUCTS.PRODUCT_CLASS) Not Like "0*")) ORDER BY NMIS_PRODUCTS.PRODUCT_CLASS; |  | 2.42, 1.53, 1.51, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Preview_Offsite_Source_Order_Form_Click()
On Error GoTo Err_Preview_Offsite_Source_Order_Form_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE"
    
    If IsNull([BEGIN_DATE]) Then
        MsgBox "Must have an Begin and End Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If

Exit_Preview_Offsite_Source_Order_Form_C:
    Exit Sub

Err_Preview_Offsite_Source_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Offsite_Source_Order_Form_C
    
End Sub

Private Sub Preview_Offsite_Source_Order_Summary_by_Associate_Click()

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub PRODUCT_CLASS_Enter()

    PRODUCT_CLASS.Requery
    
End Sub
```
