# Report: Processing_QI_Summary_By_Lot_and_Date_Range

**Grouping/sorting:** `Agreement_Lot_ID`  
**Opened from (VBA):** `Form_Processing_QI_Daily_Checklist`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label23 | #Table Sorting Quality |  |  |  | 1.31, 1.06, 0.76, 0.53 |
| Label | Label25 | Agreement Lot ID |  |  |  | 0.48, 1.21, 0.75, 0.38 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.41, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.41, 0.00, 3.24, 0.16 |
| Label | Label24 | Processing Quality Inspection Lot Summary |  |  |  | 2.56, 0.55, 2.96, 0.19 |
| TextBox | ACTIVITY_DATE |  | ="Processing " & Forms!Processing_QI_Daily_Checklist!Begin_Date & IIf(Forms!Processing_QI_Daily_Checklist!End_Date<>Forms!Processing_QI_Daily_Checklist!Begin_Date," to " & Forms!Processing_QI_Daily_Checklist!End_Date) |  |  | 2.91, 0.78, 2.24, 0.19 |
| Label | Label62 | Caliper |  |  |  | 3.84, 1.40, 0.57, 0.19 |
| Line | Line65 |  |  |  |  | 0.48, 1.64, 7.39, 0.00 |
| Label | Label76 | Note: All values reported as percents |  |  |  | 5.74, 0.68, 2.14, 0.17 |
| Label | Label77 | Count  |  |  |  | 2.05, 1.38, 0.55, 0.21 |
| Label | Label78 |        Height |  |  |  | 2.57, 1.23, 0.57, 0.35 |
| Label | Label81 | Roots |  |  |  | 3.31, 1.40, 0.49, 0.19 |
| Label | Label87 | Multiple Top |  |  |  | 4.42, 1.23, 0.56, 0.35 |
| Label | Label89 | Mechanical Damage |  |  |  | 5.02, 1.23, 0.74, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Root_Other |  | Mechanical_Damage |  |  | 5.11, 0.00, 0.50, 0.23 |
| TextBox | Top_Other |  | Pest_Damage |  |  | 4.40, 0.00, 0.50, 0.23 |
| TextBox | Height |  | Roots |  |  | 3.24, 0.00, 0.50, 0.23 |
| TextBox | Caliper |  | Count |  |  | 2.02, 0.00, 0.50, 0.23 |
| TextBox | Height_Half |  | Vigor |  |  | 3.83, 0.00, 0.50, 0.23 |
| TextBox | Caliper_Half |  | Top_Size |  |  | 2.61, 0.00, 0.50, 0.23 |
| TextBox | SumOfSAMPLE_SIZE |  | Table_Sorting_Quality |  |  | 1.36, 0.00, 0.53, 0.23 |
| TextBox | Agreement_Lot_ID |  | Agreement_Lot_ID |  |  | 0.48, 0.00, 0.85, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.48, 0.06, 2.00, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.89, 0.06, 2.98, 0.00 |
| Line | Line16 |  |  |  |  | 0.36, 0.02, 7.49, 0.00 |
