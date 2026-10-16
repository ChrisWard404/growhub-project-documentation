# Report: NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report

**Grouping/sorting:** `borc`, `BEGIN_FY`, `Current_Product`, `Name`, `Major_Client`, `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Total Request |  |  |  | 2.24, 1.07, 0.60, 0.33 |
| Label | SOURCE_CODE_Label | Lot ID |  |  |  | 1.23, 1.22, 0.52, 0.18 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Major Client |  |  |  | 0.48, 1.07, 0.53, 0.32 |
| Line | Line31 |  |  |  |  | 0.00, 1.43, 7.99, 0.01 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.55, 0.16, 2.81, 0.19 |
| Label | Label33 | Agreement Lots without SOW, XPLT*, XFER* or CTSTRK Activity |  |  |  | 0.99, 0.55, 6.01, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.33, 0.00, 3.24, 0.16 |
| Label | Label95 | Species Product |  |  |  | 3.38, 1.22, 3.90, 0.18 |
| Label | Label108 | Begin FY |  |  |  | 0.00, 1.07, 0.43, 0.32 |
| ComboBox | borc |  | borc | b;Bareroot;c;Container;BT;Contract Bareroot;CT;Contract Container;N;Native Seed |  | 2.40, 0.79, 3.29, 0.26 |
| Label | Label133 | Est Cont. |  |  |  | 2.91, 1.07, 0.43, 0.33 |
| Label | Label139 | AKA |  |  |  | 7.06, 1.21, 0.72, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Current_Product |  | Current_Product |  |  | 0.00, 0.00, 2.46, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Name |  | Name |  |  | 0.00, 0.00, 5.58, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Major_Client |  | Major_Client |  |  | 0.46, 0.00, 0.69, 0.21 |
| TextBox | ID |  | ID |  |  | 1.17, 0.00, 1.03, 0.21 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 2.20, 0.00, 0.60, 0.21 |
| TextBox | What_It_Is_Longest |  | What_It_Is |  |  | 3.29, 0.00, 3.59, 0.21 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 0.01, 0.00, 0.44, 0.21 |
| Line | Line129 |  |  |  |  | 0.04, 0.25, 7.95, 0.00 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 2.83, 0.00, 0.44, 0.21 |
| TextBox | AKA |  | AKA |  |  | 7.14, 0.00, 0.84, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 0.44, 0.22, 7.36, 0.01 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text130 |  | =Date() |  |  | 0.00, 0.02, 2.00, 0.00 |
