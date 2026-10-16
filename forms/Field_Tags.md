# Form: Field_Tags

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Opens:** `Form:Agreement_Lot_ID_Change_from_Tags0 Form`, `Form:Agreement_Lot_ID_Change_from_Tags1 Form`, `Form:Agreement_Lot_ID_Change_from_Tags2 Form`, `Form:Agreement_Lot_ID_Change_from_Tags3 Form`, `Form:Agreement_Lot_ID_Change_from_Tags4 Form`, `Form:Agreement_Lot_ID_Change_from_Tags5 Form`, `Report:Field_tag_pairs_w_NIds`, `Report:Field_tag_pairs_w_NIds_040207`, `Report:Field_tag_pairs_w_NIds_040207_Split_Lot`, `Report:Field_tag_pairs_w_NIds_Intermec`, `Report:Field_tag_pairs_w_NIds_Intermec_040207`, `Report:Field_tag_pairs_w_NIds_Intermec_050357`, `Report:Field_tag_pairs_w_NIds_Intermec_050357_Split_Lot`, `Report:Field_tag_pairs_w_NIds_bailing`, `Report:Field_tag_pairs_wo_NIds`, `Report:Field_tag_pairs_wo_NIds_Intermec`, `Report:field_tag_PotStakes_Datamax`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Lot Tags |  |  |  | 3.27, 0.34, 0.92, 0.28 |
| Line | Line12 |  |  |  |  | 0.08, 0.70, 7.14, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.05, 0.79, 4.76, 2.37 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | Enter | 1.55, 2.29, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | Enter | 1.56, 2.55, 0.68, 0.20 |
| ComboBox | Product | Product: |  | SELECT NMIS_PRODUCTS.CN, Product_String.Product_String, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.CATEGORY_CODE, Count([nmis_agreement_lots].[cn]) & IIf(Count([nmis_agreement_lots].[cn])>1," Lots"," Lot") AS Lots FROM Agreement_Lot_Total_Containers_Grow RIGHT JOIN ((NMIS_PRODUCTS INNER JOIN Product_String ON NMIS_PRODUCTS.CN = Product_String.CN) INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.SPECIES_PRODUCT_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL)) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN) ON Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_AGREEMENT_LOTS.END_FY) Like [Forms]![Field_Tags]![end_FY] & "*") AND ((Left$([NMIS_PRODUCTS].[CATEGORY_CODE],1)) Like nz([Forms]![Field_Tags]![BorC],"*")) AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![Field_Tags]![Begin_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null) AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like nz([Forms]![Field_Tags]![Plntmstr_Symbol],"*")) AND ((NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER) Like NZ([Forms]![Field_Tags]![Begin_Container],"*")) AND ((NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) Like NZ([Forms]![Field_Tags]![Begin_Product_Type],"*")) AND ((NMIS_SPECIES.DIVERSE) Like [Forms]![Field_Tags]![Diverse]) AND ((IIf([Total_Containers]>0,"Y","N")) Like IIf([Forms]![Field_Tags]![In_Grow_Cont_Only],"Y","*"))) GROUP BY NMIS_PRODUCTS.CN, Product_String.Product_String, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC; | DblClick, Enter | 1.55, 1.75, 3.20, 0.20 |
| Rectangle | Box27 |  |  |  |  | 4.88, 0.79, 2.38, 2.37 |
| CommandButton | Clear_ids | Click to Clear |  |  | Click | 6.17, 2.49, 0.86, 0.26 |
| CommandButton | ID_Tags_W_ID_Intermec | Click to Create Tags |  |  | Click | 3.32, 3.73, 1.02, 0.54 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL) ON NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like NZ([Forms]![Field_Tags]![Begin_FY],"*")) AND ((NMIS_SPECIES_PRODUCTS.PRODUCT_CN) Like NZ([Forms]![Field_Tags]![Product],"*")) AND ((Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1)) Like nz([Forms]![Field_Tags]![BorC],"*")) AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null) AND ((NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER) Like NZ([Forms]![Field_Tags]![Begin_Container],"*")) AND ((NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) Like NZ([Forms]![Field_Tags]![Begin_Product_Type],"*")) AND ((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE) Like [Forms]![Field_Tags]![Diverse])) GROUP BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR; | DblClick, Enter | 1.55, 2.02, 0.80, 0.21 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container | AfterUpdate, Change, DblClick, Enter | 1.56, 0.92, 2.00, 0.21 |
| ComboBox | Tag_Style | Tag Style: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) In ("061019","050357","040207","090707"))) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 0.73, 0.04, 1.83, 0.00 |
| TextBox | Lot_ID_1 | Lot ID Like 1: |  |  | DblClick | 6.00, 1.22, 0.00, 0.21 |
| TextBox | Lot_ID_2 | Lot ID Like 2: |  |  | DblClick | 6.00, 1.46, 0.00, 0.21 |
| TextBox | Lot_ID_3 | Lot ID Like 3: |  |  | DblClick | 6.00, 1.70, 0.00, 0.21 |
| TextBox | Lot_ID_4 | Lot ID Like 4: |  |  | DblClick | 6.00, 1.95, 0.00, 0.21 |
| TextBox | Lot_ID_5 | Lot ID Like 5: |  |  | DblClick | 6.00, 2.20, 0.00, 0.21 |
| ComboBox | Find_Lot | Find Lot: |  | SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS Agr_Class, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, [CLIENT_ASSOCIATE] & " " AS Client, [AMOUNT_REQUESTED] & " " AS Req, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.Index AS [Original ID], NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_PRODUCTS.CN, Left$(nz([nmis_agreement_lots].[Category_Code],"B"),1) AS Product_Type, IIf([Total_Containers]>0,"y","N") AS Expr1 FROM Agreement_Lot_Total_Containers_Grow RIGHT JOIN (NMIS_PRODUCTS INNER JOIN (NMIS_AGREEMENTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN) ON Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![Field_Tags]![Begin_FY] & "*") AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Field_Tags]![Plntmstr_Symbol] & "*") AND ((Left$(nz([nmis_agreement_lots].[Category_Code],"B"),1)) Like [Forms]![Field_Tags]![BorC]) AND ((NMIS_SPECIES_PRODUCTS.PRODUCT_CN) Like [Forms]![Field_Tags]![Product] & "*") AND ((NMIS_AGREEMENT_LOTS.END_FY) Like [Forms]![Field_Tags]![End_FY] & "*") AND ((IIf([Total_Containers]>0,"y","N")) Like IIf([Forms]![Field_Tags]![In_Grow_Cont_Only],"Y","*"))) ORDER BY NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY DESC; | DblClick, Enter | 5.75, 0.85, 1.46, 0.25 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 5.12, 2.50, 0.88, 0.00 |
| ComboBox | Printer_and_Label_Type | Printer - Label Type: |  | 1;" Label Printer - WITH Lot ID's";2;" Label Printer - WITHOUT Lot ID's";3;" Laser Printer - WITH Lot ID's";4;" Laser Printer - WITHOUT Lot ID's";5;" Pot Stakes" | Change | 3.07, 3.32, 2.91, 0.25 |
| ComboBox | Begin_Product_Type | Begin Product Type: |  | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like NZ([Forms]![Field_Tags]![Begin_FY],"*")) AND ((NMIS_SPECIES_PRODUCTS.PRODUCT_CN) Like NZ([Forms]![Field_Tags]![Product],"*")) AND ((Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1)) Like nz([Forms]![Field_Tags]![BorC],"*")) AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null)) GROUP BY NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC; | DblClick | 1.56, 1.21, 1.25, 0.21 |
| ComboBox | Begin_Container | Begin Container: |  | SELECT NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER, [BEGIN_CONTAINER] & " - " & [UNIT_DESC] AS Display FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) INNER JOIN (NMIS_UNITS INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL) ON NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_UNITS.UNIT_CODE = NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like NZ([Forms]![Field_Tags]![Begin_FY],"*")) AND ((NMIS_SPECIES_PRODUCTS.PRODUCT_CN) Like NZ([Forms]![Field_Tags]![Product],"*")) AND ((Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1)) Like nz([Forms]![Field_Tags]![BorC],"*")) AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null) AND ((NMIS_PRODUCT_TYPES.PRODUCT_TYPE) Like nz([Forms]![Field_Tags]![Begin_Product_Type],"*"))) GROUP BY NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER, [BEGIN_CONTAINER] & " - " & [UNIT_DESC] ORDER BY NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER; | DblClick, Enter | 1.56, 1.48, 2.50, 0.21 |
| ComboBox | Diverse | Traditional/Non-Traditonal Species |  | 0;Traditional;-1;Non-Traditional;*;All |  | 2.50, 2.89, 1.12, 0.21 |
| CheckBox | Split_Lot | Split Lot  |  |  |  | 6.02, 2.90, 0.00, 0.00 |
| CheckBox | In_Grow_Cont_Only | Lots in grow containers only: |  |  |  | 7.06, 4.18, 0.00, 0.00 |
| CommandButton | Tags_For_Bailing | Click to Create Bale Tags |  |  | Click | 0.17, 3.92, 0.00, 0.34 |
| TextBox | Date | Date: |  |  |  | 6.00, 0.42, 0.62, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Begin_Container_DblClick(Cancel As Integer)
    
    BEGIN_CONTAINER = Null
    
End Sub

Private Sub Begin_Container_Enter()
    
    BEGIN_CONTAINER.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Begin_FY_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Begin_Product_Type_DblClick(Cancel As Integer)

    BEGIN_PRODUCT_TYPE = Null
    
End Sub

Private Sub BEGIN_PRODUCT_TYPE_Enter()

    BEGIN_PRODUCT_TYPE.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub BorC_AfterUpdate()

    Product.Requery
    
End Sub

Private Sub BorC_Change()
    
    Product = Null
    
End Sub

Private Sub BorC_DblClick(Cancel As Integer)

    BorC = "*"
    
End Sub

Private Sub BorC_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub End_FY_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Find_Lot_DblClick(Cancel As Integer)
On Error GoTo Err_Find_Lot_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Find_Lot"
    If Not IsNull(Find_Lot) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags0 Form"
    End If
    
Exit_Find_Lot_DblClick:
    Exit Sub

Err_Find_Lot_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Find_Lot_DblClick
           
End Sub

Private Sub Find_Lot_Enter()
    
   
    Find_Lot.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        Split_Lot.Visible = True
    Else
        Split_Lot.Visible = False
    End If
    
End Sub

Private Sub ID_Tags_W_ID_Intermec_Click()
On Error GoTo Err_ID_Tags_W_ID_Intermec_Click
    Dim stDocName As String

    Select Case [Printer_and_Label_Type]
    Case Is = 1
        'stDocName = "Field_tag_pairs_w_NIds_Intermec"
        Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
        Case Is = "050357"
            If Split_Lot Then
                stDocName = "Field_tag_pairs_w_NIds_Intermec_050357_Split_Lot"
            Else
                stDocName = "Field_tag_pairs_w_NIds_Intermec_050357"
            End If
        Case Is = "040207"
                stDocName = "Field_tag_pairs_w_NIds_Intermec_040207"
            
        Case Else
            stDocName = "Field_tag_pairs_w_NIds_Intermec"
        End Select
    Case Is = 2
        stDocName = "Field_tag_pairs_wo_NIds_Intermec"
    Case Is = 3
        'stDocName = "Field_tag_pairs_w_NIds_Intermec"
        Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
        Case Is = "040207"
            If Split_Lot Then
                stDocName = "Field_tag_pairs_w_NIds_040207_Split_Lot"
            Else
                stDocName = "Field_tag_pairs_w_NIds_040207"
            End If
        Case Else
            stDocName = "Field_tag_pairs_w_NIds"
        End Select
    Case Is = 4
        stDocName = "Field_tag_pairs_wo_NIds"
    Case Is = 5
        stDocName = "field_tag_PotStakes_Datamax"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_ID_Tags_W_ID_Intermec_Click:
    Exit Sub

Err_ID_Tags_W_ID_Intermec_Click:
    MsgBox Err.DESCRIPTION
Resume Exit_ID_Tags_W_ID_Intermec_Click
           
End Sub

Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    [Split_Lot] = False
    
End Sub


Private Sub Lot_ID_1_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_1_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_1"
    If Not IsNull(Lot_ID_1) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags1 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_1 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_1_DblClick:
    Exit Sub

Err_Lot_ID_1_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_1_DblClick
           
End Sub

Private Sub Lot_ID_2_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_2_DblClick

    DoCmd.GoToControl "Lot_ID_1"
    DoCmd.GoToControl "Lot_ID_2"
    If Not IsNull(Lot_ID_2) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags2 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_2 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_2_DblClick:
    Exit Sub

Err_Lot_ID_2_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_2_DblClick
           
End Sub

Private Sub Lot_ID_3_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_3_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_3"
    If Not IsNull(Lot_ID_3) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags3 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_3 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_3_DblClick:
    Exit Sub

Err_Lot_ID_3_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_3_DblClick
                
End Sub

Private Sub Lot_ID_4_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_4_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_4"
    If Not IsNull(Lot_ID_4) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags4 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_4 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_4_DblClick:
    Exit Sub

Err_Lot_ID_4_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_4_DblClick
           
End Sub

Private Sub Lot_ID_5_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_5_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_5"
    If Not IsNull(Lot_ID_5) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags5 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_5 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_5_DblClick:
    Exit Sub

Err_Lot_ID_5_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_5_DblClick
          
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Printer_and_Label_Type_Change()

    If Printer_and_Label_Type = 1 Then
        Split_Lot.Visible = True
    Else
        Split_Lot.Visible = False
    End If
    
End Sub

Private Sub Product_DblClick(Cancel As Integer)

    Product = Null
    
End Sub

Private Sub Product_Enter()

    Product.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Tags_For_Bailing_Click()
    On Error GoTo Err_Tags_For_Bailing_Click
    Dim stDocName As String

        stDocName = "Field_tag_pairs_w_NIds_bailing"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Tags_For_Bailing_Click:
    Exit Sub

Err_Tags_For_Bailing_Click:
    MsgBox Err.DESCRIPTION
Resume Exit_Tags_For_Bailing_Click
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
