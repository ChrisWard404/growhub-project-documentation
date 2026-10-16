# Report: ORDER_STATUS

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `DESTINATION_ASSOCIATE`, `CATEGORY_CODE`, `PRODUCT_DESC`, `VERNACULAR`, `AGREEMENT_LOT_ID_AND_SOURCE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_CONTACTS`  
**Opens:** `Form:Order_Status_Input`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_Reports_Menu_Processing Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | REPORT_Label | Processing Orders Status Through: |  |  |  | 3.31, 0.58, 2.70, 0.20 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 5.35, 0.79, 0.46, 0.21 |
| Label | FISCAL_YEAR_Label | Fiscal Year: |  |  |  | 4.48, 0.79, 0.88, 0.21 |
| TextBox | REPORT_PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 9.49, 0.00, 0.96, 0.19 |
| TextBox | REPORT_DATE |  | =Now() |  |  | 6.02, 0.58, 0.00, 0.20 |
| TextBox | NURSERY_TITLE |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.73, 0.38, 3.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 4.67, 0.00, 1.11, 0.15 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.94, 0.17, 2.60, 0.18 |
| TextBox | CLIENT_ASSOCIATE | Client: | Associate_and_Reporting_Parent_Name_W_CODE |  |  | 0.73, 1.05, 8.04, 0.26 |
| Label | Label57 |     ID            Source Code                                         ID       Code   Amount   All    Pack Date       Packed       Cont.       Type          Trans or Dest     Amount   Cont.  |  |  |  | 0.01, 1.55, 10.15, 0.19 |
| Label | Label58 | Nursery                                                               ------------  Order  -------------                               Amount        # of    Container         Date Ship,                       # of     |  |  |  | 0.01, 1.36, 10.29, 0.19 |
| Label | Label77 | = Shortage |  |  |  | 9.42, 0.92, 0.92, 0.25 |
| Label | Label81 | Bal |  |  |  | 10.20, 1.55, 0.25, 0.19 |
| Line | Line82 |  |  |  |  | 0.01, 1.74, 10.44, 0.00 |
| Label | Label91 | * |  |  |  | 9.26, 0.93, 0.12, 0.19 |
| ComboBox | Combo178 |  | =[Forms]![Order_Status_Input]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.54, 2.36, 0.21 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text115 |  | DESTINATION_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Deliver to " & [Associate] & " - " & [Associate_Name] AS DeliverTo FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 5.92, 0.20 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES_1.CATEGORY_DESC FROM NMIS_CATEGORIES AS NMIS_CATEGORIES_1 INNER JOIN NMIS_CATEGORIES ON NMIS_CATEGORIES_1.CATEGORY_CODE = NMIS_CATEGORIES.CATEGORY_CODE; |  | 0.00, 0.00, 3.83, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.02, 0.00, 3.40, 0.18 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text114 |  | VERNACULAR |  |  | 0.04, 0.00, 3.40, 0.18 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line96 |  |  |  |  | 0.00, 0.00, 10.44, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.00, 0.01, 3.02, 0.16 |
| TextBox | ORDER_CODE |  | ORDER_CODE |  |  | 3.52, 0.01, 0.50, 0.16 |
| TextBox | ORDER_AMT |  | ORDER_AMOUNT |  |  | 4.02, 0.01, 0.46, 0.16 |
| TextBox | DATE_PACK |  | DATE_PACK |  |  | 4.77, 0.01, 0.83, 0.16 |
| TextBox | PACK_AMT |  | PACK_AMT |  |  | 5.60, 0.01, 0.62, 0.16 |
| TextBox | PACK_CONT |  | PACK_CONT |  |  | 6.34, 0.01, 0.42, 0.16 |
| TextBox | DATE_SHIP |  | DATE_SHIP |  |  | 7.95, 0.01, 0.82, 0.16 |
| TextBox | SHIP_AMT |  | SHIP_AMT |  |  | 8.76, 0.01, 0.56, 0.16 |
| TextBox | SHIP_CONT |  | SHIP_CONT |  |  | 9.34, 0.01, 0.38, 0.16 |
| TextBox | CONTAINER |  | CONTAINER |  |  | 6.92, 0.01, 0.54, 0.16 |
| TextBox | FREEZER |  | FREEZER |  |  | 7.49, 0.01, 0.42, 0.16 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 4.60, 0.03, 0.00, 0.16 |
| TextBox | Text75 |  | =IIf(Round([PACK_AMT],2)<Round([ORDER_AMOUNT],2),"*","") |  |  | 6.23, 0.02, 0.11, 0.15 |
| TextBox | Balance |  | =[pack_amt]-nz([ship_amt],0) |  |  | 9.92, 0.01, 0.53, 0.16 |
| TextBox | NN |  | NN |  |  | 4.77, 0.17, 4.20, 0.00 |
| TextBox | order_ID |  | order_ID |  |  | 3.02, 0.01, 0.50, 0.16 |
| TextBox | CandN_NOTES |  | CandN_NOTES |  |  | 0.70, 0.17, 9.21, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text93 |  | =IIf([CountOfAgreement_Lot_CN]>1,Sum([ORDER_AMOUNT]),Null) |  |  | 3.92, 0.00, 0.56, 0.00 |
| TextBox | Text94 |  | =IIf([CountOfAgreement_Lot_CN]>1,Sum([PACK_AMT])) |  |  | 5.54, 0.00, 0.69, 0.00 |
| TextBox | Text97 |  | =IIf([CountOfAgreement_Lot_CN]>1,Sum([pack_amt]-nz([ship_amt],0))) |  |  | 9.83, 0.00, 0.61, 0.00 |
| TextBox | Text112 |  | =IIf([CountOfAgreement_Lot_CN]>1,"Totals:",Null) |  |  | 3.16, 0.00, 0.56, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text67 |  | =Sum([ORDER_AMOUNT]) |  |  | 3.77, 0.12, 0.71, 0.00 |
| TextBox | Text68 |  | =Sum([PACK_AMT]) |  |  | 5.52, 0.12, 0.71, 0.00 |
| TextBox | Text69 |  | =Sum([SHIP_AMT]) |  |  | 8.60, 0.12, 0.71, 0.00 |
| Label | Label71 | -------- |  |  |  | 3.69, 0.00, 0.79, 0.17 |
| Label | Label72 | -------- |  |  |  | 5.44, 0.00, 0.79, 0.17 |
| Label | Label73 | -------- |  |  |  | 8.52, 0.00, 0.79, 0.17 |
| ComboBox | Combo74 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, IIf(Left$([CATEGORY_CODE],1)="B","Bareroot Plant Totals",IIf(Left$([category_Code],1)="C","Container Plant Totals","")) AS Expr1 FROM NMIS_CATEGORIES; |  | 0.59, 0.08, 2.33, 0.18 |
| TextBox | Text85 |  | =Sum(nz([pack_amt]-nz([ship_amt],0),0)) |  |  | 9.74, 0.12, 0.71, 0.00 |
| Label | Label86 | -------- |  |  |  | 9.79, 0.00, 0.66, 0.17 |
| TextBox | Text98 |  | =Sum([Pack_Cont]) |  |  | 6.25, 0.12, 0.51, 0.00 |
| Label | Label99 | ---- |  |  |  | 6.29, 0.00, 0.47, 0.17 |
| TextBox | Text102 |  | =Sum([Ship_Cont]) |  |  | 9.33, 0.12, 0.39, 0.00 |
| Label | Label103 | ---- |  |  |  | 9.39, 0.00, 0.33, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_ORDER_AMT |  | =Sum([ORDER_AMOUNT]) |  |  | 3.77, 0.12, 0.71, 0.00 |
| TextBox | SUM_PACK_AMT |  | =Sum([PACK_AMT]) |  |  | 5.52, 0.12, 0.71, 0.00 |
| TextBox | SUM_SHIP_AMT |  | =Sum([SHIP_AMT]) |  |  | 8.61, 0.12, 0.71, 0.00 |
| Label | Label60 | Totals |  |  |  | 0.58, 0.08, 0.88, 0.17 |
| Label | Label61 | -------- |  |  |  | 3.69, 0.00, 0.79, 0.17 |
| Label | Label62 | -------- |  |  |  | 5.44, 0.00, 0.79, 0.17 |
| Label | Label63 | -------- |  |  |  | 8.53, 0.00, 0.79, 0.17 |
| TextBox | Text87 |  | =Sum(nz([pack_amt]-nz([ship_amt],0),0)) |  |  | 9.75, 0.12, 0.71, 0.00 |
| Label | Label88 | -------- |  |  |  | 9.79, 0.00, 0.67, 0.17 |
| TextBox | Text100 |  | =Sum([Pack_Cont]) |  |  | 6.29, 0.12, 0.47, 0.00 |
| Label | Label101 | ---- |  |  |  | 6.29, 0.00, 0.47, 0.17 |
| TextBox | Text104 |  | =Sum([Ship_Cont]) |  |  | 9.33, 0.12, 0.39, 0.00 |
| Label | Label105 | ---- |  |  |  | 9.39, 0.00, 0.33, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label59 | Not all pack data may  be entered at time report was run; If you need pack quantity on a specific lot you think may have been packed  please call |  |  |  | 0.04, 0.01, 8.96, 0.18 |
| Line | Line65 |  |  |  |  | 0.04, 0.01, 10.39, 0.00 |

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
