# Report: Orders_Checklist_by_Lot_ID

**Grouping/sorting:** `Cat`, `ID`, `Order ID`  
**Opened from (VBA):** `Form_NMIS_ORDERS_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Label | Label36 | Lot ID |  |  |  | 0.10, 1.50, 0.53, 0.23 |
| Label | Label41 | Stocktype |  |  |  | 1.61, 1.50, 0.75, 0.23 |
| Label | Label44 | Client Orders (M) |  |  |  | 5.03, 1.07, 0.68, 0.66 |
| Line | Line45 |  |  |  |  | 0.02, 1.74, 7.93, 0.00 |
| TextBox | Text64 |  | ="Orders Summary Checklist for FY " & [END_FY] |  |  | 2.25, 0.60, 3.67, 0.23 |
| Label | Label66 | Overrun (M) |  |  |  | 5.74, 1.28, 0.77, 0.45 |
| Label | Label79 | All |  |  |  | 7.24, 1.50, 0.26, 0.23 |
| ComboBox | Cat |  | Cat | B;Bareroot;C;Container;N;Native Propagule |  | 2.25, 0.83, 3.67, 0.29 |
| Label | Label112 | Order ID |  |  |  | 3.45, 1.50, 0.76, 0.23 |
| Label | Label113 | Total (M) |  |  |  | 6.56, 1.28, 0.68, 0.45 |
| TextBox | Text111 |  | ="Selected for Activity Code: " & nz([Forms]![NMIS_ORDERS_Reports]![Like_Activity_Code],"*") |  |  | 0.00, 0.15, 2.50, 0.20 |
| Label | BE_AT_PACK label | Be at Pk |  |  |  | 7.54, 1.08, 0.28, 0.65 |
| TextBox | Text115 |  | ="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*") |  |  | 0.00, 0.39, 2.50, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Plntmstr_Symbol |  |  | 0.00, 0.00, 1.50, 0.00 |
| TextBox | Order ID |  | Order ID |  |  | 3.42, 0.00, 1.46, 0.00 |
| TextBox | SumOfORDER_AMT |  | ORDER_AMT |  |  | 4.89, 0.00, 0.78, 0.00 |
| TextBox | Overrun |  | OVERRUN_AMT |  |  | 5.69, 0.00, 0.72, 0.00 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 7.33, 0.03, 0.00, 0.15 |
| TextBox | Age_Class |  | Product_Class_for_Cycle |  |  | 1.52, 0.00, 1.90, 0.00 |
| TextBox | Text114 |  | =[ORDER_AMT]+nz([OVERRUN_AMT],0) |  |  | 6.42, 0.00, 0.74, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 0.60, 0.17, 6.83, 0.01 |
| CheckBox | BE_AT_PACK |  | BE_AT_PACK |  |  | 7.64, 0.03, 0.00, 0.15 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line117 |  |  |  |  | 0.00, 0.00, 7.93, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.02, 0.02, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.94, 0.02, 1.91, 0.16 |
| Line | Line22 |  |  |  |  | 0.02, 0.00, 7.85, 0.00 |
