# Report: XPLT_AT_JHSN

**Grouping/sorting:** `ORDER_CODE`, `OWNER`, `Product_Class_for_Processing`, `PLNTMSTR_SYMBOL`, `LOT_ID`  
**Subforms/subreports:** `Report.PXPLT_MCODES Subrep`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | LOT ID |  |  |  | 1.03, 1.23, 0.92, 0.18 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 1.99, 1.04, 0.92, 0.18 |
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 2.26, 1.23, 0.48, 0.18 |
| Label | ORDER_CODE_Label | Order Code |  |  |  | 2.82, 1.23, 0.75, 0.18 |
| Label | PACK_ID_Label | Pack ID |  |  |  | 3.60, 1.23, 0.54, 0.18 |
| Label | GRADING_SPECS_Label | Grading Specs |  |  |  | 4.18, 1.23, 0.94, 0.18 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | #Units |  |  |  | 5.69, 1.23, 0.42, 0.18 |
| Label | AMT_PER_UNIT_Label | Per Unit |  |  |  | 6.77, 1.23, 0.50, 0.18 |
| Line | Line26 |  |  |  |  | 0.00, 1.44, 7.94, 0.00 |
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.69, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.69, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.56, 0.17, 2.78, 0.20 |
| TextBox | FY |  | ="Packed for Nursery Transplant for FY " & [Forms]![Switchboard]![FY_For_Reports] |  |  | 2.00, 0.58, 4.00, 0.23 |
| TextBox | Text37 |  | ORDER_CODE |  |  | 2.71, 0.83, 2.50, 0.23 |
| Label | Label47 |  Unit |  |  |  | 6.17, 1.23, 0.33, 0.18 |
| TextBox | Text50 |  | =IIf([owner]="Nursery Owned","Orig Req") |  |  | 7.35, 1.23, 0.58, 0.18 |
| TextBox | Text55 |  | =IIf([owner]="Nursery Owned","","New Lot ID") |  |  | 0.08, 1.23, 0.79, 0.18 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | OWNER |  | OWNER |  |  | 0.04, 0.00, 3.00, 0.26 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Product_Class_for_Processing |  | Product_Class_for_Processing |  |  | 0.08, 0.04, 3.71, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Vernacular_With_Code FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.12, 0.00, 2.54, 0.20 |
| ComboBox | Combo49 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 2.70, 0.00, 3.08, 0.20 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | LOT_ID |  |  | 1.03, 0.04, 0.92, 0.00 |
| TextBox | SOURCE_CODE |  | ID_SOURCE2 |  |  | 1.99, 0.04, 3.53, 0.00 |
| TextBox | Text29 |  | =Sum([PACKED]) |  |  | 6.73, 0.04, 0.62, 0.00 |
| Label | Label30 | Amount Packed(M): |  |  |  | 5.54, 0.04, 1.21, 0.17 |
| TextBox | Nursery_Owned_Request |  | Nursery_Owned_Request |  |  | 7.38, 0.04, 0.58, 0.00 |
| TextBox | CLIENT_NOTE |  | Notes |  |  | 2.00, 0.21, 5.86, 0.01 |
| TextBox | New_Agreement_Lot_ID |  | New_Agreement_Lot_ID |  |  | 0.04, 0.04, 0.88, 0.00 |
| Subform | PXPLT_MCODES Subrep |  | Report.PXPLT_MCODES Subrep (master: Order_CN → child: ORDER_CN) |  |  | 1.05, 0.22, 0.88, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 2.26, 0.00, 0.58, 0.19 |
| TextBox | ORDER_CODE |  | ACTIVITY_CODE |  |  | 2.84, 0.00, 0.75, 0.19 |
| TextBox | PACK_ID |  | PACK_ID |  |  | 3.64, 0.00, 0.41, 0.19 |
| TextBox | GRADING_SPECS |  | Order_Size_Spec_W_Prune2 |  |  | 4.07, 0.00, 1.59, 0.19 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | SumOfNUMBER_OF_ACTIVITY_UNITS |  |  | 5.69, 0.00, 0.42, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 6.74, 0.00, 0.50, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 6.12, 0.00, 0.60, 0.19 |
| TextBox | CONTACT |  | CONTACT |  |  | 0.67, 0.00, 1.56, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Sum([PACKED]) |  |  | 6.53, 0.04, 0.71, 0.21 |
| Line | Line33 |  |  |  |  | 6.53, 0.00, 0.71, 0.00 |
| TextBox | Text44 |  | ="Total Packed for " & [OWNER] |  |  | 4.00, 0.06, 2.21, 0.19 |
| TextBox | Text53 |  | =Sum([Nursery_Owned_Request]) |  |  | 7.25, 0.04, 0.71, 0.21 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Sum([PACKED]) |  |  | 6.53, 0.04, 0.71, 0.21 |
| Line | Line41 |  |  |  |  | 6.53, 0.00, 0.71, 0.00 |
| TextBox | Text42 |  | ="Total Packed for " & [ORDER_CODE] |  |  | 4.00, 0.06, 2.21, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.01, 1.96, 0.00 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.97, 0.01, 0.96, 0.00 |
| Line | Line48 |  |  |  |  | 0.00, 0.00, 7.85, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text43 |  | =Sum([PACKED]) |  |  | 6.32, 0.00, 0.92, 0.18 |
| Line | Line44 |  |  |  |  | 6.53, 0.00, 0.71, 0.00 |
| TextBox | Text45 |  | ="Total Packed for Transplanting FY" & [Forms]![Switchboard]![FY_For_Reports] |  |  | 0.83, 0.00, 5.38, 0.18 |
