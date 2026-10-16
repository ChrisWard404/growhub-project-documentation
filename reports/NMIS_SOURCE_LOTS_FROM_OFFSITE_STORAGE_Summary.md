# Report: NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE_Summary

**Caption:** NMIS Source Lots Offsite Storage Request Associate Summary  
**Grouping/sorting:** `CATEGORY_DESC`, `Parent`, `ASSOCIATE`, `PLNTMSTR_SYMBOL`, `ID_SOURCE2`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Report.NMIS_CLIENT_MGMT_CODES subreport`  
**Opened from (VBA):** `Form_Foreign_Source_Request`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 2.38, 0.96, 3.25, 0.26 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Material Request by Associate |  |  |  | 2.85, 0.56, 2.30, 0.18 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label36 | Requested From: |  |  |  | 3.48, 0.76, 1.06, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | ID |  |  |  | 0.67, 0.04, 0.23, 0.23 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.96, 0.04, 0.53, 0.23 |
| Label | SOURCE_REQUIRED_Label | Amount |  |  |  | 3.69, 0.04, 0.62, 0.23 |
| Line | Line18 |  |  |  |  | 0.00, 0.00, 7.92, 0.00 |
| Line | Line19 |  |  |  |  | 0.00, 0.28, 7.92, 0.00 |
| Label | Label24 | Payee Job Code and % |  |  |  | 4.39, 0.04, 1.70, 0.23 |
| Label | Label40 | Contact |  |  |  | 6.11, 0.04, 1.30, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CATEGORY_CODE |  | CATEGORY_DESC |  |  | 0.05, 0.06, 2.14, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | Parent |  |  | 0.04, 0.03, 4.50, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | ID_SOURCE2 |  |  | 0.08, 0.02, 3.52, 0.20 |
| Subform | Child34 |  | Report.NMIS_CLIENT_MGMT_CODES subreport (master: Agreement_Lot_CN → child: AGREEMENT_LOT_CN) |  |  | 4.38, 0.04, 3.51, 0.18 |
| TextBox | Text30 |  | SOURCE_REQUIRED |  |  | 3.61, 0.02, 0.72, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.00 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.40, 0.17, 3.50, 0.00 |
