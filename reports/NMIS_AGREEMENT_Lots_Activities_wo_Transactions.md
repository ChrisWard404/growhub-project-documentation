# Report: NMIS_AGREEMENT_Lots_Activities_wo_Transactions

**Caption:** NMIS_AGREEMENT_LOT_Activities_wo Transactions  
**Record source:**

```sql
NMIS_AGREEMENT_Lots_Activities_and_Transactions_Query
```

**Grouping/sorting:** `ID`, `ACTIVITY_DATE`, `NMIS_ID_ACTIVITIES.CN`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.Agreement_Lot_Associate_Subform`, `Report.Current_Inventory_By_Unit`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOT_SELECT`  

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text132 |  | TOTAL_REQUEST |  |  | 2.89, 1.77, 0.57, 0.20 |
| TextBox | Text133 |  | EST_CONTAINERS_REQUIRED |  |  | 5.59, 1.77, 0.71, 0.20 |
| TextBox | Text134 |  | BEGIN_FY |  |  | 0.79, 1.77, 0.43, 0.20 |
| TextBox | Text135 |  | END_FY |  |  | 1.81, 1.77, 0.38, 0.20 |
| Label | Label136 | End FY: |  |  |  | 1.25, 1.79, 0.55, 0.17 |
| Label | Label137 | Request: |  |  |  | 2.21, 1.79, 0.65, 0.17 |
| Label | Label138 | Est. Grow Containers: |  |  |  | 4.04, 1.79, 1.49, 0.17 |
| ComboBox | Combo141 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, "(" & [ID] & ") " & [SOURCE_CODE] AS Source_Lot FROM NMIS_SOURCE_LOTS;  |  | 0.71, 1.50, 7.17, 0.20 |
| ComboBox | Combo144 |  | PREVIOUS_AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN, "From previous Agreement Lot: " & NMIS_AGREEMENT_LOTS_1.ID AS Previous_Agreement_Lot_ID FROM NMIS_AGREEMENT_LOTS AS NMIS_AGREEMENT_LOTS_1 INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENT_LOTS_1.CN=NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN;  |  | 4.13, 1.29, 3.79, 0.20 |
| ComboBox | Combo145 |  | Agreement_lot_CN | SELECT [Agreement_Lot_What_It_Is Query].CN, [Agreement_Lot_What_It_Is Query].What_It_Is_Longest FROM [Agreement_Lot_What_It_Is Query];  |  | 0.17, 1.99, 7.76, 0.20 |
| Line | Line146 |  |  |  |  | 0.01, 2.22, 7.92, 0.00 |
| Line | Line147 |  |  |  |  | 0.03, 1.25, 7.84, 0.00 |
| Label | Label155 | Nursery Management Information System |  |  |  | 2.40, 0.16, 2.81, 0.19 |
| Label | Label156 | Agreement Lot Activities and Transactions |  |  |  | 2.10, 0.55, 3.42, 0.23 |
| TextBox | Text157 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.19, 0.35, 3.24, 0.20 |
| Label | Label158 | USDA Forest Service |  |  |  | 2.19, 0.00, 3.24, 0.16 |
| Label | Label159 | Agreement Lot ID |  |  |  | 0.03, 0.87, 0.75, 0.30 |
| TextBox | Text160 |  | =[ID] & IIf(Not IsNull([ID_ORIGINAL])," (" & [ID_Original] & ")","") |  |  | 0.82, 0.85, 3.52, 0.32 |
| Subform | Child161 |  | Report.Agreement_Lot_Associate_Subform (master: Agreement_lot_CN → child: AGREEMENT_LOT_CN) |  |  | 3.92, 0.90, 4.01, 0.28 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL);  |  | 0.09, 1.29, 4.00, 0.20 |
| Label | Label164 | Begin FY: |  |  |  | 0.12, 1.79, 0.67, 0.17 |
| Line | Line165 |  |  |  |  | 0.01, 1.74, 7.92, 0.00 |
| Label | Label166 | Source: |  |  |  | 0.09, 1.53, 0.58, 0.17 |
| TextBox | NMIS_PRODUCTS.UNIT_CODE |  | NMIS_PRODUCTS.UNIT_CODE |  |  | 3.48, 1.77, 0.33, 0.20 |
| Label | BEGIN_FY_Label | Date |  |  |  | 0.13, 2.26, 0.31, 0.17 |
| Label | Label129 | Activity |  |  |  | 1.01, 2.26, 0.55, 0.17 |
| Label | Label130 | Activity Units |  |  |  | 3.00, 2.28, 1.17, 0.17 |
| Label | Label131 | Order ID/Associate |  |  |  | 4.60, 2.28, 1.16, 0.18 |
| Label | Label171 | C Item |  |  |  | 6.90, 2.28, 0.44, 0.18 |
| Label | Label172 | Hours |  |  |  | 7.50, 2.28, 0.42, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.12, 0.00, 0.59, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 0.74, 0.00, 2.20, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 2.96, 0.00, 0.71, 0.19 |
| TextBox | NOTE |  | TKT_NO_NOTE |  |  | 0.74, 0.17, 7.14, 0.02 |
| TextBox | UNIT_CODE |  | NMIS_ID_ACTIVITIES.UNIT_CODE |  |  | 3.66, 0.00, 0.95, 0.19 |
| TextBox | NMIS_ID_ACTIVITIES.CN |  | NMIS_ID_ACTIVITIES.CN |  |  | 1.83, 0.01, 0.00, 0.21 |
| ComboBox | Order_No |  | ORDER_CN | SELECT NMIS_ID_ACTIVITIES.ORDER_CN, IIf(Not IsNull([NMIS_ID_ACTIVITIES].[ORDER_CN]),Left$([ORDER_CN],Len([ORDER_CN])-7) & " / " & [CLIENT_ASSOCIATE],"") AS [Order] FROM (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ORDERS ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE) INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ORDERS.CN = NMIS_ID_ACTIVITIES.ORDER_CN; |  | 4.64, 0.00, 1.11, 0.19 |
| Line | Line162 |  |  |  |  | 0.15, 0.21, 7.75, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 6.93, 0.00, 0.38, 0.19 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 7.32, 0.00, 0.53, 0.19 |

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
