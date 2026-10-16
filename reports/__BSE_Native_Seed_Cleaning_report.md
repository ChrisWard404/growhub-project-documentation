# Report: **BSE_Native_Seed_Cleaning_report

**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, [**BSE_Native_Seed_Cleaning].RECVD, [**BSE_Native_Seed_Cleaning].Clean_Lbs, [**BSE_Native_Seed_Cleaning].JHS_Purity, [**BSE_Native_Seed_Cleaning].[PURITY%], [**BSE_Native_Seed_Cleaning].FY, [**BSE_Native_Seed_Cleaning].FY, [nmis_agreement_lots].[id] & "-" & [fy] AS ID_Crop_Year FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN ([**BSE_Native_Seed_Cleaning] INNER JOIN NMIS_AGREEMENT_LOTS ON [**BSE_Native_Seed_Cleaning].JHSN_ID = NMIS_AGREEMENT_LOTS.ID) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL WHERE ((([**BSE_Native_Seed_Cleaning].FY) Like Right$([Forms]![Native_Seed_Harvest_Summary]![Year],2) & "*")) ORDER BY NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_LOTS.SOURCE_CODE;
```

**Grouping/sorting:** `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID_Crop_Year`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SOURCE_LOTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Native Seed Harvest Summary |  |  |  | 3.07, 0.55, 2.45, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.67, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.67, 0.00, 3.25, 0.16 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 1.04, 1.42, 3.17, 0.24 |
| Label | RECVD_Label | Rec'd BSE |  |  |  | 5.11, 1.21, 0.42, 0.45 |
| Label | Clean_Lbs_Label | Clean Lbs |  |  |  | 5.95, 1.21, 0.40, 0.45 |
| Label | PURITY%_Label | BSE Purity % |  |  |  | 6.50, 1.21, 0.53, 0.45 |
| Label | JHS_Purity_Label | Est Harvest Purity % |  |  |  | 7.09, 1.19, 0.82, 0.47 |
| Label | JHSN_ID_Label | Lot ID |  |  |  | 0.04, 1.42, 0.39, 0.24 |
| TextBox | Text15 |  | ="Bend Seed Extractory Cleaning Crop Year " & IIf([Forms]![Native_Seed_Harvest_Summary]![Year]="*","All Years",[Forms]![Native_Seed_Harvest_Summary]![Year]) |  |  | 1.83, 0.83, 4.88, 0.29 |
| Line | Line17 |  |  |  |  | 0.00, 1.67, 7.92, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Scientific_Name |  | [Scientific_Name] |  |  | 0.99, 0.08, 3.00, 0.26 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.00, 0.08, 0.83, 0.26 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 4.15, 0.08, 3.06, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Crop_Year |  |  | 0.00, 0.00, 0.00, 0.22 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 1.04, 0.00, 3.58, 0.22 |
| TextBox | RECVD |  | RECVD |  |  | 4.71, 0.00, 0.88, 0.22 |
| TextBox | Clean_Lbs |  | Clean_Lbs |  |  | 5.70, 0.00, 0.72, 0.22 |
| TextBox | JHS_Purity |  | JHS_Purity |  |  | 7.26, 0.00, 0.38, 0.22 |
| TextBox | PURITY% |  | PURITY% |  |  | 6.48, 0.00, 0.40, 0.22 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line19 |  |  |  |  | 0.00, 0.00, 7.92, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.04, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.45, 0.04, 3.50, 0.18 |
| Line | Line18 |  |  |  |  | 0.01, 0.00, 7.96, 0.00 |
