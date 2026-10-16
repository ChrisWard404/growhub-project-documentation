# Report: NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE

**Grouping/sorting:** `CATEGORY_DESC`, `CATEGORY_DESC`, `=[ID_SOURCE2b]`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.NMIS_CLIENT_MGMT_CODES subreport`  
**Opened from (VBA):** `Form_Foreign_Source_Request`, `Form_Source_Material_Work_List`, `Form_Source_Material_Work_Order_By_Lot_ID_Range`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 2.38, 1.00, 3.25, 0.26 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Material Request |  |  |  | 3.26, 0.57, 1.49, 0.17 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label36 | Requested From: |  |  |  | 3.48, 0.78, 1.06, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | ID |  |  |  | 0.69, 0.04, 0.23, 0.23 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.98, 0.04, 0.53, 0.23 |
| Label | SOURCE_REQUIRED_Label | Amount |  |  |  | 3.79, 0.04, 0.62, 0.23 |
| Line | Line18 |  |  |  |  | 0.00, 0.00, 7.92, 0.00 |
| Line | Line19 |  |  |  |  | 0.00, 0.28, 7.92, 0.00 |
| Label | Label24 | Payee Job Code and % |  |  |  | 4.54, 0.04, 1.68, 0.23 |
| Label | Label40 | Contact |  |  |  | 6.21, 0.03, 1.38, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CATEGORY_CODE |  | CATEGORY_DESC |  |  | 0.04, 0.07, 3.04, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES;  |  | 0.04, 0.04, 3.80, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text30 |  | SOURCE_REQUIRED |  |  | 3.71, 0.03, 0.72, 0.20 |
| TextBox | Text31 |  | ID_SOURCE2B |  |  | 0.12, 0.03, 3.58, 0.20 |
| Subform | Child34 |  | Report.NMIS_CLIENT_MGMT_CODES subreport (master: Agreement_Lot_CN → child: AGREEMENT_LOT_CN) |  |  | 4.50, 0.03, 3.38, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.00 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.40, 0.17, 3.50, 0.00 |
