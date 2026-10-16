# Report: Product_Storage_Containers_Used_stocktype

**Caption:** Product Storage Units Use Report  
**Grouping/sorting:** `FISCAL_YEAR`, `UNIT_CODE`, `BorCorN`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Fiscal Year |  |  |  | 0.08, 1.31, 0.78, 0.20 |
| Label | TOTAL_REQUEST_Label |   Unit Desctiption |  |  |  | 2.22, 1.31, 1.32, 0.20 |
| Label | AMOUNT_REQUESTED_Label | Units |  |  |  | 6.55, 1.31, 0.40, 0.20 |
| Label | Label60 | Unit Code |  |  |  | 1.16, 1.31, 0.71, 0.20 |
| Label | Label80 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| Label | Label81 | Product Storage Container Use Summary |  |  |  | 2.33, 0.55, 3.32, 0.22 |
| TextBox | Text82 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label83 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label86 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text88 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label89 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label92 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text94 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label95 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| TextBox | Text96 |  | =[Begin_Date] & IIf(Not IsNull([End_Date])," - " & [End_Date]) |  |  | 2.35, 0.86, 3.29, 0.23 |
| Line | Line101 |  |  |  |  | 0.00, 1.53, 7.99, 0.00 |
| Line | Line102 |  |  |  |  | 0.00, 1.29, 7.99, 0.00 |
| Label | Label123 | Amt/Unit |  |  |  | 7.10, 1.31, 0.61, 0.20 |
| Label | Label125 |   Product |  |  |  | 3.99, 1.31, 1.34, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 1.11, 0.00, 1.08, 0.23 |
| TextBox | UNIT_DESC |  | UNIT_DESC |  |  | 2.22, 0.00, 2.03, 0.23 |
| TextBox | Units |  | Units |  |  | 6.32, 0.00, 0.60, 0.23 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.08, 0.00, 0.00, 0.23 |
| TextBox | Text124 |  | AvgOfAMT_PER_UNIT |  |  | 7.09, 0.00, 0.59, 0.23 |
| TextBox | Text126 |  | PRODUCT_CLASS |  |  | 4.27, 0.00, 2.03, 0.23 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | sum_units | Total | =Sum([Units]) |  |  | 6.17, 0.00, 0.76, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.01, 0.17, 3.50, 0.18 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.82, 0.17, 3.17, 0.18 |
| Line | Line100 |  |  |  |  | 0.04, 0.04, 7.97, 0.00 |
