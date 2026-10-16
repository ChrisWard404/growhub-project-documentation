# Report: NMIS_AGREEMENT_LOT_Transaction_Balance_by_order

**Grouping/sorting:** `AGREEMENT_LOT_ID_AND_SOURCE`, `Order`, `ACTIVITY_DATE`, `ACTIVITY_CODE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.Agreement_Lot_Associate_Subform`, `Report.Current_Inventory_By_Unit`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.63, 0.16, 2.81, 0.19 |
| Label | Label33 | Agreement Lot Activity Transaction Balance by Order |  |  |  | 1.92, 0.55, 4.24, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.42, 0.00, 3.24, 0.16 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text132 |  | TOTAL_REQUEST |  |  | 2.88, 0.92, 0.57, 0.20 |
| TextBox | Text133 |  | EST_CONTAINERS_REQUIRED |  |  | 5.58, 0.92, 0.71, 0.20 |
| TextBox | Text134 |  | BEGIN_FY |  |  | 0.78, 0.92, 0.43, 0.20 |
| TextBox | Text135 |  | END_FY |  |  | 1.80, 0.92, 0.38, 0.20 |
| Label | Label136 | End FY: |  |  |  | 1.24, 0.93, 0.55, 0.17 |
| Label | Label137 | Request: |  |  |  | 2.20, 0.93, 0.65, 0.17 |
| Label | Label138 | Est. Grow Containers: |  |  |  | 4.03, 0.93, 1.49, 0.17 |
| ComboBox | Combo141 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, "(" & [ID] & ") " & [SOURCE_CODE] AS Source_Lot FROM NMIS_SOURCE_LOTS;  |  | 0.70, 0.65, 7.17, 0.20 |
| ComboBox | Combo144 |  | PREVIOUS_AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN, "From previous Agreement Lot: " & NMIS_AGREEMENT_LOTS_1.ID AS Previous_Agreement_Lot_ID FROM NMIS_AGREEMENT_LOTS AS NMIS_AGREEMENT_LOTS_1 INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENT_LOTS_1.CN=NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN;  |  | 4.12, 0.43, 3.79, 0.20 |
| ComboBox | Combo145 |  | Agreement_lot_CN | SELECT [Agreement_Lot_What_It_Is Query].CN, [Agreement_Lot_What_It_Is Query].What_It_Is_Longest FROM [Agreement_Lot_What_It_Is Query];  |  | 0.16, 1.13, 7.76, 0.20 |
| Line | Line146 |  |  |  |  | 0.00, 1.37, 7.92, 0.00 |
| Line | Line147 |  |  |  |  | 0.01, 0.40, 7.84, 0.00 |
| Label | Label159 | Agreement Lot ID |  |  |  | 0.02, 0.02, 0.75, 0.30 |
| TextBox | Text160 |  | =[ID] & IIf(Not IsNull([ID_ORIGINAL])," (" & [ID_Original] & ")","") |  |  | 0.81, 0.00, 3.52, 0.32 |
| Subform | Child161 |  | Report.Agreement_Lot_Associate_Subform (master: Agreement_lot_CN → child: AGREEMENT_LOT_CN) |  |  | 3.88, 0.04, 4.04, 0.28 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL);  |  | 0.07, 0.43, 4.00, 0.20 |
| Label | Label164 | Begin FY: |  |  |  | 0.11, 0.93, 0.67, 0.17 |
| Line | Line165 |  |  |  |  | 0.00, 0.88, 7.92, 0.00 |
| Label | Label166 | Source: |  |  |  | 0.07, 0.68, 0.58, 0.17 |
| TextBox | NMIS_PRODUCTS.UNIT_CODE |  | NMIS_PRODUCTS.UNIT_CODE |  |  | 3.47, 0.92, 0.33, 0.20 |
| Label | Label28 | Date |  |  |  | 0.00, 1.40, 0.68, 0.19 |
| Label | Label29 | Gross Adj |  |  |  | 6.47, 1.40, 0.88, 0.19 |
| Label | Label30 | Net Adj |  |  |  | 7.34, 1.40, 0.59, 0.18 |
| Label | Label34 | Activity |  |  |  | 0.77, 1.40, 2.60, 0.19 |
| Label | Label52 | Order Amt |  |  |  | 5.79, 1.40, 0.72, 0.20 |
| Line | Line60 |  |  |  |  | 0.01, 1.59, 7.92, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.00, 0.04, 0.62, 0.20 |
| TextBox | GROSS_ADJUST |  | Gross_Adj |  |  | 6.50, 0.04, 0.75, 0.20 |
| TextBox | NET_ADJUST |  | Net_Adj |  |  | 7.31, 0.04, 0.62, 0.20 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, [Activity_Name] & " (" & [Activity_Code] & ")" AS Act_Name_N_Code FROM NMIS_ACTIVITY_CODES;  |  | 0.66, 0.04, 2.71, 0.20 |
| TextBox | Order |  | Order |  |  | 3.41, 0.04, 1.39, 0.20 |
| TextBox | Act_Amt |  | Act_Amt_N |  |  | 5.81, 0.04, 0.62, 0.20 |
| Line | Line55 |  |  |  |  | 0.04, 0.00, 7.79, 0.00 |
| TextBox | Text60 |  | tkt |  |  | 4.83, 0.04, 0.95, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text35 |  | =Sum([Gross_Adj]) |  |  | 6.51, 0.07, 0.75, 0.20 |
| TextBox | Text36 |  | =Sum([Net_Adj]) |  |  | 7.31, 0.07, 0.62, 0.20 |
| Label | Label44 | Balance |  |  |  | 4.34, 0.09, 0.99, 0.17 |
| Line | Line45 |  |  |  |  | 6.49, 0.04, 0.78, 0.00 |
| Line | Line46 |  |  |  |  | 7.31, 0.04, 0.62, 0.00 |
| Line | Line47 |  |  |  |  | 0.01, 0.30, 7.91, 0.00 |
| TextBox | Text53 |  | =Sum([Act_Amt_N]) |  |  | 5.67, 0.07, 0.75, 0.20 |
| Line | Line54 |  |  |  |  | 5.66, 0.04, 0.78, 0.00 |
| Subform | Current_Inventory_By_Unit |  | Report.Current_Inventory_By_Unit (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.71, 0.38, 6.42, 1.01 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.01, 0.17, 3.50, 0.18 |
| TextBox | Text59 |  | [ID] |  |  | 5.08, 0.04, 2.83, 0.32 |
