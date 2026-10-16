# Report: **NMIS_Source_Non-WCF_Storage_Billing_Report

**Caption:** Non-WCF Storage Billing Report  
**Grouping/sorting:** `ASSOCIATE`, `PLNTMSTR_SYMBOL`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SPECIES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.42, 0.16, 2.81, 0.19 |
| Label | Label33 | CLIENT Non-WCF Storage Billing REPORT |  |  |  | 2.21, 0.56, 3.25, 0.18 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.21, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.21, 0.00, 3.24, 0.16 |
| Label | ID_Label | Code |  |  |  | 0.22, 1.23, 0.35, 0.17 |
| Label | SOURCE_CODE_Label | Common Name |  |  |  | 1.27, 1.23, 0.95, 0.17 |
| Label | Sum Of ACTIVITY_UNITS_Label | Units |  |  |  | 3.33, 1.23, 0.35, 0.17 |
| Line | Line47 |  |  |  |  | 0.13, 1.03, 7.23, 0.00 |
| Line | Line21 |  |  |  |  | 0.13, 1.45, 7.23, 0.00 |
| ComboBox | Text43 | Client: | ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 3.48, 0.75, 1.72, 0.19 |
| Label | Label35 | Unit Charge |  |  |  | 4.17, 1.23, 0.74, 0.17 |
| Label | Label36 | Charge |  |  |  | 5.34, 1.25, 0.47, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | PLNTMSTR_SYMBOL |  |  | 0.10, 0.00, 0.80, 0.19 |
| TextBox | Sum Of ACTIVITY_UNITS |  | SumOfSum Of ACTIVITY_UNITS |  |  | 3.02, 0.00, 0.69, 0.19 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES;  |  | 0.96, 0.01, 2.00, 0.19 |
| TextBox | Charge_per_Unit |  | Charge_per_Unit |  |  | 3.81, 0.00, 0.00, 0.19 |
| TextBox | Charge |  | =[SumOfSum Of ACTIVITY_UNITS]*[Charge_per_Unit] |  |  | 5.10, 0.00, 0.71, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]*[Charge_per_Unit]) |  |  | 5.11, 0.07, 0.71, 0.19 |
| TextBox | Text39 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 3.02, 0.07, 0.69, 0.19 |
| Label | Label40 | Totals |  |  |  | 0.27, 0.08, 0.41, 0.17 |
| Line | Line41 |  |  |  |  | 3.00, 0.04, 0.71, 0.00 |
| Line | Line42 |  |  |  |  | 5.11, 0.04, 0.71, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.89, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.13, 0.14, 7.23, 0.00 |
