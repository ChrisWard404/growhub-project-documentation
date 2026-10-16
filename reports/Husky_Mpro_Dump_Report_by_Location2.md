# Report: Husky_Mpro_Dump_Report_by_Location2

**Caption:** Husk Mpro Dump Report By Location  
**Grouping/sorting:** `LOCATION_TYPE`, `Locmod`, `SOW_DIRECTION_SORT`, `Riser_Begin`, `Riser_End`, `ID`  
**Opened from (VBA):** `Form_NMIS_ID_LOCATIONS_FORM_Husky`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| Label | Label33 | Mapping Entry Checklist by Location |  |  |  | 2.89, 0.56, 2.30, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.23, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.37, 0.00, 3.24, 0.16 |
| TextBox | Text12 |  | =Format(Date(),"Short Date") |  |  | 3.02, 0.78, 2.05, 0.23 |
| Line | Line29 |  |  |  |  | 0.00, 1.08, 7.98, 0.00 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box37 |  |  |  |  | 0.00, 0.01, 1.99, 0.17 |
| TextBox | INDEX_MAX |  | INDEX_MAX |  |  | 1.07, 0.01, 0.30, 0.15 |
| Label | Label38 | (Max: |  |  |  | 0.75, 0.01, 0.31, 0.15 |
| Label | Label39 | ) |  |  |  | 1.39, 0.01, 0.07, 0.15 |
| TextBox | Location |  | Locmod |  |  | 0.01, 0.01, 0.62, 0.00 |
| TextBox | Text28 |  | =IIf(Sum([Ft_In_Lot])>[Index_Max],"**","") & Sum([Ft_In_Lot]) |  |  | 1.61, 0.01, 0.38, 0.00 |
| Line | Line30 |  |  |  |  | 0.03, 0.00, 1.96, 0.00 |
| Line | Line31 |  |  |  |  | 0.01, 0.19, 1.98, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Sublot |  |  | 0.00, 0.00, 0.69, 0.00 |
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 1.67, 0.00, 0.32, 0.00 |
| TextBox | Riser_End |  | Riser_End |  |  | 1.38, 0.00, 0.29, 0.00 |
| TextBox | Riser_Begin |  | Riser_Begin |  |  | 1.07, 0.00, 0.30, 0.00 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.69, 0.00, 0.38, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.97, 0.02, 0.00, 0.00 |
