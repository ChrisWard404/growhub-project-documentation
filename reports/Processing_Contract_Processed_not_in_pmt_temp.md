# Report: Processing_Contract_Processed_not_in_pmt_temp

**Caption:** Lots Processed not included in Contract Est  
**Record source:**

```sql
SELECT Processing_Contract_Lots_Processed_by_Date_Range.ID, Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_DATE, Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_CODE, PROCESSING_PMT_TEMP.amount_packed, Processing_Contract_Lots_Processed_by_Date_Range.Order, Processing_Contract_Lots_Processed_by_Date_Range.CONTRACT_ITEM, Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_UNITS
FROM PROCESSING_PMT_TEMP RIGHT JOIN Processing_Contract_Lots_Processed_by_Date_Range ON PROCESSING_PMT_TEMP.ID = Processing_Contract_Lots_Processed_by_Date_Range.ID
WHERE (((PROCESSING_PMT_TEMP.ID) Is Null))
ORDER BY Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_DATE;
```

**Opens:** `Report:Processing_Contract_No_Quality_Samples`, `Report:Processing_Contract_No_Quality_Samples_no_data`  
**Opened from (VBA):** `Form_PROCESS_PAYMENT_ESTIMATE_INVOICE`  
**Report events with code:** Close, NoData  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Date |  |  |  | 0.04, 1.09, 0.75, 0.23 |
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.68, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.68, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.55, 0.17, 2.78, 0.20 |
| Label | Label5 | ORDERS Processed Not Included in Processing Contract Est |  |  |  | 0.88, 0.58, 6.12, 0.20 |
| TextBox | Text71 |  | ="Inclusive Dates: " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date] |  |  | 2.17, 0.79, 3.71, 0.19 |
| Label | Label9 | Lot Id |  |  |  | 2.11, 1.09, 0.51, 0.23 |
| Label | Label10 | Order ID |  |  |  | 1.05, 1.09, 0.68, 0.23 |
| Label | Label11 | Activity Code |  |  |  | 3.25, 1.09, 0.99, 0.23 |
| Label | Label12 | Contract Item |  |  |  | 4.45, 1.09, 1.01, 0.23 |
| Label | Label13 | Units |  |  |  | 6.49, 1.09, 0.89, 0.23 |
| Line | Line14 |  |  |  |  | 0.04, 1.33, 7.33, 0.00 |
| Label | Label15 | Pack (M) |  |  |  | 5.55, 1.09, 0.91, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.04, 0.03, 0.75, 0.23 |
| TextBox | ID |  | ID |  |  | 2.12, 0.03, 0.00, 0.23 |
| TextBox | Order ID |  | Order |  |  | 1.19, 0.03, 0.54, 0.23 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 3.46, 0.03, 0.67, 0.23 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 4.71, 0.03, 0.54, 0.23 |
| TextBox | CLIENT_ASSOCIATE |  | ACTIVITY_UNITS |  |  | 6.57, 0.03, 0.60, 0.23 |
| TextBox | Text16 |  | amount_packed |  |  | 5.75, 0.03, 0.60, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label17 | Check for a mismatch on the Order Activity Code and the Activity Activity Code |  |  |  | 1.04, 0.04, 5.88, 0.25 |
| TextBox | Text8 |  | =Now() |  |  | 0.00, 0.04, 0.00, 0.23 |

## Code-behind (VBA)

```vb
Option Compare Database


Private Sub Report_Close()
    
    If Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = False Then
        Response = MsgBox("Is The Data OK?", vbYesNo)
        If Response = vbYes Then
            'Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
            DoCmd.OpenReport "Processing_Contract_No_Quality_Samples", acViewPreview
        Else
            MsgBox "Correct the Data and try again"
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Data Processed] = False
        End If
    End If
    
End Sub

Private Sub Report_NoData(Cancel As Integer)

        'Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
        DoCmd.OpenReport "Processing_Contract_No_Quality_Samples_no_data", acViewPreview
        
End Sub
```
