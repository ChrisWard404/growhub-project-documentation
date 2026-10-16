# Report: NMIS_AGREEMENTS_Report_by_stocktype

**Caption:** NMIS_AGREEMENT_LOTS  
**Record source:**

```sql
Agreement_Lot_Confirmation_Query
```

**Grouping/sorting:** `PRODUCT_DESC`, `ASSOCIATE`, `CLIENT_ASSOCIATE`, `UNIT_CODE`, `PLNTMSTR_SYMBOL`, `Species_Products_String_Longer`, `Contact_Name`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 4.67, 1.32, 0.42, 0.32 |
| Label | END_FY_Label | End FY |  |  |  | 5.19, 1.32, 0.38, 0.32 |
| Label | TOTAL_REQUEST_Label | Original Request |  |  |  | 5.72, 1.31, 0.62, 0.33 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 3.26, 1.46, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 1.24, 1.34, 0.78, 0.30 |
| Line | Line31 |  |  |  |  | 0.00, 1.69, 7.99, 0.01 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.55, 0.16, 2.81, 0.19 |
| Label | Label33 | Agreement Confirmation Report |  |  |  | 2.75, 0.56, 2.58, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.33, 0.00, 3.24, 0.16 |
| Label | Label95 | Source Used |  |  |  | 7.38, 1.31, 0.60, 0.33 |
| Label | Label108 | Contact |  |  |  | 0.07, 1.47, 1.05, 0.18 |
| Label | Label110 | Adjusted Request |  |  |  | 6.61, 1.31, 0.68, 0.33 |
| ComboBox | Text179 |  | =[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;"Traditional and Non-Traditional Species" |  | 0.00, 0.00, 2.66, 0.21 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] |  |  | 0.00, 0.21, 1.92, 0.20 |
| TextBox | Text132 |  | ="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY] |  |  | 0.00, 0.41, 1.92, 0.20 |
| TextBox | Text133 |  | ="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client] |  |  | 0.00, 0.60, 2.08, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol] |  |  | 0.00, 0.80, 2.08, 0.20 |
| TextBox | ASSOCIATE |  | PRODUCT_DESC |  |  | 0.38, 1.00, 7.31, 0.33 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NURSERY_ASSOCIATE |  | [CLIENT_ASSOCIATE] | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [ASSOCIATE] & ")" AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.00, 0.00, 7.81, 0.26 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | VERNACULAR |  | Species_Products_String_Longer |  |  | 0.00, 0.00, 7.74, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_CODE |  | AGREEMENT_LOT_ID_AND_SOURCE2 |  |  | 1.26, 0.00, 3.41, 0.18 |
| TextBox | TOTAL_REQUEST |  | AMOUNT_REQUESTED |  |  | 6.57, 0.00, 0.57, 0.18 |
| TextBox | BEGIN_FY |  | begin |  |  | 4.67, 0.00, 0.47, 0.18 |
| TextBox | END_FY |  | End |  |  | 5.17, 0.00, 0.49, 0.18 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 6.27, 0.00, 0.26, 0.18 |
| TextBox | Text96 |  | Source_Used_for_Agreement |  |  | 7.42, 0.00, 0.57, 0.18 |
| TextBox | Prev_Agr_Lot |  | Prev_Agr_Lot |  |  | 1.41, 0.18, 3.55, 0.01 |
| TextBox | Contact_Name |  | Contact_Name |  |  | 0.10, 0.01, 1.15, 0.16 |
| TextBox | NOTE |  | NOTE |  |  | 1.41, 0.20, 6.15, 0.00 |
| TextBox | ORIG_AMOUNT_REQUESTED |  | ORIG_AMOUNT_REQUESTED |  |  | 5.69, 0.00, 0.57, 0.18 |
| TextBox | Text112 |  | UNIT_CODE |  |  | 7.15, 0.00, 0.26, 0.18 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.31, 0.12, 0.83, 0.20 |
| Label | Label58 | Total For:  |  |  |  | 0.00, 0.12, 0.90, 0.19 |
| Label | Label83 | ----------- |  |  |  | 5.70, 0.00, 0.56, 0.13 |
| TextBox | Text93 |  | Species_Products_String_Longer |  |  | 0.96, 0.10, 4.38, 0.21 |
| TextBox | Text97 |  | =Sum([Source_Used_for_Agreement]) |  |  | 7.20, 0.12, 0.79, 0.20 |
| Label | Label98 | ----------- |  |  |  | 7.43, 0.00, 0.56, 0.13 |
| TextBox | Text113 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.43, 0.12, 0.83, 0.20 |
| Label | Label114 | ----------- |  |  |  | 6.59, 0.00, 0.56, 0.13 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_TOTAL_REQ |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.31, 0.11, 0.83, 0.20 |
| Label | Label36 | Total For:  |  |  |  | 0.04, 0.11, 0.86, 0.19 |
| ComboBox | Combo56 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.94, 0.09, 4.46, 0.21 |
| Label | Label68 | ----------- |  |  |  | 5.70, 0.00, 0.56, 0.13 |
| TextBox | Text101 |  | =Sum([Source_Used_for_Agreement]) |  |  | 7.20, 0.11, 0.79, 0.20 |
| Label | Label102 | ----------- |  |  |  | 7.43, 0.00, 0.56, 0.13 |
| TextBox | Text117 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.43, 0.11, 0.83, 0.20 |
| Label | Label118 | ----------- |  |  |  | 6.59, 0.00, 0.56, 0.13 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.30, 0.10, 0.84, 0.20 |
| Label | Label51 | Total For:  |  |  |  | 0.04, 0.12, 0.86, 0.19 |
| ComboBox | Combo52 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.95, 0.12, 4.18, 0.21 |
| Label | Label69 | ----------- |  |  |  | 5.70, 0.00, 0.56, 0.13 |
| Line | Line85 |  |  |  |  | 0.04, 0.34, 7.94, 0.00 |
| TextBox | Text103 |  | =Sum([Source_Used_for_Agreement]) |  |  | 7.19, 0.10, 0.80, 0.20 |
| Label | Label104 | ----------- |  |  |  | 7.43, 0.00, 0.56, 0.13 |
| TextBox | Text119 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.42, 0.10, 0.84, 0.20 |
| Label | Label120 | ----------- |  |  |  | 6.59, 0.00, 0.56, 0.13 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.31, 0.11, 0.83, 0.20 |
| Label | Label55 | Total For:  |  |  |  | 0.04, 0.09, 0.86, 0.19 |
| TextBox | Combo37 |  | PRODUCT_DESC |  |  | 0.93, 0.09, 4.45, 0.21 |
| Label | Label82 | ----------- |  |  |  | 5.70, 0.00, 0.56, 0.13 |
| TextBox | Text99 |  | =Sum([Source_Used_for_Agreement]) |  |  | 7.20, 0.11, 0.79, 0.20 |
| Label | Label100 | ----------- |  |  |  | 7.43, 0.00, 0.56, 0.13 |
| TextBox | Text115 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.43, 0.11, 0.83, 0.20 |
| Label | Label116 | ----------- |  |  |  | 6.59, 0.00, 0.56, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.01, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.01, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.04, 0.00, 7.92, 0.00 |
