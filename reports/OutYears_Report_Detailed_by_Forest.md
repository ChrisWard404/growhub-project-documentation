# Report: OutYears_Report_Detailed_by_Forest

**Grouping/sorting:** `Reporting_Parent`, `CLIENT_ASSOCIATE`, `END_FY`, `BEGIN_FY`, `Cost_Center`, `Age_Class`, `PLNTMSTR_SYMBOL`, `SOURCE`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_SOW_REQUEST_REPORTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ASSOCIATE |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [Associate_Name] & " (" & [Associate] & ")" AS Parent_Associate_Header FROM NMIS_ASSOCIATES; |  | 1.67, 0.86, 4.79, 0.32 |
| Label | BEGIN_FY_Label | End FY |  |  |  | 3.28, 1.41, 0.37, 0.33 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.57, 1.55, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.02, 1.43, 0.85, 0.30 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Sowing Request Summary |  |  |  | 2.46, 0.59, 3.23, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.02, 1.70, 7.93, 0.20 |
| Label | Label122 | Location |  |  |  | 7.28, 1.55, 0.69, 0.17 |
| Label | Label150 | Gross Density |  |  |  | 6.78, 1.40, 0.54, 0.33 |
| Label | Label155 | Inv Date |  |  |  | 6.25, 1.40, 0.42, 0.33 |
| Label | TOTAL_REQUEST_Label | AdjustedRequest (M) |  |  |  | 4.32, 1.25, 0.63, 0.47 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 5.00, 1.25, 0.44, 0.47 |
| Label | Label111 | Est. Net (M) |  |  |  | 5.54, 1.25, 0.42, 0.47 |
| Label | Label149 | Original Request (M) |  |  |  | 3.74, 1.25, 0.62, 0.47 |
| TextBox | Text197 |  | =[Forms]![SOW_REQUEST_REPORTS]![Comment] |  |  | 5.79, 0.12, 2.17, 0.71 |
| ComboBox | Combo178 |  | =[Forms]![SOW_REQUEST_REPORTS]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.62, 2.34, 0.20 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY] |  |  | 0.00, 0.00, 1.92, 0.20 |
| TextBox | Text200 |  | ="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client] |  |  | 0.00, 0.42, 2.34, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol] |  |  | 0.00, 0.21, 2.34, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NURSERY_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & "  " & [ASSOCIATE_NAME] AS ASSOCIATE_CODE_AND_NAME FROM NMIS_ASSOCIATES;  |  | 0.00, 0.01, 5.00, 0.25 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text198 |  | Requested_for_fy |  |  | 0.00, 0.01, 3.84, 0.27 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Combo123 |  | Requested_fy_for_fy |  |  | 0.00, 0.02, 4.88, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | Age_Class |  |  | 0.04, 0.00, 2.75, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Actual_Sown_Calculated |  | ORIG_AMOUNT_REQUESTED |  |  | 3.69, 0.00, 0.52, 0.15 |
| TextBox | TOTAL_REQUEST |  | AMOUNT_REQUESTED |  |  | 4.34, 0.00, 0.49, 0.15 |
| TextBox | GROSS |  | GROSS |  |  | 4.89, 0.00, 0.56, 0.15 |
| TextBox | NET_INV |  | Net_Inv_M |  |  | 5.45, 0.00, 0.55, 0.15 |
| ComboBox | Text120 |  | CN | SELECT NMIS_AGREEMENT_LOTS.CN, [MinOfLOCATION] & "-" & [MaxOfLOCATION] AS Location FROM Agreement_Lot_Max_N_Min_Field_Location RIGHT JOIN NMIS_AGREEMENT_LOTS ON Agreement_Lot_Max_N_Min_Field_Location.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN; |  | 7.19, 0.00, 0.79, 0.15 |
| TextBox | Text138 |  | AgLotID_Source |  |  | 0.09, 0.00, 3.18, 0.15 |
| TextBox | LastOfDensity |  | Density |  |  | 6.79, 0.00, 0.38, 0.15 |
| TextBox | MaxOfACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.04, 0.00, 0.62, 0.15 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 6.67, 0.00, 0.12, 0.15 |
| TextBox | END_FY |  | END_FY |  |  | 1.64, 0.00, 0.00, 0.15 |
| TextBox | BEGIN_FY |  | End_Season |  |  | 3.30, 0.00, 0.45, 0.15 |

## Section: GroupFooter6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text176 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label177 | Total For:  |  |  |  | 0.02, 0.08, 0.64, 0.18 |
| Label | Label178 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text179 |  | =Sum([GROSS]) |  |  | 4.85, 0.10, 0.59, 0.20 |
| Label | Label180 | ----------- |  |  |  | 4.82, 0.00, 0.62, 0.15 |
| TextBox | Text181 |  | =Sum([NET_INV_M]) |  |  | 5.45, 0.10, 0.55, 0.20 |
| Label | Label182 | ----------- |  |  |  | 5.40, 0.00, 0.60, 0.15 |
| TextBox | Text183 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.62, 0.10, 0.58, 0.20 |
| Label | Label184 | ----------- |  |  |  | 3.66, 0.00, 0.53, 0.13 |
| ComboBox | Text185 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [vernacular] & " (" & [plntmstr_symbol] & ")" AS Expr1 FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.65, 0.08, 2.91, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.20 |
| Label | Label55 | Total For:  |  |  |  | 0.03, 0.08, 0.64, 0.18 |
| Label | Label82 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text97 |  | =Sum([GROSS]) |  |  | 4.86, 0.10, 0.59, 0.20 |
| Label | Label98 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text99 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.10, 0.55, 0.20 |
| Label | Label100 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text141 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.63, 0.10, 0.58, 0.20 |
| Label | Label142 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |
| TextBox | Combo135 |  | Age_Class_Condensed |  |  | 0.66, 0.08, 2.91, 0.18 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text163 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label164 | Total For:  |  |  |  | 0.02, 0.08, 0.64, 0.18 |
| Label | Label165 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text166 |  | =Sum([GROSS]) |  |  | 4.85, 0.10, 0.59, 0.20 |
| Label | Label167 | ----------- |  |  |  | 4.82, 0.00, 0.62, 0.15 |
| TextBox | Text168 |  | =Sum([NET_INV_M]) |  |  | 5.45, 0.10, 0.55, 0.20 |
| Label | Label169 | ----------- |  |  |  | 5.40, 0.00, 0.60, 0.15 |
| TextBox | Text170 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.62, 0.10, 0.58, 0.20 |
| Label | Label171 | ----------- |  |  |  | 3.66, 0.00, 0.53, 0.13 |
| ComboBox | Combo173 |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 0.68, 0.08, 1.86, 0.18 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text125 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.20 |
| Label | Label126 | Total:  |  |  |  | 0.03, 0.11, 0.41, 0.18 |
| Label | Label128 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text129 |  | =Sum([GROSS]) |  |  | 4.86, 0.10, 0.59, 0.20 |
| Label | Label130 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text131 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.10, 0.55, 0.20 |
| Label | Label132 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text133 |  | Requested_fy_for_fy |  |  | 0.45, 0.11, 3.16, 0.18 |
| TextBox | Text143 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.63, 0.10, 0.58, 0.20 |
| Label | Label144 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text186 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label187 | Total:  |  |  |  | 0.02, 0.11, 0.41, 0.18 |
| Label | Label188 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text189 |  | =Sum([GROSS]) |  |  | 4.85, 0.10, 0.59, 0.20 |
| Label | Label190 | ----------- |  |  |  | 4.82, 0.00, 0.62, 0.15 |
| TextBox | Text191 |  | =Sum([NET_INV_M]) |  |  | 5.45, 0.10, 0.55, 0.20 |
| Label | Label192 | ----------- |  |  |  | 5.40, 0.00, 0.60, 0.15 |
| TextBox | Text193 |  | Requested_for_fy |  |  | 0.44, 0.11, 3.16, 0.18 |
| TextBox | Text194 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.62, 0.10, 0.58, 0.20 |
| Label | Label195 | ----------- |  |  |  | 3.66, 0.00, 0.53, 0.13 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_TOTAL_REQ |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.22 |
| Label | Label36 | Total For:  |  |  |  | 0.04, 0.10, 0.64, 0.18 |
| ComboBox | Combo56 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.69, 0.11, 2.89, 0.18 |
| Label | Label68 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text101 |  | =Sum([GROSS]) |  |  | 4.86, 0.10, 0.59, 0.22 |
| Label | Label102 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text103 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.10, 0.55, 0.22 |
| Label | Label104 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text145 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.62, 0.10, 0.58, 0.22 |
| Label | Label146 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.17, 0.11, 0.66, 0.20 |
| Label | Label51 | Total For:  |  |  |  | 0.04, 0.12, 0.64, 0.18 |
| ComboBox | Combo52 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.67, 0.12, 2.83, 0.18 |
| Label | Label69 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text105 |  | =Sum([GROSS]) |  |  | 4.85, 0.11, 0.60, 0.20 |
| Label | Label106 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text107 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.11, 0.55, 0.20 |
| Label | Label108 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text147 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.56, 0.10, 0.65, 0.20 |
| Label | Label148 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.19, 2.13, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.93, 0.19 |
