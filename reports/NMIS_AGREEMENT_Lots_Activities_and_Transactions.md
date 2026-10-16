# Report: NMIS_AGREEMENT_Lots_Activities_and_Transactions

**Grouping/sorting:** `ID`, `ACTIVITY_DATE`, `NMIS_ID_ACTIVITIES.CN`, `NMIS_ID_ACTIVITIES.CN`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.Agreement_Lot_Associate_Subform`, `Report.NMIS_TRANSACTIONS subreport`, `Report.Current_Inventory_By_Unit`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOT_SELECT`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label155 | Nursery Management Information System |  |  |  | 2.43, 0.16, 2.81, 0.19 |
| Label | Label156 | Agreement Lot Activities and Transactions |  |  |  | 2.12, 0.55, 3.42, 0.23 |
| TextBox | Text157 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.21, 0.35, 3.24, 0.20 |
| Label | Label158 | USDA Forest Service |  |  |  | 2.21, 0.00, 3.24, 0.16 |
| TextBox | Text160 |  | =[ID] & IIf(Not IsNull([ID_ORIGINAL])," (" & [ID_Original] & ")","") |  |  | 0.81, 0.80, 3.35, 0.32 |
| Label | Label159 | Agreement Lot ID |  |  |  | 0.02, 0.82, 0.75, 0.30 |
| Line | Line147 |  |  |  |  | 0.02, 1.18, 7.84, 0.01 |
| Subform | Child161 |  | Report.Agreement_Lot_Associate_Subform (master: Agreement_lot_CN → child: AGREEMENT_LOT_CN) |  |  | 3.96, 0.84, 3.97, 0.28 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_PRODUCTS.UNIT_CODE |  | NMIS_PRODUCTS.UNIT_CODE |  |  | 3.48, 0.48, 0.33, 0.20 |
| Label | Label166 | Source: |  |  |  | 0.09, 0.24, 0.58, 0.17 |
| Line | Line165 |  |  |  |  | 0.01, 0.45, 7.92, 0.00 |
| Label | Label164 | Begin FY: |  |  |  | 0.12, 0.50, 0.67, 0.17 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL);  |  | 0.09, 0.00, 4.00, 0.20 |
| Line | Line146 |  |  |  |  | 0.01, 0.93, 7.92, 0.00 |
| ComboBox | Combo145 |  | Agreement_lot_CN | SELECT [Agreement_Lot_What_It_Is Query].CN, [Agreement_Lot_What_It_Is Query].What_It_Is_Longest FROM [Agreement_Lot_What_It_Is Query];  |  | 0.17, 0.70, 7.76, 0.20 |
| ComboBox | Combo144 |  | PREVIOUS_AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN, "From previous Agreement Lot: " & NMIS_AGREEMENT_LOTS_1.ID AS Previous_Agreement_Lot_ID FROM NMIS_AGREEMENT_LOTS AS NMIS_AGREEMENT_LOTS_1 INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENT_LOTS_1.CN=NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN;  |  | 4.13, 0.00, 3.79, 0.20 |
| ComboBox | Combo141 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, "(" & [ID] & ") " & [SOURCE_CODE] AS Source_Lot FROM NMIS_SOURCE_LOTS;  |  | 0.71, 0.22, 7.17, 0.20 |
| Label | Label138 | Est. Grow Containers: |  |  |  | 4.04, 0.50, 1.49, 0.17 |
| Label | Label137 | Request: |  |  |  | 2.21, 0.50, 0.65, 0.17 |
| Label | Label136 | End FY: |  |  |  | 1.25, 0.50, 0.55, 0.17 |
| TextBox | Text135 |  | END_FY |  |  | 1.81, 0.48, 0.38, 0.20 |
| TextBox | Text134 |  | BEGIN_FY |  |  | 0.79, 0.48, 0.43, 0.20 |
| TextBox | Text133 |  | EST_CONTAINERS_REQUIRED |  |  | 5.59, 0.48, 0.71, 0.20 |
| TextBox | Text132 |  | TOTAL_REQUEST |  |  | 2.89, 0.48, 0.57, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.12, 0.19, 0.59, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 0.74, 0.19, 2.20, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 2.96, 0.19, 0.71, 0.19 |
| TextBox | NOTE |  | TKT_NO_NOTE |  |  | 0.74, 0.40, 7.14, 0.01 |
| TextBox | UNIT_CODE |  | NMIS_ID_ACTIVITIES.UNIT_CODE |  |  | 3.66, 0.19, 0.95, 0.19 |
| TextBox | NMIS_ID_ACTIVITIES.CN |  | NMIS_ID_ACTIVITIES.CN |  |  | 1.83, 0.21, 0.00, 0.00 |
| ComboBox | Order_No |  | ORDER_CN | SELECT NMIS_ID_ACTIVITIES.ORDER_CN, IIf(Not IsNull([NMIS_ID_ACTIVITIES].[ORDER_CN]),Left$([ORDER_CN],Len([ORDER_CN])-7) & " / " & [CLIENT_ASSOCIATE],"") AS [Order] FROM (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ORDERS ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE) INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ORDERS.CN = NMIS_ID_ACTIVITIES.ORDER_CN; |  | 4.64, 0.21, 1.11, 0.00 |
| Line | Line162 |  |  |  |  | 0.33, 0.43, 7.58, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 6.86, 0.19, 0.45, 0.19 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 7.38, 0.19, 0.50, 0.19 |
| Label | BEGIN_FY_Label | Date |  |  |  | 0.08, 0.01, 0.31, 0.17 |
| Label | Label129 | Activity |  |  |  | 0.96, 0.01, 0.55, 0.17 |
| Label | Label130 | Activity Units |  |  |  | 2.95, 0.01, 1.17, 0.17 |
| Label | Label131 | Order ID/Associate |  |  |  | 4.55, 0.01, 1.16, 0.18 |
| Label | Label171 | C Item |  |  |  | 6.80, 0.01, 0.44, 0.18 |
| Label | Label172 | Hours |  |  |  | 7.46, 0.01, 0.42, 0.18 |
| Line | Line112 |  |  |  |  | 0.00, 0.00, 7.92, 0.00 |
| TextBox | TKT_NO | Ticket | TKT_NO |  |  | 6.02, 0.22, 0.56, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_TRANSACTIONS subreport |  | Report.NMIS_TRANSACTIONS subreport (master: NMIS_ID_ACTIVITIES.CN → child: ID_ACTIVITY_CN) |  |  | 0.42, 0.04, 7.44, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Current_Inventory_By_Unit |  | Report.Current_Inventory_By_Unit (master: Agreement_lot_CN → child: AGREEMENT_LOT_CN) |  |  | 0.69, 0.08, 6.45, 0.03 |
| Line | Line119 |  |  |  |  | 0.01, 0.01, 7.92, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.17, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.01, 0.04, 7.84, 0.00 |
| TextBox | Text168 |  | =[ID] |  |  | 4.33, 0.06, 3.52, 0.32 |
