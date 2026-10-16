# Report: ORDER_STATUS_Packed_no

**Caption:** ORDER_STATUS  
**Record source:**

```sql
ORDER_STATUS_Packed_not Query
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `CATEGORY_CODE`, `ID`  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opens:** `Form:Order_Status_Input`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 5.35, 0.79, 0.46, 0.21 |
| Label | FISCAL_YEAR_Label | Fiscal Year: |  |  |  | 4.48, 0.79, 0.88, 0.21 |
| TextBox | REPORT_PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 9.46, 0.00, 0.96, 0.19 |
| TextBox | NURSERY_TITLE |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.73, 0.38, 3.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 4.67, 0.00, 1.11, 0.15 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.94, 0.17, 2.60, 0.18 |
| TextBox | CLIENT_ASSOCIATE | Client: | Associate_and_Reporting_Parent_Name_W_CODE |  |  | 0.67, 1.14, 7.92, 0.26 |
| Label | Label81 | Bal |  |  |  | 10.18, 1.64, 0.25, 0.19 |
| Line | Line82 |  |  |  |  | 0.01, 1.82, 10.43, 0.00 |
| Label | Label57 |     ID            Source Code                                        ID        Code  Amount   All    Pack Date       Packed       Cont.         Type         Trans or Dest      Amount    Cont. |  |  |  | 0.00, 1.62, 10.23, 0.19 |
| Label | Label58 | Nursery                                                                   ------------  Order  -------------                           Amount        # of       Container        Date Ship,                      # of    |  |  |  | 0.00, 1.44, 10.33, 0.19 |
| TextBox | REPORT_DATE |  | ="Processing Orders Status NOT PACKED Through: " & Date() |  |  | 3.00, 0.58, 4.50, 0.20 |
| Label | Label77 | = Shortage |  |  |  | 9.41, 1.00, 0.92, 0.25 |
| Label | Label91 | * |  |  |  | 9.25, 1.01, 0.12, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, IIf([category_code] Like "B*" Or [category_code] Like "C*",IIf(Left$([CATEGORY_CODE],1)="B","Bareroot ",IIf(Left$([category_Code],1)="C","Container ","") & IIf(Right$([CATEGORY_CODE],3)="CTR","Contract ")) & "Plant") AS Expr1 FROM NMIS_CATEGORIES; |  | 0.00, 0.00, 3.83, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.00, 0.00, 3.00, 0.15 |
| TextBox | ORDER_CODE |  | ORDER_CODE |  |  | 3.50, 0.00, 0.50, 0.15 |
| TextBox | ORDER_AMT |  | ORDER_AMOUNT |  |  | 4.00, 0.00, 0.46, 0.15 |
| TextBox | DATE_PACK |  | DATE_PACK |  |  | 4.75, 0.00, 0.83, 0.15 |
| TextBox | PACK_AMT |  | PACK_AMT |  |  | 5.62, 0.00, 0.58, 0.15 |
| TextBox | PACK_CONT |  | PACK_CONT |  |  | 6.29, 0.00, 0.42, 0.15 |
| TextBox | DATE_SHIP |  | DATE_SHIP |  |  | 7.93, 0.00, 0.82, 0.15 |
| TextBox | SHIP_AMT |  | SHIP_AMT |  |  | 8.88, 0.00, 0.56, 0.15 |
| TextBox | SHIP_CONT |  | SHIP_CONT |  |  | 9.43, 0.00, 0.38, 0.15 |
| TextBox | CONTAINER |  | CONTAINER |  |  | 6.90, 0.00, 0.54, 0.15 |
| TextBox | FREEZER |  | FREEZER |  |  | 7.47, 0.00, 0.42, 0.15 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 4.58, 0.02, 0.00, 0.14 |
| TextBox | Text75 |  | =IIf([PACK_AMT]<[ORDER_AMT],"*","") |  |  | 6.21, 0.01, 0.08, 0.14 |
| TextBox | Balance |  | =[pack_amt]-nz([ship_amt],0) |  |  | 9.96, 0.00, 0.47, 0.15 |
| TextBox | order_ID |  | order_ID |  |  | 3.01, 0.00, 0.50, 0.15 |
| TextBox | CandN_NOTES |  | CandN_NOTES |  |  | 0.62, 0.17, 9.21, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text67 |  | =Sum([ORDER_AMOUNT]) |  |  | 3.74, 0.12, 0.71, 0.00 |
| TextBox | Text68 |  | =Sum([PACK_AMT]) |  |  | 5.49, 0.12, 0.71, 0.00 |
| TextBox | Text69 |  | =Sum([SHIP_AMT]) |  |  | 8.72, 0.12, 0.71, 0.00 |
| Label | Label71 | -------- |  |  |  | 3.66, 0.00, 0.79, 0.17 |
| Label | Label72 | -------- |  |  |  | 5.41, 0.00, 0.79, 0.17 |
| Label | Label73 | -------- |  |  |  | 8.64, 0.00, 0.79, 0.17 |
| ComboBox | Combo74 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, IIf(Left$([CATEGORY_CODE],1)="B","Bareroot Plant Totals",IIf(Left$([category_Code],1)="C","Container Plant Totals","")) AS Expr1 FROM NMIS_CATEGORIES; |  | 0.59, 0.08, 2.33, 0.18 |
| TextBox | Text85 |  | =Sum(nz([pack_amt]-nz([ship_amt],0),0)) |  |  | 9.72, 0.12, 0.71, 0.00 |
| Label | Label86 | -------- |  |  |  | 9.64, 0.00, 0.79, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_ORDER_AMT |  | =Sum([ORDER_AMOUNT]) |  |  | 3.75, 0.12, 0.71, 0.00 |
| TextBox | SUM_PACK_AMT |  | =Sum([PACK_AMT]) |  |  | 5.50, 0.12, 0.71, 0.00 |
| TextBox | SUM_SHIP_AMT |  | =Sum([SHIP_AMT]) |  |  | 8.73, 0.12, 0.71, 0.00 |
| Label | Label60 | Totals |  |  |  | 0.58, 0.08, 0.88, 0.17 |
| Label | Label61 | -------- |  |  |  | 3.67, 0.00, 0.79, 0.17 |
| Label | Label62 | -------- |  |  |  | 5.42, 0.00, 0.79, 0.17 |
| Label | Label63 | -------- |  |  |  | 8.65, 0.00, 0.79, 0.17 |
| TextBox | Text87 |  | =Sum(nz([pack_amt]-nz([ship_amt],0),0)) |  |  | 9.73, 0.12, 0.71, 0.00 |
| Label | Label88 | -------- |  |  |  | 9.65, 0.00, 0.79, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label59 | Not all pack data may  be entered at time report was run; If you need pack quantity on a specific lot you think may have been packed  please call |  |  |  | 0.04, 0.04, 8.96, 0.18 |
| Line | Line65 |  |  |  |  | 0.04, 0.04, 10.17, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Order_Status_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    
    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "Order_Status_Input", , , , , acDialog, ""
    If Not IsLoaded("Order_Status_Input") Then
        Cancel = True
    End If
    
End Sub
```
