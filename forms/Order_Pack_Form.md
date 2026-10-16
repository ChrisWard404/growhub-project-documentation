# Form: Order_Pack_Form

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_ORDERS`, `NMIS_SPECIES`  
**Opens:** `Report:ORDER_FORM mt_040207`, `Report:ORDER_FORM mt_050357`, `Report:ORDER_FORM mt_Long`, `Report:ORDER_FORM_PROPAGULE mt`, `Report:Order_Form_Checklist`, `Report:Processing_Quality_Recording_Form_050357`, `Report:order_form mt`, `Report:order_form_from_Order_Print mt`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Order/Packing Forms |  |  |  | 1.51, 0.28, 2.12, 0.28 |
| TextBox | Order_Mod_Date | Order Date >= : |  |  | Change, DblClick | 2.52, 2.39, 0.73, 0.24 |
| TextBox | Lift_Date | Lift Date: |  |  | Change | 2.52, 2.67, 0.73, 0.24 |
| CommandButton | Order_Form |  Order/Pack Form |  |  | Click | 1.28, 3.83, 1.22, 0.58 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container | AfterUpdate, Change | 2.52, 0.94, 2.00, 0.24 |
| ComboBox | Like_Client | Like Client (Blank for All): |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_AGREEMENT_LOTS.CATEGORY_CODE FROM ((NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN Species_Products_with_SizeSpecString ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = Species_Products_with_SizeSpecString.CN WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Order_Pack_Form]![Order_FY]) AND ((Left$(nz([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"*"),1)) Like IIf([Forms]![Order_Pack_Form]![Product_Group]="Plant",[Forms]![Order_Pack_Form]![BorC],"N*")) AND ((Species_Products_with_SizeSpecString.PRODUCT_CLASS) Like [Forms]![Order_Pack_Form]![Like_Stock_Type] & "*") AND ((Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL) Like [Forms]![Order_Pack_Form]![Like_Species] & "*")) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_AGREEMENT_LOTS.CATEGORY_CODE ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | Change, Enter | 2.52, 1.79, 0.90, 0.24 |
| CommandButton | Order_Form_By_Lift_Date | Order/Pack Form by Lift Date |  |  | Click | 2.53, 3.83, 1.22, 0.58 |
| ComboBox | Like_Lot_ID | Lot ID (Blank for All): |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((Left$([CATEGORY_CODE],1)) Like IIf([Forms]![Order_Pack_Form]![Product_Group]="Plant",[Forms]![Order_Pack_Form]![BorC],"N*")) AND ((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![Order_Pack_Form]![Order_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null) AND ((NMIS_AGREEMENT_LOTS.NURSERY_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID ORDER BY NMIS_AGREEMENT_LOTS.ID; | Change | 2.52, 2.08, 1.50, 0.24 |
| ComboBox | Order_FY |  Order FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | AfterUpdate, Change | 2.52, 0.65, 0.68, 0.24 |
| CommandButton | Order_Checklist_by_Lift_Date |       Checklist       by Lift Date |  |  | Click | 2.53, 3.21, 1.22, 0.58 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 0.08, 4.34, 0.29, 0.21 |
| CommandButton | Order_Checklist |  Checklist |  |  | Click | 1.28, 3.21, 1.22, 0.58 |
| ComboBox | Like_Species | Species (Blank for All): |  | SELECT Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES ON Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL = NMIS_SPECIES.PLNTMSTR_SYMBOL WHERE (((Left$(NZ([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"B"),1)) Like IIf([Forms]![Order_Pack_Form]![Product_Group]="Plant",[Forms]![Order_Pack_Form]![BorC],"N*")) AND ((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![Order_Pack_Form]![Order_FY] & "*") AND ((Species_Products_with_SizeSpecString.PRODUCT_CLASS) Like [Forms]![Order_Pack_Form]![Like_Stock_Type] & "*") AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![Order_Pack_Form]![Like_Client] & "*")) GROUP BY Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR; | Change, Enter | 2.52, 1.50, 1.50, 0.24 |
| ComboBox | Like_Stock_Type | Stock Type (Blank for All): |  | SELECT Species_Products_with_SizeSpecString.PRODUCT_CLASS FROM Species_Products_with_SizeSpecString INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![Order_Pack_Form]![Order_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "b*" Or (NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "c*") AND ((Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL) Like [Forms]![Order_Pack_Form]![Like_Species] & "*") AND ((Left$(NZ([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"B"),1)) Like [Forms]![Order_Pack_Form]![BorC]) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![Order_Pack_Form]![Like_Client] & "*")) GROUP BY Species_Products_with_SizeSpecString.PRODUCT_CLASS, Left$(NZ([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"B"),1) ORDER BY Left$(NZ([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"B"),1), Species_Products_with_SizeSpecString.PRODUCT_CLASS; | Change, Enter | 2.52, 1.21, 1.50, 0.24 |
| CommandButton | Order_Pack_form_Propagule | Preview Report |  |  | Click | 1.91, 3.52, 1.22, 0.58 |
| TextBox | Product_Group |  |  |  |  | 0.26, 0.49, 0.00, 0.00 |
| CommandButton | Processing_Quality_Inspection_Record |  Quality Inspection Record |  |  | Click | 0.04, 3.21, 1.22, 0.58 |
| CommandButton | Processing_Quality_Inspection_Record_by_lift_date |  Quality Inspection Record By Lift Date |  |  | Click | 3.77, 3.21, 1.22, 0.58 |
| ComboBox | Form_Style | Order Form Style: |  | 040207;Lucky Peak Nursery;050357;Placerville Nursery;061019;J H Stone Nursery;061019L;J H Stone Nursery Long;090707;J W Toumey Nursery |  | 1.20, 0.04, 1.83, 0.00 |
| CheckBox | Data_Processed_ld | Data Processed LD |  |  |  | 0.04, 4.06, 0.29, 0.21 |
| CheckBox | Contract | Contract: |  |  |  | 0.79, 0.38, 0.00, 0.00 |
| CheckBox | Has_Desired_Date | Checklist Has Desired Date: |  |  |  | 2.52, 3.00, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub BorC_AfterUpdate()

    Like_Lot_ID.Requery
    Like_Client.Requery
    
End Sub

Private Sub BorC_Change()
        
    Data_Processed = False
    Like_Lot_ID = Null
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Data_Processed = False
    Contract.Visible = False
    
End Sub

Private Sub Lift_Date_Change()
           
    Data_Processed = False
    Data_Processed_ld = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Client_Change()
    
    Data_Processed = False
    Like_Lot_ID = Null
    
End Sub

Private Sub Like_Client_Enter()

    Like_Client.Requery
    
End Sub

Private Sub Like_Lot_ID_Change()
    
    'Data_Processed = False
    Like_Client = Null
    Like_Species = Null
    Like_Stock_Type = Null
    BorC = "*"
    
End Sub

Private Sub Like_Species_Change()

    Data_Processed = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Species_Enter()

    Like_Species.Requery
    
End Sub

Private Sub Like_Stock_Type_Change()
    
    Data_Processed = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Stock_Type_Enter()
    
    Like_Stock_Type.Requery
    
End Sub

Private Sub Order_Checklist_Click()
On Error GoTo Err_Order_Checklist_Click

    Dim stDocName As String
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed = True
    
    End If
      
    stDocName = "Order_Form_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Checklist_Click:
    Exit Sub

Err_Order_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Click
    
End Sub

Private Sub Order_Checklist_by_Lift_Date_Click()
On Error GoTo Err_Order_Checklist_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed_ld = True
    
    End If
      
    stDocName = "Order_Form_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Checklist_Click:
    Exit Sub

Err_Order_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Click
End Sub

Private Sub Order_Form_By_Lift_Date_Click()
On Error GoTo Err_Order_Form_By_Lift_Date_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"

    DoCmd.SetWarnings True
    Data_Processed_ld = True
    End If
    
    Select Case [Form_Style]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357"
    Case Is = "061019L"
        stDocName = "ORDER_FORM mt_Long"
    Case Else
        stDocName = "order_form mt"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Form_By_Lift_Date_Click:
    Exit Sub

Err_Order_Form_By_Lift_Date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Form_By_Lift_Date_Click
    
End Sub

Private Sub Order_Form_Click()
On Error GoTo Err_Order_Form_Click

    Dim stDocName As String

    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "Order_Form mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"
    'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    
    DoCmd.SetWarnings True
    Data_Processed = True
    End If
    
    Select Case [Form_Style]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357"
    Case Is = "061019L"
        stDocName = "ORDER_FORM mt_Long"
    Case Else
        If Not IsNull(Like_Lot_ID) Then
            stDocName = "order_form_from_Order_Print mt"
        Else
            stDocName = "order_form mt"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Form_Click:
    Exit Sub

Err_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Form_Click
    
End Sub

Private Sub Order_FY_AfterUpdate()

    Like_Lot_ID.Requery
    Like_Client.Requery
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
    [Forms]![Switchboard]![FY_For_Reports] = Order_FY
    
End Sub

Private Sub Order_FY_Change()
    
    Data_Processed = False
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
    [Forms]![Switchboard]![FY_For_Reports] = Order_FY
    
End Sub

Private Sub Order_Mod_Date_Change()
        
    Data_Processed = False
    Like_Lot_ID = Null
 
    
End Sub

Private Sub Order_Mod_Date_DblClick(Cancel As Integer)

    Order_Mod_Date = Date
    
End Sub

Private Sub Order_Pack_form_Propagule_Click()
On Error GoTo Err_Order_Pack_form_Propagule_Click

    Dim stDocName As String

    If PRODUCT_GROUP = "propagule" Then
        If Not [Data_Processed] Then
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        DoCmd.OpenQuery "Order_Form_Propagule_mt Query"
        DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
        DoCmd.OpenQuery "Order_Form_LOC mt Query"
        DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
        DoCmd.OpenQuery "Order_Form_QI mt Query"
        DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
        DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
        DoCmd.OpenQuery "Order_Form_Specs mt Query"
        DoCmd.OpenQuery "Order_Form_MCODES mt Query"
        DoCmd.OpenQuery "Order_form_Contacts mt Query"
        DoCmd.OpenQuery "Order_form_Contacts at Query"
        DoCmd.OpenQuery "Order_Form_PKC mt Query"
        'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
        DoCmd.OpenQuery "Field_Location_Propagule_Inv_Subform_MT"

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
        DoCmd.SetWarnings True
        Data_Processed = True
        stDocName = "ORDER_FORM_PROPAGULE mt"
    End If
    Else
        If Not [Data_Processed] Then
    
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
        DoCmd.OpenQuery "Order_Form mt Query"
        DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
        DoCmd.OpenQuery "Order_Form_LOC mt Query"
        DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
        DoCmd.OpenQuery "Order_Form_QI mt Query"
        DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
        DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
        DoCmd.OpenQuery "Order_Form_Specs mt Query"
        DoCmd.OpenQuery "Order_Form_MCODES mt Query"
        DoCmd.OpenQuery "Order_form_Contacts mt Query"
        DoCmd.OpenQuery "Order_form_Contacts at Query"
        DoCmd.OpenQuery "Order_Form_PKC mt Query"
        DoCmd.OpenQuery "Order_Form_PKT mt Query"
        DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    
        DoCmd.SetWarnings True
        Data_Processed = True
        End If
    
        Select Case [Form_Style]
        
        Case Is = "050357"
            stDocName = "ORDER_FORM mt_050357"
        Case Is = "061019L"
            stDocName = "ORDER_FORM mt_Long"
        Case Else
            If Not IsNull(Like_Lot_ID) Then
                stDocName = "order_form_from_Order_Print mt"
            Else
                stDocName = "order_form mt"
            End If
        End Select
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Pack_form_Propagule_Click:
    Exit Sub

Err_Order_Pack_form_Propagule_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Pack_form_Propagule_Click
    
End Sub

Private Sub Processing_Quality_Inspection_Record_by_lift_date_Click()
On Error GoTo Err_Processing_Quality_Inspection_Record_by_lift_date_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed_ld = True
    
    End If
      
    stDocName = "Processing_Quality_Recording_Form_050357"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Quality_Inspection_Record_by_lift_date_Click:
    Exit Sub

Err_Processing_Quality_Inspection_Record_by_lift_date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Quality_Inspection_Record_by_lift_date_Click
    
End Sub

Private Sub Processing_Quality_Inspection_Record_Click()
On Error GoTo Err_Processing_Quality_Inspection_Record_Click

    Dim stDocName As String
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed = True
    
    End If
      
    stDocName = "Processing_Quality_Recording_Form_050357"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Quality_Inspection_Record_Click:
    Exit Sub

Err_Processing_Quality_Inspection_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Quality_Inspection_Record_Click
    
End Sub
```
