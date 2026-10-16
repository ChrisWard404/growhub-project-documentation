# Form: Field_Tags_BU

**Caption:** Create Lot Tags  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`  
**Opens:** `Form:Agreement_Lot_ID_Change_from_Tags1 Form`, `Form:Agreement_Lot_ID_Change_from_Tags2 Form`, `Form:Agreement_Lot_ID_Change_from_Tags3 Form`, `Form:Agreement_Lot_ID_Change_from_Tags4 Form`, `Form:Agreement_Lot_ID_Change_from_Tags5 Form`, `Report:Field_tag_pairs_w_NIds`, `Report:Field_tag_pairs_w_NIds_Intermec`, `Report:Field_tag_pairs_w_NIds_Intermec_050357`, `Report:Field_tag_pairs_wo_NIds`, `Report:Field_tag_pairs_wo_NIds_Intermec`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Lot Tags |  |  |  | 2.17, 0.25, 2.29, 0.27 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 5.94, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 0.79, 3.67, 2.02 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | Enter | 1.24, 1.97, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | Enter | 1.24, 2.28, 0.68, 0.20 |
| ComboBox | Product | Product: |  | SELECT NMIS_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.CATEGORY_CODE, Left$([CATEGORY_CODE],1) AS BorC FROM NMIS_PRODUCTS WHERE (((Left$([CATEGORY_CODE],1)) Like [Forms]![Field_Tags]![BorC])) ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC; | Enter | 1.24, 1.39, 2.50, 0.20 |
| Rectangle | Box27 |  |  |  |  | 3.85, 0.79, 2.21, 2.02 |
| CommandButton | Create_Field_Tags_wo_Nid | Click to Create Tag Pairs WITHOUT Lot ID Tags |  |  | Click | 0.43, 3.62, 1.09, 0.54 |
| CommandButton | Create_Field_Tags_w_Lot_Ids | Click to Create Tag Pairs WITH Lot  ID Tags |  |  | Click | 1.79, 3.62, 1.02, 0.54 |
| CommandButton | Clear_ids | Click to Clear |  |  | Click | 4.64, 2.47, 0.86, 0.26 |
| Rectangle | Box33 |  |  |  |  | 0.23, 2.96, 2.81, 1.42 |
| Label | Label34 | Laser Printer |  |  |  | 1.20, 3.12, 1.07, 0.20 |
| CommandButton | ID_Tags_W_ID_Intermec | Click to Create Tag Pairs WITH Lot ID Tags |  |  | Click | 4.69, 3.62, 1.02, 0.54 |
| Rectangle | Box36 |  |  |  |  | 3.11, 2.96, 2.83, 1.42 |
| Label | Label37 | Intermec Printer |  |  |  | 4.01, 3.12, 1.15, 0.20 |
| CommandButton | ID_Tags_WO_ID_Intermec | Click to Create Tag Pairs WITHOUT Lot ID Tags |  |  | Click | 3.33, 3.63, 1.09, 0.54 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; | Enter | 1.24, 1.68, 0.80, 0.21 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container | AfterUpdate, Enter | 1.24, 1.08, 2.00, 0.21 |
| ComboBox | Tag_Style | Tag Style: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)="061019" Or (NMIS_ASSOCIATES.ASSOCIATE)="050357")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 0.79, 0.04, 1.83, 0.00 |
| ComboBox | Lot_ID_1_CN | Lot ID Like 1: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick | 4.91, 1.02, 0.00, 0.21 |
| ComboBox | Lot_ID_2_CN | Lot ID Like 2: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick | 4.91, 1.31, 0.00, 0.21 |
| ComboBox | Lot_ID_3_CN | Lot ID Like 3: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick | 4.91, 1.60, 0.00, 0.21 |
| ComboBox | Lot_ID_4_CN | Lot ID Like 4: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick | 4.91, 1.90, 0.00, 0.21 |
| ComboBox | Lot_ID_5_CN | Lot ID Like 5: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick | 4.91, 2.20, 0.00, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Begin_FY_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
  
End Sub

Private Sub BorC_AfterUpdate()

    Product.Requery
    
End Sub

Private Sub BorC_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
    
End Sub

Private Sub Create_Field_Tags_wo_Nid_Click()
On Error GoTo Err_Create_Field_Tags_wo_Nid_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_wo_NIds"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Field_Tags_wo_Nid_Click:
    Exit Sub

Err_Create_Field_Tags_wo_Nid_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Field_Tags_wo_Nid_Click
    
End Sub
Private Sub Create_Field_Tags_w_Lot_Ids_Click()
On Error GoTo Err_Create_Field_Tags_w_Lot_Ids_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_w_NIds"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Field_Tags_w_Lot_Ids_Click:
    Exit Sub

Err_Create_Field_Tags_w_Lot_Ids_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Field_Tags_w_Lot_Ids_Click
    
End Sub

Private Sub End_FY_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
  
End Sub

Private Sub ID_Tags_W_ID_Intermec_Click()

    Dim stDocName As String

    'stDocName = "Field_tag_pairs_w_NIds_Intermec"
    'DoCmd.OpenReport stDocName, acPreview
    Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
    Case Is = "050357"
        stDocName = "Field_tag_pairs_w_NIds_Intermec_050357"
    Case Else
        stDocName = "Field_tag_pairs_w_NIds_Intermec"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub ID_Tags_WO_ID_Intermec_Click()

    Dim stDocName As String

    stDocName = "Field_tag_pairs_wo_NIds_Intermec"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Clear_ids_Click()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
End Sub


Private Sub Lot_ID_1_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_1_CN_DblClick

    If Not IsNull(Lot_ID_1_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags1 Form"
    End If
    
Exit_Lot_ID_1_CN_DblClick:
    Exit Sub

Err_Lot_ID_1_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_1_CN_DblClick
           
End Sub

Private Sub Lot_ID_2_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_2_CN_DblClick

    If Not IsNull(Lot_ID_2_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags2 Form"
    End If
    
Exit_Lot_ID_2_CN_DblClick:
    Exit Sub

Err_Lot_ID_2_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_2_CN_DblClick
           
End Sub

Private Sub Lot_ID_3_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_3_CN_DblClick

    If Not IsNull(Lot_ID_3_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags3 Form"
    End If
    
Exit_Lot_ID_3_CN_DblClick:
    Exit Sub

Err_Lot_ID_3_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_3_CN_DblClick
                
End Sub

Private Sub Lot_ID_4_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_4_CN_DblClick

    If Not IsNull(Lot_ID_4_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags4 Form"
    End If
    
Exit_Lot_ID_4_CN_DblClick:
    Exit Sub

Err_Lot_ID_4_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_4_CN_DblClick
           
End Sub

Private Sub Lot_ID_5_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_5_CN_DblClick

    If Not IsNull(Lot_ID_5_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags5 Form"
    End If
    
Exit_Lot_ID_5_CN_DblClick:
    Exit Sub

Err_Lot_ID_5_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_5_CN_DblClick
          
End Sub


Private Sub Plntmstr_Symbol_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
  
End Sub

Private Sub Product_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
    
End Sub
```
