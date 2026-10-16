# Report: Processing_Contract_No_Quality_Samples

**Caption:** No Quality Monitoring Samples  
**Opened from (VBA):** `Form_PROCESS_PAYMENT_ESTIMATE_INVOICE`, `Report_Processing_Contract_Processed_not_in_pmt_temp`  
**Report events with code:** Close  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Date |  |  |  | 0.04, 1.09, 0.75, 0.23 |
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.68, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.68, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.55, 0.17, 2.78, 0.20 |
| Label | Label5 | ORDERS Processed without a Quality Monitoring Sample |  |  |  | 2.11, 0.58, 3.80, 0.20 |
| TextBox | Text71 |  | ="Inclusive Dates: " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date] |  |  | 2.17, 0.79, 3.71, 0.19 |
| Label | Label9 | Lot Id |  |  |  | 0.98, 1.09, 0.51, 0.23 |
| Label | Label10 | Order ID |  |  |  | 1.95, 1.09, 0.68, 0.23 |
| Label | Label11 | Activity Code |  |  |  | 2.78, 1.09, 0.99, 0.23 |
| Label | Label12 | Contract Item |  |  |  | 3.93, 1.09, 1.01, 0.23 |
| Label | Label13 | Client Code |  |  |  | 7.07, 1.09, 0.86, 0.23 |
| Line | Line14 |  |  |  |  | 0.04, 1.33, 7.94, 0.00 |
| Label | Label15 | Order (M) |  |  |  | 5.07, 1.09, 0.89, 0.23 |
| Label | Label17 | Packed (M) |  |  |  | 6.10, 1.09, 0.89, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.04, 0.00, 0.75, 0.23 |
| TextBox | ID |  | ID |  |  | 0.99, 0.00, 0.00, 0.23 |
| TextBox | Order ID |  | Order ID |  |  | 2.02, 0.00, 0.61, 0.23 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 2.99, 0.00, 0.67, 0.23 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 4.19, 0.00, 0.54, 0.23 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 7.15, 0.00, 0.77, 0.23 |
| TextBox | Text16 |  | ORDER_AMT |  |  | 5.26, 0.00, 0.60, 0.23 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 6.29, 0.00, 0.60, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text8 |  | =Now() |  |  | 0.00, 0.04, 0.00, 0.23 |

## Code-behind (VBA)

```vb
Option Compare Database


Private Sub Report_Close()
    If Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = False Then
        Response = MsgBox("Is The Data OK?", vbYesNo)
        If Response = vbYes Then
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
            MsgBox "Processing Complete. Click on any button for a report"
        Else
            MsgBox "Correct the Data and try again"
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Data Processed] = False
        End If
    End If
End Sub
```
