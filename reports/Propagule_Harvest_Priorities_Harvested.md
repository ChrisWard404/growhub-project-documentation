# Report: Propagule_Harvest_Priorities_Harvested

**Caption:** Propagule Harvest Accomplishment Report  
**Record source:**

```sql
SELECT NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_PROPAGULE_HARVEST_PRIORITIES.NOTE, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_DATE, NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN, NMIS_SPECIES.SPECIES_GROUP FROM NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_PROPAGULE_HARVEST_PRIORITIES INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) WHERE (((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_DATE) Is Not Null) AND ((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY)=[Forms]![Propagule_Harvest_Priorties]![Like_Harvest_FY]));
```

**Grouping/sorting:** `SPECIES_GROUP`, `HARVEST_PRIORITY`, `ID`  
**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`, `NMIS_AGREEMENT_LOTS`, `NMIS_PROPAGULE_HARVEST_PRIORITIES`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.Propagule_Harvest_Priorities_Subform`  
**Opened from (VBA):** `Form_Propagule_Harvest_Priorties`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.53, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.67, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.54, 0.17, 2.78, 0.20 |
| Label | Label52 | Lot ID |  |  |  | 0.74, 1.21, 0.68, 0.23 |
| Label | Label53 | Harvest Date |  |  |  | 2.17, 1.21, 1.33, 0.23 |
| Label | Label57 | Propagule Harvest Accomplishment |  |  |  | 2.20, 0.58, 3.47, 0.23 |
| TextBox | Text68 |  | ="As of " & Date() |  |  | 2.54, 0.81, 2.83, 0.20 |
| Line | Line56 |  |  |  |  | 0.02, 1.46, 7.66, 0.00 |
| Label | Label89 | Bed Feet |  |  |  | 6.43, 1.21, 0.68, 0.23 |
| Label | Label90 | Acres |  |  |  | 7.21, 1.21, 0.46, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_GROUP |  | SPECIES_GROUP |  |  | 0.21, 0.00, 4.02, 0.29 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Propagule_Harvest_Priorities_Subform |  | Report.Propagule_Harvest_Priorities_Subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 1.55, 0.28, 6.12, 0.17 |
| TextBox | Lot ID |  | ID |  |  | 0.74, 0.00, 1.37, 0.26 |
| TextBox | HARVEST_DATE |  | HARVEST_DATE |  |  | 2.17, 0.04, 4.25, 0.22 |
| Line | Line72 |  |  |  |  | 1.54, 0.25, 6.12, 0.00 |
| TextBox | Lot_Bed_Feet |  | =[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units] |  |  | 6.45, 0.03, 0.61, 0.23 |
| TextBox | Lot_Acres |  | =[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N] |  |  | 7.07, 0.03, 0.61, 0.23 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line71 |  |  |  |  | 0.00, 0.03, 7.67, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.69, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.02, 7.72, 0.00 |
