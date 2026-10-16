# Report: ORDER_STATUS_DETAILED

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `DESTINATION_ASSOCIATE`, `CATEGORY_CODE`, `PRODUCT_DESC`, `VERNACULAR`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_CONTACTS`  
**Subforms/subreports:** `Report.ORDER_STAT_PACK_Detaied subreport`, `Report.ORDER_STAT_SHIP_Detaied subreport`  
**Opens:** `Form:Order_Status_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | REPORT_Label | Processing Orders Status Through: |  |  |  | 3.31, 0.58, 2.70, 0.20 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 5.35, 0.79, 0.46, 0.21 |
| Label | FISCAL_YEAR_Label | Fiscal Year: |  |  |  | 4.48, 0.79, 0.88, 0.21 |
| TextBox | REPORT_PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 9.53, 0.00, 0.96, 0.19 |
| TextBox | REPORT_DATE |  | =Now() |  |  | 6.02, 0.58, 0.00, 0.20 |
| TextBox | NURSERY_TITLE |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.73, 0.38, 3.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 4.67, 0.00, 1.11, 0.15 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.94, 0.17, 2.60, 0.18 |
| TextBox | CLIENT_ASSOCIATE | Client: | Associate_and_Reporting_Parent_Name_W_CODE |  |  | 0.73, 1.14, 8.04, 0.26 |
| Label | Label57 |     ID            Source Code                                           ID       Code   Amount   All    Pack Date       Packed       Cont.       Type          Trans or Dest     Amount   Cont.  |  |  |  | 0.01, 1.64, 10.11, 0.19 |
| Label | Label58 | Nursery                                                                   ------------  Order  -------------                              Amount        # of    Container         Date Ship,                       # of     |  |  |  | 0.01, 1.45, 10.34, 0.19 |
| Label | Label77 | = Shortage |  |  |  | 9.42, 1.00, 0.92, 0.25 |
| Label | Label81 | Bal |  |  |  | 10.22, 1.64, 0.25, 0.19 |
| Line | Line82 |  |  |  |  | 0.01, 1.82, 10.50, 0.00 |
| Label | Label91 | * |  |  |  | 9.26, 1.01, 0.12, 0.19 |
| ComboBox | Combo178 |  | =[Forms]![Order_Status_Input]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.54, 2.36, 0.21 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text115 |  | DESTINATION_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Deliver to " & [Associate] & " - " & [Associate_Name] AS DeliverTo FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 4.08, 0.20 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, IIf([category_code] Like "B*" Or [category_code] Like "C*",IIf(Left$([CATEGORY_CODE],1)="B","Bareroot ",IIf(Left$([category_Code],1)="C","Container ","") & IIf(Right$([CATEGORY_CODE],3)="CTR","Contract ")) & "Plant") AS Expr1 FROM NMIS_CATEGORIES; |  | 0.00, 0.00, 3.83, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.00, 0.00, 3.40, 0.18 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text114 |  | VERNACULAR |  |  | 0.00, 0.00, 3.40, 0.18 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line96 |  |  |  |  | 0.00, 0.00, 10.52, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box109 |  |  |  |  | 3.08, 0.01, 7.42, 0.17 |
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.00, 0.00, 3.10, 0.15 |
| TextBox | ORDER_CODE |  | ORDER_CODE |  |  | 3.60, 0.00, 0.50, 0.15 |
| TextBox | ORDER_AMT |  | ORDER_AMOUNT |  |  | 4.12, 0.00, 0.53, 0.15 |
| TextBox | DATE_PACK |  | DATE_PACK |  |  | 4.85, 0.00, 0.83, 0.15 |
| TextBox | PACK_AMT |  | PACK_AMT |  |  | 5.71, 0.00, 0.60, 0.15 |
| TextBox | PACK_CONT |  | PACK_CONT |  |  | 6.43, 0.00, 0.42, 0.15 |
| TextBox | DATE_SHIP |  | DATE_SHIP |  |  | 8.03, 0.00, 0.82, 0.15 |
| TextBox | SHIP_AMT |  | SHIP_AMT |  |  | 8.84, 0.00, 0.56, 0.15 |
| TextBox | SHIP_CONT |  | SHIP_CONT |  |  | 9.43, 0.00, 0.38, 0.15 |
| TextBox | CONTAINER |  | CONTAINER |  |  | 7.00, 0.00, 0.54, 0.15 |
| TextBox | FREEZER |  | FREEZER |  |  | 7.57, 0.00, 0.42, 0.15 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 4.69, 0.02, 0.00, 0.15 |
| TextBox | Text75 |  | =IIf(Round([PACK_AMT],2)<Round([ORDER_AMOUNT],2),"*","") |  |  | 6.31, 0.01, 0.11, 0.14 |
| TextBox | Balance |  | =[pack_amt]-nz([ship_amt],0) |  |  | 9.82, 0.00, 0.65, 0.15 |
| TextBox | NN |  | NN |  |  | 4.85, 0.18, 4.20, 0.00 |
| TextBox | order_ID |  | order_ID |  |  | 3.10, 0.00, 0.50, 0.15 |
| TextBox | CandN_NOTES |  | CandN_NOTES |  |  | 0.78, 0.20, 9.21, 0.00 |
| Subform | ORDER_STAT_PACK_Detaied subreport |  | Report.ORDER_STAT_PACK_Detaied subreport (master: CN → child: O_CN) |  |  | 5.70, 0.17, 2.17, 0.00 |
| Subform | Child108 |  | Report.ORDER_STAT_SHIP_Detaied subreport (master: CN → child: O_CN) |  |  | 8.38, 0.16, 2.10, 0.02 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text93 |  | =IIf([CountOfAgreement_Lot_CN]>1,Sum([ORDER_AMOUNT]),Null) |  |  | 4.09, 0.00, 0.56, 0.00 |
| TextBox | Text94 |  | =IIf([CountOfAgreement_Lot_CN]>1,Sum([PACK_AMT])) |  |  | 5.62, 0.00, 0.69, 0.00 |
| TextBox | Text97 |  | =IIf([CountOfAgreement_Lot_CN]>1,Sum([pack_amt]-nz([ship_amt],0))) |  |  | 9.96, 0.00, 0.57, 0.00 |
| TextBox | Text110 |  | =IIf([CountOfAgreement_Lot_CN]>1,"Totals:",Null) |  |  | 3.15, 0.00, 0.56, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label71 | -------- |  |  |  | 3.85, 0.00, 0.79, 0.17 |
| Label | Label72 | -------- |  |  |  | 5.51, 0.00, 0.79, 0.17 |
| Label | Label73 | -------- |  |  |  | 8.60, 0.00, 0.79, 0.17 |
| Label | Label86 | -------- |  |  |  | 9.88, 0.00, 0.59, 0.17 |
| Label | Label99 | ---- |  |  |  | 6.38, 0.00, 0.47, 0.17 |
| Label | Label103 | ---- |  |  |  | 9.47, 0.00, 0.33, 0.17 |
| TextBox | Text67 |  | =Sum([ORDER_AMOUNT]) |  |  | 3.94, 0.12, 0.71, 0.00 |
| TextBox | Text68 |  | =Sum([PACK_AMT]) |  |  | 5.50, 0.12, 0.80, 0.00 |
| TextBox | Text69 |  | =Sum([SHIP_AMT]) |  |  | 8.69, 0.12, 0.71, 0.00 |
| ComboBox | Combo74 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, IIf(Left$([CATEGORY_CODE],1)="B","Bareroot Plant Totals",IIf(Left$([category_Code],1)="C","Container Plant Totals","")) AS Expr1 FROM NMIS_CATEGORIES; |  | 0.59, 0.08, 2.33, 0.18 |
| TextBox | Text85 |  | =Sum(nz([pack_amt]-nz([ship_amt],0),0)) |  |  | 9.76, 0.12, 0.71, 0.00 |
| TextBox | Text98 |  | =Sum([Pack_Cont]) |  |  | 6.33, 0.12, 0.51, 0.00 |
| TextBox | Text102 |  | =Sum([Ship_Cont]) |  |  | 9.43, 0.12, 0.38, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_ORDER_AMT |  | =Sum([ORDER_AMOUNT]) |  |  | 3.95, 0.12, 0.71, 0.00 |
| TextBox | SUM_PACK_AMT |  | =Sum([PACK_AMT]) |  |  | 5.51, 0.12, 0.80, 0.00 |
| TextBox | SUM_SHIP_AMT |  | =Sum([SHIP_AMT]) |  |  | 8.70, 0.12, 0.71, 0.00 |
| Label | Label60 | Totals |  |  |  | 0.06, 0.08, 0.88, 0.17 |
| Label | Label61 | -------- |  |  |  | 3.86, 0.00, 0.79, 0.17 |
| Label | Label62 | -------- |  |  |  | 5.52, 0.00, 0.79, 0.17 |
| Label | Label63 | -------- |  |  |  | 8.61, 0.00, 0.79, 0.17 |
| TextBox | Text87 |  | =Sum(nz([pack_amt]-nz([ship_amt],0),0)) |  |  | 9.77, 0.12, 0.71, 0.00 |
| Label | Label88 | -------- |  |  |  | 9.86, 0.00, 0.60, 0.17 |
| TextBox | Text100 |  | =Sum([Pack_Cont]) |  |  | 6.38, 0.12, 0.47, 0.00 |
| Label | Label101 | ---- |  |  |  | 6.38, 0.00, 0.47, 0.17 |
| TextBox | Text104 |  | =Sum([Ship_Cont]) |  |  | 9.43, 0.12, 0.38, 0.00 |
| Label | Label105 | ---- |  |  |  | 9.47, 0.00, 0.33, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label59 | Not all pack data may  be entered at time report was run; If you need pack quantity on a specific lot you think may have been packed  please call. |  |  |  | 0.04, 0.04, 10.38, 0.18 |
| Line | Line65 |  |  |  |  | 0.04, 0.04, 10.43, 0.00 |

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
