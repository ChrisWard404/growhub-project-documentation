# Report: TOLIFT_Summary

**Grouping/sorting:** `CC`, `LOCATION_TYPE`, `Age_Class2`  
**Backend tables referenced:** `NMIS_LOCATION_TYPES`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.86, 0.16, 2.81, 0.19 |
| Label | Label110 | Harvest and Process Estimates |  |  |  | 3.00, 0.56, 2.53, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.65, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.65, 0.00, 3.24, 0.16 |
| Label | Label43 | Age Class |  |  |  | 0.19, 1.31, 2.21, 0.21 |
| Label | Label42 | Containers to Process |  |  |  | 2.44, 1.15, 0.94, 0.38 |
| Label | Label44 | Gross (M) |  |  |  | 4.54, 1.31, 0.95, 0.21 |
| Label | Label45 | Net(M) |  |  |  | 5.79, 1.31, 0.81, 0.21 |
| Label | Label46 | Number of Lots |  |  |  | 6.73, 1.15, 1.00, 0.40 |
| Line | Line47 |  |  |  |  | 0.19, 1.52, 7.54, 0.00 |
| TextBox | CATEGORY_CODE |  | CC |  |  | 2.12, 0.79, 4.38, 0.23 |
| Label | Label70 | Request (M) |  |  |  | 3.50, 1.31, 0.97, 0.21 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LOCATION_TYPE |  | LOCATION_TYPE | SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES; |  | 0.08, 0.03, 1.96, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class |  | Age_Class2 |  |  | 0.19, 0.04, 2.21, 0.19 |
| TextBox | Containers_to_Process |  | Containers_to_Process |  |  | 2.53, 0.04, 0.67, 0.21 |
| TextBox | SumOfGROSS_INV |  | GROSS_INV |  |  | 4.58, 0.04, 0.83, 0.21 |
| TextBox | SumOfNET_INV |  | NET_INV |  |  | 5.75, 0.04, 0.83, 0.21 |
| TextBox | CountOfCN |  | CountOfCN |  |  | 6.88, 0.04, 0.62, 0.21 |
| TextBox | Text71 |  | SumOfTOTAL_REQUEST |  |  | 3.55, 0.04, 0.83, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text62 |  | =Sum([Containers_to_Process]) |  |  | 2.53, 0.00, 0.67, 0.21 |
| TextBox | Text63 |  | =Sum([GROSS_INV]) |  |  | 4.58, 0.00, 0.83, 0.21 |
| TextBox | Text64 |  | =Sum([NET_INV]) |  |  | 5.75, 0.00, 0.83, 0.21 |
| TextBox | Text65 |  | =Sum([CountOfCN]) |  |  | 6.88, 0.00, 0.62, 0.21 |
| Line | Line66 |  |  |  |  | 2.53, 0.02, 0.67, 0.00 |
| Line | Line67 |  |  |  |  | 4.59, 0.02, 0.83, 0.00 |
| Line | Line68 |  |  |  |  | 5.76, 0.02, 0.83, 0.00 |
| Line | Line69 |  |  |  |  | 6.89, 0.02, 0.62, 0.00 |
| TextBox | Text72 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 3.55, 0.00, 0.83, 0.21 |
| Line | Line73 |  |  |  |  | 3.56, 0.02, 0.83, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | =Sum([Containers_to_Process]) |  |  | 2.54, 0.06, 0.67, 0.21 |
| TextBox | Text49 |  | =Sum([GROSS_INV]) |  |  | 4.59, 0.06, 0.83, 0.21 |
| TextBox | Text50 |  | =Sum([NET_INV]) |  |  | 5.76, 0.06, 0.83, 0.21 |
| TextBox | Text51 |  | =Sum([CountOfCN]) |  |  | 6.89, 0.06, 0.62, 0.21 |
| Line | Line52 |  |  |  |  | 2.54, 0.08, 0.67, 0.00 |
| Line | Line53 |  |  |  |  | 4.60, 0.08, 0.83, 0.00 |
| Line | Line54 |  |  |  |  | 5.77, 0.08, 0.83, 0.00 |
| Line | Line55 |  |  |  |  | 6.90, 0.08, 0.62, 0.00 |
| Label | Label56 | Totals |  |  |  | 1.67, 0.06, 0.79, 0.21 |
| TextBox | Text74 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 3.56, 0.06, 0.83, 0.21 |
| Line | Line75 |  |  |  |  | 3.57, 0.08, 0.83, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.19, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.98, 0.08, 0.96, 0.21 |
