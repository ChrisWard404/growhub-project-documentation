# Form: NMIS_PROCESS_QUALITY_SAMPLES

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.Sample_Input_JHSN`, `Form.NMIS_PROCESS_QUALITY_SAMPLES Subform1`, `Form.NMIS_PROCESS_QUALITY_SAMPLES Subform2`, `Form.NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform`, `Form.NMIS_PROCESS_QUALITY_COUNTS subform`  
**Opens:** `Form:NMIS_PROCESS_QUALITY_SAMPLES2`, `Form:Processing_QI_Daily_Checklist`  
**Opened from (VBA):** `Form_PROCESS_PAYMENT_ESTIMATE_INVOICE`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box108 |  |  |  |  | 0.03, 0.03, 4.16, 0.80 |
| Label | Label56 | Processing Quality Samples |  |  |  | 4.31, 0.08, 3.14, 0.31 |
| TextBox | VIEW_FY | Like Order FY: |  |  | AfterUpdate, Change | 1.42, 0.08, 0.63, 0.23 |
| ComboBox | Order_CN |  |  | SELECT NMIS_ORDERS.CN, IIf([Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)) AS [Lot ID/Order], [Client_Associate] & " " & [Associate_Name] AS Associate, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST AS [Sow Req], NMIS_ORDERS.ORDER_AMT AS [Order], NMIS_ORDERS.OVERRUN_AMT, NMIS_ORDERS.OVERRUN_ALL AS [All], NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune2 AS [Size Specs], [ACTIVITY_CODE] & " " AS Activity, [CONTRACT_ITEM] & " " AS [C Item], NMIS_ORDERS.ACTIVITY_CODE FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_ORDERS_SIZE_SPEC_STRING INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ASSOCIATES INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN NMIS_ORDERS ON NMIS_AGREEMENT_LOTS.CN = NMIS_ORDERS.AGREEMENT_LOT_CN) ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_ORDERS_SIZE_SPEC_STRING.CN = NMIS_ORDERS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![VIEW_FY])) GROUP BY NMIS_ORDERS.CN, IIf([Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)), [Client_Associate] & " " & [Associate_Name], NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.OVERRUN_AMT, NMIS_ORDERS.OVERRUN_ALL, NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune2, [ACTIVITY_CODE] & " ", [CONTRACT_ITEM] & " ", NMIS_ORDERS.ACTIVITY_CODE, Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1), Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1) & [Product_Group] ORDER BY Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1), IIf([Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)); | Enter | 2.00, 0.54, 2.13, 0.23 |
| OptionGroup | View_by |  |  |  | AfterUpdate | 0.09, 0.38, 1.84, 0.40 |
| OptionButton | Option47 | Lot ID/Order ID |  |  |  | 0.79, 0.43, 0.00, 0.00 |
| OptionButton | Option45 | Order ID/Lot ID |  |  |  | 0.79, 0.59, 0.00, 0.00 |
| Label | Label43 | Select by: |  |  |  | 0.12, 0.49, 0.60, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl70 |  |  |  |  | 0.00, 0.07, 11.01, 5.25 |
| Page | Page93 | JHSN |  |  |  | 0.09, 0.36, 10.82, 4.86 |
| Subform | Sample_Input_JHSN |  | Form.Sample_Input_JHSN (master: order_cn → child: order) |  | Exit | 0.25, 0.84, 9.08, 4.39 |
| TextBox | Text96 |  |  |  |  | 0.75, 0.47, 0.04, 0.04 |
| TextBox | Default_Date | Default Date: |  |  | AfterUpdate | 1.46, 0.47, 0.92, 0.21 |
| Page | Form_View | Form |  |  |  | 0.09, 0.36, 10.82, 4.86 |
| Subform | NMIS_PROCESS_QUALITY_SAMPLES Subform1 |  | Form.NMIS_PROCESS_QUALITY_SAMPLES Subform1 (master: ORDER_CN → child: ORDER_CN) |  |  | 0.57, 0.64, 8.04, 4.46 |
| Page | List |  List |  |  |  | 0.09, 0.36, 10.82, 4.86 |
| Subform | NMIS_PROCESS_QUALITY_SAMPLES Subform2 |  | Form.NMIS_PROCESS_QUALITY_SAMPLES Subform2 (master: ORDER_CN → child: ORDER_CN) |  |  | 0.12, 0.66, 10.79, 4.52 |
| Page | Notes |  |  |  |  | 0.09, 0.36, 10.82, 4.86 |
| Subform | NMIS_PROCESSING_QI_NOTES subform |  | Form.NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform (master: ORDER_CN → child: ORDER_CN) |  |  | 1.08, 0.67, 7.37, 4.47 |
| Page | Counts |  |  |  |  | 0.09, 0.36, 10.82, 4.86 |
| Subform | NMIS_PROCESSING_QUALITY_COUNTS subform |  | Form.NMIS_PROCESS_QUALITY_COUNTS subform (master: ORDER_CN → child: ORDER_CN) |  |  | 2.33, 0.68, 4.21, 4.29 |
| Page | Page100 | Reports |  |  |  | 0.09, 0.36, 10.82, 4.86 |
| CommandButton | Open_Process_QI_Reports_Form | Quality Monitoring Reports... |  |  | Click | 1.29, 0.80, 2.42, 0.35 |

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

Private Sub Default_Date_AfterUpdate()

    [Sample_Input_JHSN].Requery

End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ORDER_CN"
    
End Sub

Private Sub ORDER_CN_AfterUpdate()

    '[Sample_Input_JHSN].Form![Default_Station] = Null
    '[Sample_Input_JHSN].Form![Default_Mode] = Null
    '[Sample_Input_JHSN].Form![Default_Sample_Size] = Null
    [Sample_Input_JHSN].Requery

End Sub

Private Sub Order_CN_Enter()

    [Sample_Input_JHSN].Requery
    ORDER_CN.Requery
    
End Sub

Private Sub Sample_Input_JHSN_Exit(Cancel As Integer)

    DoCmd.GoToControl "[SAMPLE_STATION]"
  
End Sub

Private Sub View_by_AfterUpdate()

    ORDER_CN.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    ORDER_CN.Requery
    
End Sub

Private Sub VIEW_FY_Change()
    
    ORDER_CN.Requery
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    
End Sub
Private Sub Open_Process_QI_Reports_Form_Click()
On Error GoTo Err_Open_Process_QI_Reports_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Processing_QI_Daily_Checklist"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Process_QI_Reports_Form_Click:
    Exit Sub

Err_Open_Process_QI_Reports_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Process_QI_Reports_Form_Click
    
End Sub
```
