# Report: NMIS_SOURCE_ID_Index_Report

**Caption:** NMIS_SOURCE_Inventory  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, [Seed_Balance Query].[Sum Of ACTIVITY_UNITS] FROM NMIS_SPECIES INNER JOIN (([Seed_Balance Query] INNER JOIN NMIS_SOURCE_LOTS ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL WHERE ((([Seed_Balance Query].[Sum Of ACTIVITY_UNITS])>0.0001) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Species Code (Blank for all)] & "*") AND ((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Like Client (blank for all)] & "*") AND ((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_SPECIES.DIVERSE)=IIf([Traditional (Y or N) ]="N",-1,0))) ORDER BY NMIS_SOURCE_LOTS.ID;
```

**Grouping/sorting:** `ID`  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.65, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Lot ID Index |  |  |  | 2.82, 0.56, 2.47, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.44, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.44, 0.00, 3.24, 0.16 |
| Label | ID_Label |  Lot ID |  |  |  | 0.00, 0.92, 0.47, 0.18 |
| Line | Line41 |  |  |  |  | 0.00, 1.08, 7.72, 0.00 |
| Label | Label43 |  Lot ID |  |  |  | 4.03, 0.92, 0.47, 0.18 |
| Label | Label46 |  Lot ID |  |  |  | 1.00, 0.92, 0.47, 0.18 |
| Label | Label47 |  Lot ID |  |  |  | 2.04, 0.92, 0.47, 0.18 |
| Label | Label48 |  Lot ID |  |  |  | 3.04, 0.92, 0.47, 0.18 |
| Label | Label49 |  Lot ID |  |  |  | 4.92, 0.92, 0.47, 0.18 |
| Label | Label50 |  Lot ID |  |  |  | 5.97, 0.92, 0.47, 0.18 |
| Label | Label51 |  Lot ID |  |  |  | 6.96, 0.92, 0.47, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.00, 0.01, 0.95, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line52 |  |  |  |  | 0.00, 0.00, 0.96, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.26, 0.17, 3.50, 0.18 |
| Line | Line42 |  |  |  |  | 0.00, 0.00, 7.71, 0.00 |
