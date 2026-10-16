# Report: NMIS_SOURCE_Quarterly_Report_by_species_Checklist

**Caption:** NMIS_SOURCE_Inventory  
**Record source:**

```sql
Seed_QR_End_Balance_By_Forest Query
```

**Grouping/sorting:** `Reg`, `For`, `Diversity`, `PLNTMSTR_SYMBOL`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_SPECIES`  
**Opened from (VBA):** `Form_Seed_Quarterly_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.57, 0.16, 2.81, 0.19 |
| Label | Label33 | Souce Quarterly Report Checklist |  |  |  | 2.77, 0.56, 2.41, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.35, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.35, 0.00, 3.24, 0.16 |
| Label | SOURCE_CODE_Label | Species  |  |  |  | 0.26, 0.99, 0.86, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 6.08, 0.98, 0.42, 0.17 |
| Line | Line21 |  |  |  |  | 0.00, 1.20, 7.97, 0.01 |
| ComboBox | Text43 |  | =[Reg] & "0000" | SELECT NMIS_ASSOCIATES.ASSOCIATE, nz("(" & [associate] & ") " & [ASSOCIATE_NAME],"UNKNOWN " & [reg]) AS Name FROM NMIS_ASSOCIATES; |  | 2.33, 0.75, 3.30, 0.19 |
| TextBox | Text46 |  | ="Balance as of " & [Forms]![Seed_Quarterly_Report]![End_Date] |  |  | 6.62, 0.83, 1.12, 0.32 |
| TextBox | For |  | For |  |  | 6.38, 0.21, 0.79, 0.18 |
| TextBox | Text51 | Like Client: | =[Forms]![Seed_Quarterly_Report]![Like_Client] |  |  | 0.97, 0.31, 0.59, 0.20 |
| ComboBox | Text93 |  | =[Forms]![Seed_Quarterly_Report]![Category_Code] | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 0.14, 0.54, 2.16, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo42 |  | =[For] & "00" | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [associate] & ") " & [ASSOCIATE_NAME] AS Name FROM NMIS_ASSOCIATES; |  | 0.21, 0.03, 4.87, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Diversity |  | Diversity |  |  | 0.29, 0.03, 2.79, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum Of ACTIVITY_UNITS |  | END_BALANCE |  |  | 6.76, 0.02, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 6.29, 0.02, 0.42, 0.00 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, [Plntmstr_symbol] & "  " & [VERNACULAR] AS name FROM NMIS_SPECIES; |  | 0.29, 0.00, 2.86, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | ="Total For: " & [Diversity] |  |  | 0.19, 0.00, 3.38, 0.19 |
| TextBox | Text49 |  | =Sum([END_BALANCE]) |  |  | 6.65, 0.00, 0.81, 0.18 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label44 | Total For: |  |  |  | 0.18, 0.03, 0.65, 0.19 |
| ComboBox | Combo45 |  | =[For] & "00" | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [associate] & ") " & [ASSOCIATE_NAME] AS Name FROM NMIS_ASSOCIATES; |  | 0.85, 0.04, 4.45, 0.18 |
| TextBox | Text50 |  | =Sum([END_BALANCE]) |  |  | 6.65, 0.04, 0.81, 0.18 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label35 | Total For: |  |  |  | 0.17, 0.05, 0.65, 0.19 |
| TextBox | Text36 |  | =Sum([END_BALANCE]) |  |  | 6.65, 0.06, 0.81, 0.18 |
| ComboBox | Combo37 |  | =[For] & "0000" | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [associate] & ") " & [ASSOCIATE_NAME] AS Name FROM NMIS_ASSOCIATES; |  | 0.84, 0.06, 4.45, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.09, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.33, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.05, 0.15, 7.92, 0.00 |
