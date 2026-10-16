# Report: Packed_for_Outplant_Checklist

**Caption:** Packed for Outplanting  
**Grouping/sorting:** `Age_Class_String`, `PLNTMSTR_SYMBOL`, `ORDER_CODE`, `LOT_ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | OWNER_Label | Age Class |  |  |  | 0.04, 0.92, 1.04, 0.18 |
| Label | PLNTMSTR_SYMBOL_Label | SPECIES |  |  |  | 1.12, 0.92, 0.92, 0.18 |
| Label | ID_Label | LOT ID |  |  |  | 2.08, 0.92, 0.71, 0.18 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 2.83, 0.92, 0.92, 0.18 |
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 2.83, 1.17, 0.58, 0.18 |
| Label | ORDER_CODE_Label | Order Code |  |  |  | 3.46, 1.17, 0.75, 0.18 |
| Label | PACK_ID_Label | Pack ID |  |  |  | 4.25, 1.17, 0.54, 0.18 |
| Label | GRADING_SPECS_Label | Grading Specs |  |  |  | 4.83, 1.00, 0.50, 0.34 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | #Units |  |  |  | 5.79, 1.17, 0.50, 0.18 |
| Label | AMT_PER_UNIT_Label | Per Unit |  |  |  | 6.33, 1.17, 0.50, 0.18 |
| Line | Line26 |  |  |  |  | 0.04, 1.38, 7.88, 0.00 |
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.69, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.69, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.56, 0.17, 2.78, 0.20 |
| Label | Label28 | Root Prune |  |  |  | 5.33, 1.00, 0.42, 0.34 |
| TextBox | FY |  | ="Packed for Outplanting FY " & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER] |  |  | 2.00, 0.58, 4.00, 0.23 |
| Label | Label36 | Orig Req |  |  |  | 7.30, 1.17, 0.58, 0.18 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | OWNER |  | Age_Class_String |  |  | 0.04, 0.04, 2.00, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | Species |  |  | 0.17, 0.00, 2.96, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | LOT_ID |  |  | 2.08, 0.00, 0.71, 0.21 |
| TextBox | SOURCE_CODE |  | ID_SOURCE2 |  |  | 2.83, 0.00, 2.83, 0.21 |
| TextBox | Text29 |  | =Sum([PACKED]) |  |  | 6.62, 0.00, 0.71, 0.21 |
| Label | Label30 | Amount Packed: |  |  |  | 5.71, 0.00, 0.83, 0.17 |
| TextBox | Nursery_Owned_Request |  | Nursery_Owned_Request |  |  | 7.38, 0.00, 0.50, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 2.83, 0.00, 0.58, 0.21 |
| TextBox | ORDER_CODE |  | ORDER_CODE |  |  | 3.46, 0.00, 0.75, 0.21 |
| TextBox | PACK_ID |  | PACK_ID |  |  | 4.25, 0.00, 0.54, 0.21 |
| TextBox | GRADING_SPECS |  | GRADING_SPECS |  |  | 4.83, 0.00, 0.50, 0.21 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 5.79, 0.00, 0.50, 0.21 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 6.33, 0.00, 0.50, 0.21 |
| TextBox | Text27 |  | ROOT_PRUNE_TARGET |  |  | 5.33, 0.00, 0.42, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([PACKED]) |  |  | 6.62, 0.04, 0.71, 0.21 |
| Line | Line39 |  |  |  |  | 6.62, 0.00, 0.62, 0.00 |
| TextBox | Text40 |  | ="Total for " & [Species] |  |  | 0.15, 0.04, 5.38, 0.21 |
| Line | Line41 |  |  |  |  | 6.62, 0.00, 0.62, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Sum([PACKED]) |  |  | 6.62, 0.08, 0.71, 0.21 |
| Line | Line33 |  |  |  |  | 6.62, 0.04, 0.62, 0.00 |
| TextBox | Text37 |  | ="Total for " & [Age_Class_String] |  |  | 0.04, 0.08, 5.38, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.21, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.54, 0.21, 0.96, 0.21 |
