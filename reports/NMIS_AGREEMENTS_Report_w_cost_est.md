# Report: NMIS_AGREEMENTS_Report_w_cost_est

**Grouping/sorting:** `ASSOCIATE`, `CLIENT_ASSOCIATE`, `UNIT_CODE`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `Species_Products_String_Longer`, `Contact_Name`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ASSOCIATE |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [Associate_Name] & " (" & [Associate] & ")" AS Associate_Header FROM NMIS_ASSOCIATES;  |  | 1.68, 0.81, 4.67, 0.26 |
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 2.22, 1.34, 0.42, 0.32 |
| Label | END_FY_Label | End FY |  |  |  | 2.72, 1.34, 0.38, 0.32 |
| Label | TOTAL_REQUEST_Label | Original Request |  |  |  | 3.25, 1.33, 0.62, 0.33 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 1.24, 1.36, 0.78, 0.30 |
| Line | Line31 |  |  |  |  | 0.00, 1.69, 7.99, 0.01 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.55, 0.16, 2.81, 0.19 |
| Label | Label33 | Agreement Confirmation Report |  |  |  | 2.75, 0.56, 2.58, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.33, 0.00, 3.24, 0.16 |
| Label | Label95 | Source Used |  |  |  | 4.83, 1.33, 0.60, 0.33 |
| Label | Label108 | Contact |  |  |  | 0.07, 1.48, 1.05, 0.18 |
| Label | Label110 | Adjusted Request |  |  |  | 4.08, 1.33, 0.68, 0.33 |
| ComboBox | Text179 |  | =[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;"Traditional and Non-Traditional Species" |  | 0.00, 0.00, 2.66, 0.21 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] |  |  | 0.00, 0.21, 1.92, 0.20 |
| TextBox | Text132 |  | ="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY] |  |  | 0.00, 0.41, 1.92, 0.20 |
| TextBox | Text133 |  | ="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client] |  |  | 0.00, 0.60, 2.08, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol] |  |  | 0.00, 0.80, 2.08, 0.20 |
| Label | Label144 | Std Chg $/M |  |  |  | 5.35, 1.33, 0.54, 0.33 |
| Label | Label145 | Sm Lot Chg $/M |  |  |  | 5.90, 1.33, 0.57, 0.33 |
| Label | Label146 | Germ Chg $/M |  |  |  | 6.48, 1.33, 0.52, 0.33 |
| Label | Label147 |  Total  $/M |  |  |  | 6.93, 1.33, 0.53, 0.33 |
| Label | Label148 | Total Chg $ |  |  |  | 7.50, 1.33, 0.50, 0.33 |
| TextBox | Text188 |  | ="Estimated Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices" |  |  | 5.38, 1.16, 2.58, 0.18 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NURSERY_ASSOCIATE |  | [CLIENT_ASSOCIATE] | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [ASSOCIATE] & ")" AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.00, 0.09, 7.81, 0.26 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.00, 0.00, 4.46, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | VERNACULAR |  | Species_Products_String_Longer |  |  | 0.00, 0.00, 7.96, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_CODE |  | NMIS_AGREEMENT_LOTS_ID |  |  | 1.05, 0.00, 1.16, 0.23 |
| TextBox | TOTAL_REQUEST |  | AMOUNT_REQUESTED |  |  | 4.04, 0.01, 0.57, 0.20 |
| TextBox | BEGIN_FY |  | begin |  |  | 2.22, 0.01, 0.47, 0.20 |
| TextBox | END_FY |  | End |  |  | 2.70, 0.01, 0.49, 0.20 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.79, 0.01, 0.26, 0.20 |
| TextBox | Prev_Agr_Lot |  | Prev_Agr_Lot |  |  | 1.36, 0.42, 3.55, 0.01 |
| TextBox | Text96 |  | Source_Used_for_Agreement |  |  | 4.83, 0.01, 0.57, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 1.42, 0.44, 6.15, 0.00 |
| TextBox | Contact_Name |  | Contact_Name |  |  | 0.02, 0.00, 1.04, 0.18 |
| TextBox | ORIG_AMOUNT_REQUESTED |  | ORIG_AMOUNT_REQUESTED |  |  | 3.21, 0.01, 0.57, 0.20 |
| TextBox | Text112 |  | UNIT_CODE |  |  | 4.62, 0.01, 0.22, 0.20 |
| TextBox | Text124 |  | ID_SOURCE2 |  |  | 1.05, 0.22, 2.95, 0.18 |
| TextBox | G SChg |  | G SChg_dollar |  |  | 6.44, 0.01, 0.45, 0.20 |
| TextBox | SL SurChg |  | SL SurChg_dollar |  |  | 5.96, 0.01, 0.48, 0.20 |
| TextBox | Std Chg |  | Std Chg |  |  | 5.43, 0.01, 0.51, 0.20 |
| TextBox | Total Chg $ |  | Total Chg $ |  |  | 7.39, 0.01, 0.61, 0.20 |
| TextBox | Total Chg/M |  | Total Chg/M |  |  | 6.89, 0.01, 0.49, 0.20 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 3.78, 0.12, 0.83, 0.20 |
| Label | Label83 | ----------- |  |  |  | 3.23, 0.00, 0.56, 0.13 |
| TextBox | Text97 |  | =Sum([Source_Used_for_Agreement]) |  |  | 4.66, 0.12, 0.79, 0.20 |
| Label | Label98 | ----------- |  |  |  | 4.89, 0.00, 0.56, 0.13 |
| TextBox | Text113 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 2.95, 0.12, 0.83, 0.20 |
| Label | Label114 | ----------- |  |  |  | 4.06, 0.00, 0.56, 0.13 |
| TextBox | Text135 |  | =Sum([Total Chg $]) |  |  | 7.15, 0.12, 0.85, 0.20 |
| Label | Label136 | ----------- |  |  |  | 7.38, 0.00, 0.62, 0.13 |
| Label | Label58 | Total For:  |  |  |  | 0.04, 0.02, 0.81, 0.22 |
| TextBox | Text93 |  | Vernacular_With_Code |  |  | 0.91, 0.00, 2.02, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 3.78, 0.11, 0.83, 0.20 |
| Label | Label82 | ----------- |  |  |  | 3.23, 0.00, 0.56, 0.13 |
| TextBox | Text99 |  | =Sum([Source_Used_for_Agreement]) |  |  | 4.66, 0.11, 0.79, 0.20 |
| Label | Label100 | ----------- |  |  |  | 4.89, 0.00, 0.56, 0.13 |
| TextBox | Text115 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 2.95, 0.11, 0.83, 0.20 |
| Label | Label116 | ----------- |  |  |  | 4.06, 0.00, 0.56, 0.13 |
| TextBox | Text137 |  | =Sum([Total Chg $]) |  |  | 7.15, 0.11, 0.85, 0.20 |
| Label | Label138 | ----------- |  |  |  | 7.38, 0.00, 0.62, 0.13 |
| Label | Label55 | Total For:  |  |  |  | 0.00, 0.00, 0.81, 0.22 |
| TextBox | Combo37 |  | PRODUCT_DESC |  |  | 0.84, 0.00, 2.09, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_TOTAL_REQ |  | =Sum([AMOUNT_REQUESTED]) |  |  | 3.78, 0.11, 0.83, 0.20 |
| Label | Label68 | ----------- |  |  |  | 3.23, 0.00, 0.56, 0.13 |
| TextBox | Text101 |  | =Sum([Source_Used_for_Agreement]) |  |  | 4.66, 0.11, 0.79, 0.20 |
| Label | Label102 | ----------- |  |  |  | 4.89, 0.00, 0.56, 0.13 |
| TextBox | Text117 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 2.95, 0.11, 0.83, 0.20 |
| Label | Label118 | ----------- |  |  |  | 4.06, 0.00, 0.56, 0.13 |
| TextBox | Text139 |  | =Sum([Total Chg $]) |  |  | 7.15, 0.11, 0.85, 0.20 |
| Label | Label140 | ----------- |  |  |  | 7.38, 0.00, 0.62, 0.13 |
| Label | Label36 | Total For:  |  |  |  | 0.00, 0.01, 0.81, 0.22 |
| ComboBox | Combo56 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.85, 0.00, 2.06, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 3.82, 0.10, 0.84, 0.20 |
| Label | Label69 | ----------- |  |  |  | 3.23, 0.00, 0.56, 0.13 |
| Line | Line85 |  |  |  |  | 0.04, 0.34, 7.94, 0.00 |
| TextBox | Text103 |  | =Sum([Source_Used_for_Agreement]) |  |  | 4.65, 0.10, 0.80, 0.20 |
| Label | Label104 | ----------- |  |  |  | 4.89, 0.00, 0.56, 0.13 |
| TextBox | Text119 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 2.94, 0.10, 0.84, 0.20 |
| Label | Label120 | ----------- |  |  |  | 4.11, 0.00, 0.56, 0.13 |
| TextBox | Text141 |  | =Sum([Total Chg $]) |  |  | 7.14, 0.10, 0.86, 0.20 |
| Label | Label142 | ----------- |  |  |  | 7.38, 0.00, 0.62, 0.13 |
| Label | Label51 | Total For:  |  |  |  | 0.00, 0.00, 0.81, 0.22 |
| ComboBox | Combo52 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.86, 0.00, 2.05, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.01, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.01, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.04, 0.00, 7.92, 0.00 |
