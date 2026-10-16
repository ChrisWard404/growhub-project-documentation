# Report: Lifting_Priorties_Specs

**Caption:** Lifting_Priorties_Specs  
**Grouping/sorting:** `Order ID`, `CLIENT_ASSOCIATE`, `ACTIVITY_CODE`  
**Subforms/subreports:** `Report.Lifting_Priorities_Client_Associate Subreport`  
**Opened from (VBA):** `Form_Lifting_Priorties`, `Form_Lifting_Priorties_BU`, `Form_Lifting_Priorties_Data_Subform`, `Form_Plant_Processing_Table_Priorties`, `Form_Propagule_Harvest_Priorties`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label118 | USDA Forest Service |  |  |  | 2.69, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.56, 0.17, 2.78, 0.20 |
| TextBox | Header |  | Header |  |  | 2.21, 0.36, 3.50, 0.23 |
| TextBox | SIZE_SPEC_STRING | Sow Request Size Spec: | SIZE_SPEC_STRING |  |  | 2.04, 1.02, 1.22, 0.26 |
| Subform | Plant_Inventory_Worksheet_Client_Associate Subreport | Sowing Request Client(s) | Report.Lifting_Priorities_Client_Associate Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.09, 1.06, 3.61, 0.23 |
| Line | Line32 |  |  |  |  | 0.07, 1.31, 7.67, 0.00 |
| TextBox | Species_Products_String_Longest |  | Species_Products_String_Longest |  |  | 1.00, 0.59, 5.92, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Lot ID_Label | Order ID |  |  |  | 0.06, 0.24, 0.64, 0.19 |
| Label | Label12 | Client |  |  |  | 0.94, 0.24, 0.62, 0.19 |
| Label | Label13 | Order Size Specs |  |  |  | 4.60, 0.24, 1.95, 0.19 |
| Label | Label16 | Root Prune Target |  |  |  | 6.61, 0.24, 1.11, 0.19 |
| Label | Label17 | Order |  |  |  | 1.67, 0.24, 0.71, 0.19 |
| Label | Label19 | Act Code |  |  |  | 3.68, 0.24, 0.86, 0.19 |
| Line | Line24 |  |  |  |  | 0.02, 0.43, 7.74, 0.00 |
| Label | Label35 | Overrun |  |  |  | 2.42, 0.24, 0.54, 0.19 |
| Label | Label36 | All Overrun |  |  |  | 3.07, 0.07, 0.56, 0.35 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Lot ID |  | Order ID |  |  | 0.07, 0.04, 0.62, 0.26 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.73, 0.04, 0.94, 0.26 |
| TextBox | SPEC_MIN |  | ORDER_SIZE_SPEC_STRING |  |  | 4.61, 0.04, 1.93, 0.26 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 6.61, 0.04, 1.12, 0.26 |
| TextBox | Text18 |  | ORDER_AMT |  |  | 1.68, 0.04, 0.70, 0.26 |
| TextBox | Text20 |  | ACTIVITY_CODE |  |  | 3.70, 0.04, 0.83, 0.26 |
| TextBox | CLIENT_NOTE |  | CLN |  |  | 0.04, 0.33, 6.50, 0.00 |
| TextBox | NURSERY_NOTE |  | NN |  |  | 0.04, 0.35, 6.50, 0.01 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 2.39, 0.04, 0.65, 0.26 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 3.31, 0.11, 0.00, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line23 |  |  |  |  | 0.00, 0.04, 7.74, 0.00 |
