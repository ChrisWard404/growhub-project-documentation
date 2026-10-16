# Report: Inventory_of_All_summary

**Caption:** NMIS_AGREEMENT_LOT_Activities_and Transactions  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_AGREEMENT_LOTS.NOTE, NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS_PRESCRIBED, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.NOTE, NMIS_AGREEMENT_LOTS.EST_CONTAINERS_REQUIRED, NMIS_AGREEMENT_LOTS.CN, IIf(IsNull(NMIS_ID_ACTIVITIES.ORDER_CN),"",Left$(NMIS_ID_ACTIVITIES.ORDER_CN,Len(NMIS_ID_ACTIVITIES.ORDER_CN)-7)) AS Order_No, NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_AGREEMENT_LOTS.CN AS Agreement_lot_CN FROM NMIS_AGREEMENT_LOTS LEFT JOIN NMIS_ID_ACTIVITIES ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN WHERE (((NMIS_AGREEMENT_LOTS.CN)=Forms!NMIS_AGREEMENT_LOT_SELECT!AGREEMENT_LOT_ID_SELECT));
```

**Grouping/sorting:** `ID`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Report.NMIS_TRANSACTIONS subreport`, `Report.Current_Inventory_By_Unit`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.39, 0.16, 2.81, 0.19 |
| Label | Label33 | Agreement Lot Activities and Transactions |  |  |  | 2.09, 0.55, 3.42, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.17, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.17, 0.00, 3.24, 0.16 |
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | ID |  |  | 0.17, 1.43, 0.62, 0.21 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 5.55, 1.43, 0.57, 0.21 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 6.15, 1.43, 0.57, 0.21 |
| TextBox | Text84 |  | ID_ORIGINAL |  |  | 0.83, 1.43, 0.71, 0.21 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 4.60, 1.43, 0.43, 0.21 |
| TextBox | END_FY |  | END_FY |  |  | 5.12, 1.43, 0.38, 0.21 |
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 4.59, 1.01, 0.42, 0.32 |
| Label | END_FY_Label | End FY |  |  |  | 5.12, 1.01, 0.38, 0.32 |
| Label | TOTAL_REQUEST_Label | Total Request (M) |  |  |  | 5.58, 0.85, 0.62, 0.47 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est. Bed Ft |  |  |  | 6.29, 1.00, 0.50, 0.33 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 1.61, 1.15, 2.71, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.17, 1.03, 0.75, 0.30 |
| Line | Line31 |  |  |  |  | 0.08, 1.38, 7.87, 0.00 |
| Line | Line105 |  |  |  |  | 0.08, 1.89, 7.86, 0.00 |
| ComboBox | SOURCE_CODE |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, "(" & [ID] & ") " & [SOURCE_CODE] AS Source_Lot FROM NMIS_SOURCE_LOTS;  |  | 1.58, 1.44, 2.98, 0.20 |
| TextBox | NMIS_AGREEMENT_LOTS.NOTE |  | NMIS_AGREEMENT_LOTS.NOTE |  |  | 0.21, 1.67, 7.65, 0.20 |
| Label | Label115 | From Previous Agreement Lot |  |  |  | 6.83, 1.00, 1.08, 0.33 |
| ComboBox | PREVIOUS_AGREEMENT_LOT_CN |  | PREVIOUS_AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;  |  | 7.08, 1.43, 0.66, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.21, 0.00, 0.59, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 0.82, 0.00, 2.20, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 3.04, 0.00, 0.00, 0.19 |
| TextBox | NOTE |  | NMIS_ID_ACTIVITIES.NOTE |  |  | 0.38, 0.19, 6.83, 0.20 |
| Subform | NMIS_TRANSACTIONS subreport |  | Report.NMIS_TRANSACTIONS subreport (master: NMIS_ID_ACTIVITIES.CN → child: ID_ACTIVITY_CN) |  |  | 0.38, 0.40, 7.44, 0.02 |
| TextBox | NMIS_ID_ACTIVITIES.CN |  | NMIS_ID_ACTIVITIES.CN |  |  | 6.46, 0.17, 0.00, 0.00 |
| Line | Line112 |  |  |  |  | 0.21, 0.46, 7.62, 0.00 |
| TextBox | Order_No |  | Order_No |  |  | 5.58, 0.00, 0.00, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.06, 0.00, 0.95, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.98, 0.17, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.04, 0.04, 7.92, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Current_Inventory_By_Unit |  | Report.Current_Inventory_By_Unit (master: Agreement_lot_CN → child: AGREEMENT_LOT_CN) |  |  | 0.79, 0.12, 6.45, 0.05 |
| Line | Line119 |  |  |  |  | 0.08, 0.04, 7.62, 0.00 |
