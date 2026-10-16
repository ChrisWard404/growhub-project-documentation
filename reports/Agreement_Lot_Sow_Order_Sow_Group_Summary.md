# Report: Agreement_Lot_Sow_Order_Sow_Group_Summary

**Caption:** AGREEMENT_LOT_SOWING_ORDER_Group_Summary  
**Grouping/sorting:** `Cost_Center`, `SOWING_ORDER`, `SowGroup`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `CLIENT_ASSOCIATE`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Total Request |  |  |  | 4.88, 0.98, 0.92, 0.19 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est. Containers |  |  |  | 6.50, 1.00, 0.69, 0.33 |
| Label | SOURCE_CODE_Label | Sowing Order |  |  |  | 0.00, 0.98, 0.54, 0.34 |
| Label | Label89 | Calc. Sow |  |  |  | 5.71, 0.98, 0.99, 0.18 |
| TextBox | Text106 |  | ="(" & [UNIT_CODE] & ")" |  |  | 5.05, 1.16, 0.62, 0.00 |
| TextBox | Text108 |  | ="(" & [UNIT_CODE] & ")" |  |  | 5.97, 1.16, 0.47, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.73, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.51, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.51, 0.00, 3.24, 0.16 |
| Label | Label125 | Sowing Group |  |  |  | 1.12, 1.15, 1.42, 0.18 |
| Line | Line126 |  |  |  |  | 0.04, 1.32, 7.94, 0.00 |
| TextBox | Text127 |  | ="Agreement Lots Sowing Order Summary for " & [Begin_FY] |  |  | 2.03, 0.55, 4.42, 0.23 |
| ComboBox | Text179 |  | =[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;"Traditional and Non-Traditional Species " |  | 0.04, 0.01, 2.66, 0.18 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] |  |  | 0.06, 0.19, 1.92, 0.20 |
| TextBox | Text132 |  | ="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY] |  |  | 0.06, 0.39, 1.92, 0.20 |
| TextBox | Text133 |  | ="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client] |  |  | 0.06, 0.58, 1.92, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol] |  |  | 0.06, 0.78, 1.92, 0.20 |
| Label | Label140 | Act. Containers |  |  |  | 7.29, 1.00, 0.69, 0.33 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Cost_Center |  | Cost_Center | B;Bareroot;C;Container |  | 0.00, 0.04, 3.29, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.61, 0.00, 0.98, 0.21 |
| TextBox | Text97 |  | =Sum([Agreement_Est_Containers]) |  |  | 6.52, 0.00, 0.69, 0.21 |
| TextBox | Text117 |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.65, 0.00, 0.84, 0.21 |
| TextBox | SOWING_ORDER |  | SowOrder |  |  | 0.02, 0.00, 0.46, 0.21 |
| TextBox | SOWING_GROUP |  | =[Sowgroup] & IIf([Sowgroup]="None"," - No Sowing Group Assigned",IIf(Not IsNull([SowGroup_Description])," - " & [SowGroup_Description],"")) |  |  | 0.54, 0.00, 4.04, 0.21 |
| TextBox | Text141 |  | =Sum([Total_Containers]) |  |  | 7.31, 0.00, 0.69, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text109 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.54, 0.11, 1.06, 0.20 |
| Label | Label112 | ----------- |  |  |  | 5.05, 0.00, 0.56, 0.13 |
| TextBox | Text113 |  | =Sum([Agreement_Est_Containers]) |  |  | 6.53, 0.10, 0.69, 0.20 |
| Label | Label114 | ----------- |  |  |  | 6.66, 0.00, 0.56, 0.13 |
| TextBox | Text119 |  | =Sum([ASC]) |  |  | 5.66, 0.11, 0.84, 0.20 |
| Label | Label120 | ----------- |  |  |  | 5.94, 0.01, 0.56, 0.13 |
| TextBox | Text142 |  | =Sum([Total_Containers]) |  |  | 7.32, 0.10, 0.69, 0.20 |
| Label | Label143 | ----------- |  |  |  | 7.45, 0.00, 0.56, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.01, 3.50, 0.18 |
| Line | Line122 |  |  |  |  | 0.00, 0.00, 7.32, 0.00 |
| Line | Line144 |  |  |  |  | 0.00, 0.00, 7.98, 0.00 |
