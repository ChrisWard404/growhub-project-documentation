# Report: Field_Form_Propagule_Condensed_by_species

**Caption:** Field Form  
**Grouping/sorting:** `PLNTMSTR_SYMBOL`, `ID`, `MinOfMinOfLOCATION`, `SOURCE`, `SUBLOT_NO`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Field Form for Plants Grown For Propagule Production by Species and Lot ID |  |  |  | 0.47, 0.62, 6.89, 0.23 |
| Label | Label24 | Observation Dates ________________________ |  |  |  | 4.67, 0.92, 3.12, 0.21 |
| Label | Label25 | Observers________________________________ |  |  |  | 4.67, 1.12, 3.12, 0.21 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.23, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.37, 0.00, 3.24, 0.16 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Source_Location_Label | Source |  |  |  | 1.27, 0.17, 0.41, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 3.64, 0.00, 0.33, 0.38 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 4.93, 0.00, 0.41, 0.38 |
| Label | Bed_Start_Label | Field: |  |  |  | 4.37, 0.00, 0.30, 0.20 |
| Line | Line21 |  |  |  |  | 0.00, 0.39, 7.93, 0.00 |
| Label | Label26 | From..... .....To |  |  |  | 4.11, 0.18, 0.77, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.09, 0.17, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.00, 0.00, 7.94, 0.00 |
| Label | Label39 |     Acres |  |  |  | 5.43, 0.00, 0.35, 0.38 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text50 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [PLNTMSTR_SYMBOL] & " - " & [VERNACULAR] & "  (" & [Scientific_Name] & ")" AS name FROM NMIS_ASSOCIATES, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.00, 0.00, 5.08, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Source_Location |  | SOURCE |  |  | 0.65, 0.00, 2.89, 0.18 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 3.57, 0.00, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 4.94, 0.00, 0.41, 0.18 |
| TextBox | Bed_Start |  | MinOfMinOfLOCATION |  |  | 4.14, 0.00, 0.39, 0.18 |
| TextBox | Bed_End |  | MaxOfMaxOfLOCATION |  |  | 4.52, 0.00, 0.41, 0.18 |
| TextBox | CN |  | ID |  |  | 0.04, 0.00, 0.47, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.50, 0.00, 0.15, 0.18 |
| TextBox | Acres |  | =Round([SumOfTotal_Activity_Units]/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N],3) |  |  | 5.40, 0.00, 0.40, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.00, 0.02, 7.94, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line42 |  |  |  |  | 0.00, 0.21, 7.93, 0.00 |
| Line | Line43 |  |  |  |  | 0.00, 0.26, 7.93, 0.00 |
| TextBox | Text46 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 4.40, 0.01, 0.95, 0.18 |
| TextBox | Text41 |  | =Sum(([SumOfTotal_Activity_Units])/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N]) |  |  | 5.35, 0.01, 0.44, 0.18 |
| Label | Label51 | Totals |  |  |  | 0.17, 0.01, 0.39, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.19, 0.05, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.00, 0.03, 7.93, 0.00 |
