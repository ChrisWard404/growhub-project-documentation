# Report: Husky_Mpro_Storage_location_change

**Caption:** Storage Location Change Checklist  
**Grouping/sorting:** `Date`, `Loc_from`, `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| Label | Label33 | Storage Location Change by Lot ID Checklist |  |  |  | 2.23, 0.56, 3.70, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.23, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.37, 0.00, 3.24, 0.16 |
| TextBox | Text12 |  | =Format(Date(),"Short Date") |  |  | 3.02, 0.78, 2.05, 0.23 |
| Line | Line29 |  |  |  |  | 0.00, 1.25, 7.98, 0.00 |
| Label | Label38 | Lot ID |  |  |  | 0.67, 1.03, 0.45, 0.20 |
| Label | Label39 | From |  |  |  | 1.44, 1.03, 0.45, 0.20 |
| Label | Label40 | To |  |  |  | 2.23, 1.03, 0.45, 0.20 |
| Label | Label41 | Comment |  |  |  | 5.71, 1.03, 0.69, 0.20 |
| Label | Label42 | Date |  |  |  | 0.04, 1.03, 0.45, 0.20 |
| Label | Label44 | Order and Client |  |  |  | 2.77, 1.03, 1.15, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.62, 0.02, 0.68, 0.19 |
| TextBox | Riser_End |  | Location_to |  |  | 2.15, 0.02, 0.58, 0.19 |
| TextBox | Riser_Begin |  | Loc_from |  |  | 1.34, 0.02, 0.78, 0.19 |
| TextBox | Text37 |  | FirstOfNote |  |  | 5.71, 0.02, 2.25, 0.19 |
| TextBox | Date |  | Date |  |  | 0.00, 0.02, 0.61, 0.19 |
| TextBox | Text45 |  | Client_Code_Name |  |  | 2.77, 0.02, 2.89, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.97, 0.02, 0.00, 0.00 |
