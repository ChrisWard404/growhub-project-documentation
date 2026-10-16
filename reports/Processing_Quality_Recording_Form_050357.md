# Report: Processing_Quality_Recording_Form_050357

**Grouping/sorting:** `Cost_Center`, `ID`  
**Opened from (VBA):** `Form_Order_Pack_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 3.92, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.92, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.79, 0.17, 2.78, 0.20 |
| Label | Label5 | Daily Quality Inspection Record |  |  |  | 3.79, 0.58, 2.80, 0.23 |
| TextBox | ID | Lot: | ID |  |  | 0.12, 0.86, 1.50, 0.26 |
| TextBox | Order_Size_Spec_W_Prune | Caliper/Height Specs: | Order_Size_Spec_W_Prune |  |  | 6.01, 1.50, 1.92, 0.19 |
| TextBox | SumOfORDER_AMT | Pack Request: | CLI_ORDER |  |  | 9.66, 1.22, 0.70, 0.19 |
| TextBox | Species_Product_Description | Stock Type / Species: | Species_Product_Description |  |  | 3.21, 0.94, 4.11, 0.19 |
| TextBox | CLIENT | CLIENT: | CLIENT |  |  | 0.62, 1.50, 3.92, 0.19 |
| Label | Label24 | More than one belt on this lot? (Y?N)  _____ |  |  |  | 0.92, 1.22, 2.76, 0.19 |
| Label | Label25 | Belt: _____ |  |  |  | 0.12, 1.22, 0.75, 0.19 |
| Label | Label26 | Date: ________ |  |  |  | 7.45, 0.94, 1.03, 0.19 |
| Label | Label28 | Other?: _____ |  |  |  | 3.75, 1.22, 0.93, 0.19 |
| Label | Label29 | Amt to Sample: ________ |  |  |  | 8.74, 0.94, 1.62, 0.19 |
| Label | Label31 | Amt/Bndl: ______ |  |  |  | 9.22, 1.50, 1.15, 0.19 |
| TextBox | Text32 |  | =IIf([Cost_Center]="B","Amt/Bag: _____","Amt/Box: _____") |  |  | 7.95, 1.50, 1.22, 0.19 |
| TextBox | SOURCE_CODE1 | Source Code: | SOURCE_CODE1 |  |  | 5.78, 1.23, 2.92, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ObjectFrame | OLEUnbound1 |  |  |  |  | 11.48, 0.15, 0.02, 10.24 |
| TextBox | Text7 |  | =IIf([Cost_Center]="B","Too Long") |  |  | 8.50, 0.25, 0.59, 0.33 |
| TextBox | Text8 |  | =IIf([Cost_Center]="B","Too Short") |  |  | 9.14, 0.25, 0.61, 0.33 |
| TextBox | Text9 |  | =IIf([Cost_Center]="B","Knots","Comment") |  |  | 5.94, 0.41, 0.62, 0.18 |
| TextBox | Text10 |  | =IIf([Cost_Center]="B","Sample Size","Extra Seedlings") |  |  | 7.23, 0.25, 0.61, 0.33 |
| TextBox | Text11 |  | =IIf([Cost_Center]="B","Bndl Counts","Bag Counts") |  |  | 0.84, 0.25, 0.61, 0.33 |
| TextBox | Text12 |  | =IIf([Cost_Center]="B","Amt/Bag","Amt/Box") |  |  | 5.34, 6.51, 0.60, 0.19 |
| TextBox | Text13 |  | =IIf([Cost_Center]="B","Bag Count","Box Count") |  |  | 5.97, 6.37, 0.61, 0.33 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text104 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 4.67, 0.00, 5.68, 0.36 |
