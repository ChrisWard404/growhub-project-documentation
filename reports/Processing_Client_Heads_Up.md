# Report: Processing_Client_Heads_Up

**Caption:** Client Heads Up  
**Grouping/sorting:** `Priority`, `Location`, `BED_SORT_ORDER`, `Lot ID`  
**Subforms/subreports:** `Report.Lifting_Priorties subreport1`, `Report.Processing_Client_Heads_Up_subreport`  
**Opened from (VBA):** `Form_Lifting_Priorties`, `Form_Lifting_Priorties_BU`, `Form_Lifting_Priorties_Data_Subform`, `Form_Plant_Processing_Table_Priorties_Data_Subform`, `Form_Propagule_Harvest_Priorties`, `Form_Propagule_Harvest_Priorties_Data_Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.61, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| Label | Label57 | Processing Client "Heads-Up" |  |  |  | 2.61, 0.62, 2.84, 0.23 |
| Subform | Lifting_Priorties subreport1 |  | Report.Lifting_Priorties subreport1 |  |  | 0.02, 1.01, 7.92, 0.48 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Priority | Priority: | Priority |  |  | 0.83, 0.00, 0.00, 0.26 |
| Label | Label51 | Client |  |  |  | 4.99, 0.32, 0.49, 0.23 |
| Label | Label52 | Contact(s) |  |  |  | 5.61, 0.32, 0.77, 0.23 |
| Label | Label53 | Species/Age Class |  |  |  | 1.19, 0.32, 1.33, 0.23 |
| Label | Label54 | Lot ID |  |  |  | 0.02, 0.32, 0.74, 0.23 |
| Label | Label55 | Order  (M) |  |  |  | 4.40, 0.09, 0.57, 0.44 |
| Label | Label76 | Order Specs |  |  |  | 3.15, 0.32, 0.92, 0.24 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Feet To Lift |  | Lot ID |  |  | 0.02, 0.00, 1.15, 0.19 |
| TextBox | Ft Note |  | ORDER_AMT |  |  | 4.34, 0.00, 0.52, 0.19 |
| TextBox | Location |  | CLIENT_ASSOCIATE |  |  | 4.99, 0.00, 0.61, 0.19 |
| TextBox | Lot ID |  | CONTACT |  |  | 5.61, 0.00, 2.35, 0.19 |
| TextBox | Species/Age Class |  | Species_Age_Class |  |  | 1.19, 0.00, 1.95, 0.19 |
| TextBox | Order_Size_Spec_W_Prune2 |  | Order_Size_Spec_W_Prune2 |  |  | 3.16, 0.00, 1.14, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.73, 0.08, 2.00, 0.21 |
| Label | Label79 | * = Client want to be present for Packing |  |  |  | 2.96, 0.06, 2.19, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Lifting_Priorties subreport |  | Report.Processing_Client_Heads_Up_subreport |  |  | 0.01, 0.04, 7.92, 0.04 |
