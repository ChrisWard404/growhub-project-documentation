# Form: NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERS_ID_UPDATE subform`, `Form.NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform`, `Form.NMIS_PROCESSING_ORDERS_ID_MC Subform`, `Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform`  
**Opens:** `Form:NMIS_ORDERS_REVIEW_AGREEMENT_INFO`, `Form:NMIS_PROCESS_QUALITY_SAMPLES2`, `Form:ORDER_FORM mt_040207_edit`, `Form:ORDER_FORM mt_050357_edit`, `Form:ORDER_FORM_PROPAGULE mt`, `Form:PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM`, `Form:order_form_from_order_edit mt`, `Report:NMIS_ORDERS_REVIEW_AGREEMENT_INFO`, `Report:NMIS_PROCESS_QUALITY_SAMPLES2`, `Report:ORDER_FORM mt_040207_edit`, `Report:ORDER_FORM mt_050357_edit`, `Report:ORDER_FORM_PROPAGULE mt`, `Report:PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM`, `Report:order_form_from_order_edit mt`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box113 |  |  |  |  | 0.00, 0.03, 9.08, 0.75 |
| Label | Label56 | Processing Orders Review/Update |  |  |  | 3.02, 0.06, 3.36, 0.28 |
| ComboBox | Order_CN |  |  | SELECT NMIS_ORDERS.CN, IIf([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)) AS [Lot ID/Order], [Client_Associate] & " " & [Associate_Name] AS Associate, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST AS [Sow Req], NMIS_ORDERS.ORDER_AMT AS [Order], NMIS_ORDERS.OVERRUN_AMT, NMIS_ORDERS.OVERRUN_ALL AS [All Overrun], NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune2 AS [Size Specs], [ACTIVITY_CODE] & " " AS Activity, [CONTRACT_ITEM] & " " AS [C Item], NMIS_AGREEMENT_LOTS.BEGIN_FY, [END_FY] & "/" & [END_SEASON_CODE] AS [End FY/S], NMIS_ORDERS.ACTIVITY_CODE FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_ORDERS_SIZE_SPEC_STRING INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ASSOCIATES RIGHT JOIN (NMIS_AGREEMENT_LOTS INNER JOIN NMIS_ORDERS ON NMIS_AGREEMENT_LOTS.CN = NMIS_ORDERS.AGREEMENT_LOT_CN) ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_ORDERS_SIZE_SPEC_STRING.CN = NMIS_ORDERS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![VIEW_FY])) GROUP BY NMIS_ORDERS.CN, IIf([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)), [Client_Associate] & " " & [Associate_Name], NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.OVERRUN_AMT, NMIS_ORDERS.OVERRUN_ALL, NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune2, [ACTIVITY_CODE] & " ", [CONTRACT_ITEM] & " ", NMIS_AGREEMENT_LOTS.BEGIN_FY, [END_FY] & "/" & [END_SEASON_CODE], NMIS_ORDERS.ACTIVITY_CODE, Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1), Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1) & [Product_Group] HAVING ((([Client_Associate] & " " & [Associate_Name]) Like [Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![Like_Client] & "*") AND ((Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1) & [Product_Group]) Like [Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![Product_Group])) ORDER BY Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1), IIf([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)); | Change, Enter | 2.03, 0.50, 2.13, 0.23 |
| TextBox | VIEW_FY | FY: |  |  | AfterUpdate, Change, Click | 0.45, 0.08, 0.63, 0.21 |
| TextBox | Like_Client | Like Client: |  |  | DblClick, Exit | 2.16, 0.08, 0.63, 0.21 |
| ComboBox | Product_Group | Group: |  | BPLANT;"Bareroot Plant";CPLANT;"Container Plant";*PLANT;"All Plants";NPROPAGULE;"Propagule" | Exit | 7.51, 0.10, 1.50, 0.25 |
| CommandButton | PrvwOrdrFrm | Preview Order Form |  |  | Click | 6.10, 0.47, 1.43, 0.00 |
| CommandButton | PrvwStrgRcrd | Preview Storage Form |  |  | Click | 7.57, 0.47, 1.43, 0.00 |
| CheckBox | Open_Flag | Flag |  |  |  | 4.31, 0.50, 0.21, 0.00 |
| CommandButton | Open_Sow_Req_Info | Sow Req Info |  |  | Click | 5.12, 0.48, 0.92, 0.24 |
| OptionGroup | View_by |  |  |  | Click | 0.12, 0.33, 1.84, 0.40 |
| OptionButton | Option47 | Lot ID/Order ID |  |  |  | 0.82, 0.39, 0.00, 0.00 |
| OptionButton | Option45 | Order ID/Lot ID |  |  |  | 0.82, 0.55, 0.00, 0.00 |
| Label | Label43 | Select by: |  |  |  | 0.16, 0.45, 0.60, 0.19 |
| CheckBox | order_form_data_processed | order_form_data_processed |  |  |  | 4.21, 0.17, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_PROCESSING_ORDERS_ID_UPDATE subform |  | Form.NMIS_PROCESSING_ORDERS_ID_UPDATE subform (master: ORDER_CN → child: CN) |  | Enter | 0.08, 0.33, 8.97, 2.54 |
| Subform | Child102 |  | Form.NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform (master: ORDER_CN → child: ORDER_CN) |  | Enter | 0.08, 2.91, 3.46, 2.47 |
| Subform | Child103 |  | Form.NMIS_PROCESSING_ORDERS_ID_MC Subform (master: ORDER_CN → child: ORDER_CN) |  | Enter | 3.59, 2.91, 3.10, 2.46 |
| Subform | Child104 |  | Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform (master: ORDER_CN → child: ORDER_CN) |  | Enter | 6.74, 2.91, 2.33, 2.45 |
| ComboBox | AGREEMENT_LOT_CN |  | =[NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![AGREEMENT_LOT_CN] | SELECT NMIS_AGREEMENT_LOTS.CN, "Agreement Lot: " & [ID] & "   " & [Species_Products_String_Longest] AS Display FROM Species_Products_with_SizeSpecString INNER JOIN NMIS_AGREEMENT_LOTS ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN; |  | 0.08, 0.04, 8.94, 0.21 |

## Code-behind (VBA)

```vb
Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub

Private Sub Child102_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "[Order_CN]"
    End If
    
End Sub

Private Sub Child103_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Child104_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ORDER_CN"
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    Like_Client.Requery
    
End Sub

Private Sub Like_Client_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_ID_UPDATE_subform_Enter()

    If IsNull(ORDER_CN) And Open_Flag = False Then
        MsgBox "Please select an Order to view"
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Order_CN_Change()

    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![CONTACT_CN].Requery
    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![SECONDARY_CONTACT_CN].Requery
    
End Sub

Private Sub Order_CN_Enter()

    Open_Flag = False
    ORDER_CN.Requery
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![CONTACT_CN].Requery
    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![SECONDARY_CONTACT_CN].Requery
    
End Sub

Private Sub Product_Group_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
 
End Sub

Private Sub PrvwOrdrFrm_Click()
    
    If Not IsNull(ORDER_CN) Then
    
        Dim stDocName As String

        If PRODUCT_GROUP = "Propagule" Then
        If Not [order_form_data_processed] Then
        ' turns warning (about to update/delete...) off
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_REVIEW Query"
            'DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
            'DoCmd.OpenQuery "Order_Form_LOC mt Query"
            'DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
            'DoCmd.OpenQuery "Order_Form_QI mt Query"
            'DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
            'DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
            DoCmd.OpenQuery "Order_Form_Specs mt Query"
            DoCmd.OpenQuery "Order_Form_MCODES mt Query"
            DoCmd.OpenQuery "Order_form_Contacts mt Query"
            DoCmd.OpenQuery "Order_form_Contacts at Query"
            DoCmd.OpenQuery "Order_Form_PKC mt Query"
            'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"

            'Update Order_Services_String Table
            ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
            DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
            ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
            DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
            ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
            DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
            DoCmd.SetWarnings True
            [order_form_data_processed] = True
        End If
    
            stDocName = "ORDER_FORM_PROPAGULE mt"
            DoCmd.OpenReport stDocName, acPreview
    
        Else
            If Not [order_form_data_processed] Then
            ' turns warning (about to update/delete...) off
            DoCmd.SetWarnings False

            'Update Order_Services_String Table
            ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
            DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
            ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
            DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
            ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
            DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
            DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_REVIEW Query"
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
            DoCmd.OpenQuery "Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class_mt"
    
            DoCmd.SetWarnings True
            '[order_form_data_processed] = True
            End If
    
            Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
            Case Is = "040207"
                stDocName = "ORDER_FORM mt_040207_edit"
            Case Is = "050357"
                stDocName = "ORDER_FORM mt_050357_edit"
            Case Else
                stDocName = "order_form_from_order_edit mt"
            End Select
    
            DoCmd.OpenReport stDocName, acPreview
        End If
    Else
        MsgBox "Must select an Order First"
    End If

End Sub

Private Sub PrvwStrgRcrd_Click()
    
    If Not IsNull(ORDER_CN) Then
    
    Dim stDocName As String

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    stDocName = "PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM"
    DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Must select an Order First"
    End If

End Sub

Private Sub View_by_Click()

    [ORDER_CN].Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub VIEW_FY_Change()

    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub VIEW_FY_Click()

End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub
Private Sub Open_Sow_Req_Info_Click()
On Error GoTo Err_Open_Sow_Req_Info_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ORDERS_REVIEW_AGREEMENT_INFO"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sow_Req_Info_Click:
    Exit Sub

Err_Open_Sow_Req_Info_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sow_Req_Info_Click
    
End Sub
```
