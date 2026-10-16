# Form: Field_Form_Plants

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`, `Report:Container_Location_Index`, `Report:Container_Location_Proofsheet`, `Report:Field_Form_Plants`, `Report:Field_Form_Plants_Inv_Size_Checklist`, `Report:Field_Form_Plants_w_specs`, `Report:Field_Form_Plants_w_specs_ByLotID`, `Report:Field_Location_Index`, `Report:Field_Location_Proofsheet`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Plant Stock Monitoring Checklist |  |  |  | 1.14, 0.07, 3.21, 0.28 |
| TextBox | Like_Begin_Location | Begin Location Like: |  |  |  | 2.51, 0.73, 0.99, 0.23 |
| ComboBox | Like_Associate | Associate Like: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 2.51, 1.01, 1.02, 0.23 |
| ComboBox | Like_Plntmstr_Symbol | Species Like: |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR; |  | 2.51, 1.28, 1.02, 0.23 |
| ComboBox | Like_Age_Class | Age Class Like: |  | SELECT Agreement_Lot_Current_Age_Class_and_Cost_Center.Age_Class, Agreement_Lot_Current_Age_Class_and_Cost_Center.Current_Cost_Center FROM Agreement_Lot_Current_Age_Class_and_Cost_Center INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lots_Currently_Active ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON Agreement_Lot_Current_Age_Class_and_Cost_Center.CN = Agreement_Lots_Currently_Active.CN WHERE (((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![Field_Form_Plants]![Like_Associate] & "*") AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Field_Form_Plants]![Like_Plntmstr_Symbol] & "*")) GROUP BY Agreement_Lot_Current_Age_Class_and_Cost_Center.Age_Class, Agreement_Lot_Current_Age_Class_and_Cost_Center.Current_Cost_Center, Agreement_Lot_Current_Age_Class_and_Cost_Center.Age_Class HAVING (((Agreement_Lot_Current_Age_Class_and_Cost_Center.Current_Cost_Center) Like [Forms]![Field_Form_Plants]![BorC])) ORDER BY Agreement_Lot_Current_Age_Class_and_Cost_Center.Current_Cost_Center, Agreement_Lot_Current_Age_Class_and_Cost_Center.Age_Class; | Enter | 2.51, 1.55, 2.27, 0.23 |
| ComboBox | Like_Agreement_Lot_ID | Lot ID Like: |  | SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, Agreement_Lot_Current_Age_Class.Age_Class FROM Agreement_Lot_Current_Age_Class INNER JOIN ((NMIS_AGREEMENTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lots_Currently_Active ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON Agreement_Lot_Current_Age_Class.CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, Agreement_Lot_Current_Age_Class.Age_Class HAVING (((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![Field_Form_Plants]![Like_Associate] & "*") AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Field_Form_Plants]![Like_Plntmstr_Symbol] & "*") AND ((Agreement_Lot_Current_Age_Class.Age_Class) Like [Forms]![Field_Form_Plants]![Like_Age_Class] & "*")) ORDER BY NMIS_AGREEMENT_LOTS.ID; | Enter | 2.51, 2.98, 2.27, 0.23 |
| CheckBox | Split_Lots_Only | Split Lots Only |  |  |  | 2.51, 3.45, 0.00, 0.00 |
| CommandButton | Preview_Field_Plants | Click for Report with Source Code |  |  | Click | 3.25, 3.62, 1.31, 0.75 |
| CheckBox | Hide_Agreement_Lot_Notes | Hide Lot Notes |  |  |  | 2.52, 3.73, 0.00, 0.00 |
| CheckBox | Hide_Monitoring_Notes | Hide Monitoring Notes |  |  |  | 2.52, 4.01, 0.00, 0.00 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 2.51, 0.45, 2.36, 0.24 |
| CheckBox | Extra_Line_For_Notes | Include Extra Line for Notes |  |  |  | 2.53, 4.29, 0.00, 0.00 |
| CommandButton | Preview_Field_Plants_w_specs | Click for Report by Growing Location |  |  | Click | 2.98, 4.61, 1.23, 0.75 |
| CheckBox | Location_Processed | Location Processed |  |  |  | 0.04, 0.23, 0.88, 0.33 |
| TextBox | Like_End_FY | End FY Like: |  |  |  | 2.51, 2.11, 0.99, 0.23 |
| TextBox | Like_Begin_FY | Begin FY Like: |  |  |  | 2.51, 1.82, 0.99, 0.23 |
| TextBox | MaxSowDate | Max Sow Date: |  |  | DblClick | 2.51, 2.70, 0.99, 0.23 |
| TextBox | MinSowDate | Min Sow Date: |  |  | DblClick | 2.51, 2.41, 0.99, 0.23 |
| CommandButton | Preview_Field_Plants_w_specs_ByLotID | Click for Report by Agreement Lot ID |  |  | Click | 1.38, 4.61, 1.23, 0.75 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Container_Index_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Container_Index_Proofsheet_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Field_Index_Click()
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Field_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Field_Map_Click()
On Error GoTo Err_Preview_Field_Map_Click

    Dim stDocName As String

    stDocName = "Field_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Map_Click:
    Exit Sub

Err_Preview_Field_Map_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Map_Click
    
End Sub

Private Sub Preview_Field_Plants_For_Inv_Sizing_Click()
On Error GoTo Err_Preview_Field_Plants_For_Inv_Sizing_Click

    Dim stDocName As String

    stDocName = "Field_Form_Plants_Inv_Size_Checklist"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_For_Inv_Sizing:
    Exit Sub

Err_Preview_Field_Plants_For_Inv_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_For_Inv_Sizing
    
End Sub

Private Sub Like_Age_Class_Enter()

    Like_Age_Class.Requery
    
End Sub

Private Sub Like_Agreement_Lot_ID_Enter()

    Like_Agreement_Lot_ID.Requery
    
End Sub

Private Sub MaxSowDate_DblClick(Cancel As Integer)

    MaxSowDate = Date
    
End Sub

Private Sub MinSowDate_DblClick(Cancel As Integer)

    MinSowDate = "01/01/70"

End Sub

Private Sub Preview_Field_Plants_Click()

On Error GoTo Err_Preview_Field_Plants_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    stDocName = "Field_Form_Plants"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_Click:
    Exit Sub

Err_Preview_Field_Plants_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_Click
    
End Sub

Private Sub Preview_Field_Plants_w_specs_ByLotID_Click()
On Error GoTo Err_Field_Plants_w_specs_ByLotID_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    stDocName = "Field_Form_Plants_w_specs_ByLotID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Plants_w_specs_ByLotID_Click:
    Exit Sub

Err_Field_Plants_w_specs_ByLotID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Plants_w_specs_ByLotID_Click
End Sub

Private Sub Preview_Field_Plants_w_specs_Click()
On Error GoTo Err_Field_Plants_w_specs_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    stDocName = "Field_Form_Plants_w_specs"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Plants_w_specs_Click:
    Exit Sub

Err_Field_Plants_w_specs_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Plants_w_specs_Click
End Sub
```
