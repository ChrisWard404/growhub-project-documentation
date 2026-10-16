# Report: OutYears_Report_Summary_grand_Forest_Sub

**Grouping/sorting:** `END_FY`, `BEGIN_FY`, `Cost_Center`, `Age_Class`, `Reporting_Parent`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_SOW_REQUEST_REPORTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Sowing Request Summary |  |  |  | 2.46, 0.55, 3.21, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.02, 1.53, 7.93, 0.20 |
| TextBox | Text196 |  | ="Requested for FY " & [END_FY] |  |  | 2.42, 0.77, 3.33, 0.26 |
| Label | TOTAL_REQUEST_Label | AdjustedRequest (M) |  |  |  | 4.32, 1.11, 0.63, 0.47 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 5.00, 1.10, 0.44, 0.47 |
| Label | Label111 | Est. Net (M) |  |  |  | 5.54, 1.10, 0.42, 0.47 |
| Label | Label149 | Original Request (M) |  |  |  | 3.74, 1.10, 0.62, 0.47 |
| TextBox | Text211 |  | =[Forms]![SOW_REQUEST_REPORTS]![Comment] |  |  | 5.79, 0.12, 2.17, 0.71 |
| ComboBox | Combo178 |  | =[Forms]![SOW_REQUEST_REPORTS]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.62, 2.34, 0.20 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY] |  |  | 0.00, 0.00, 1.92, 0.20 |
| TextBox | Text200 |  | ="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client] |  |  | 0.00, 0.42, 2.34, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol] |  |  | 0.00, 0.21, 2.34, 0.20 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Combo123 |  | ="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*" |  |  | 0.00, 0.01, 4.88, 0.20 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text197 |  | Age_Class |  |  | 0.08, 0.01, 3.40, 0.19 |

## Section: GroupFooter6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.15, 0.00, 0.66, 0.20 |
| ComboBox | Combo52 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.25, 0.01, 3.24, 0.00 |
| TextBox | Text105 |  | =Sum([GROSS]) |  |  | 4.84, 0.00, 0.60, 0.20 |
| TextBox | Text107 |  | =Sum([NET_INV_M]) |  |  | 5.45, 0.00, 0.55, 0.20 |
| TextBox | Text147 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.68, 0.00, 0.51, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.15, 0.61, 0.20 |
| TextBox | Text97 |  | =Sum([GROSS]) |  |  | 4.86, 0.15, 0.59, 0.20 |
| TextBox | Text99 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.15, 0.55, 0.20 |
| TextBox | Text141 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.64, 0.15, 0.57, 0.20 |
| TextBox | Combo135 |  | Age_Class |  |  | 0.62, 0.17, 3.01, 0.18 |
| Label | Label198 | Total For:  |  |  |  | 0.00, 0.17, 0.64, 0.18 |
| Label | Label206 | ----------- |  |  |  | 4.28, 0.00, 0.56, 0.13 |
| Label | Label207 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| Label | Label208 | ----------- |  |  |  | 5.42, 0.00, 0.60, 0.15 |
| Label | Label209 | ----------- |  |  |  | 3.55, 0.00, 0.66, 0.13 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text163 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label164 | Total For:  |  |  |  | 0.00, 0.09, 0.64, 0.18 |
| Label | Label165 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text166 |  | =Sum([GROSS]) |  |  | 4.85, 0.10, 0.59, 0.20 |
| Label | Label167 | ----------- |  |  |  | 4.82, 0.00, 0.62, 0.15 |
| TextBox | Text168 |  | =Sum([NET_INV_M]) |  |  | 5.45, 0.10, 0.55, 0.20 |
| Label | Label169 | ----------- |  |  |  | 5.40, 0.00, 0.60, 0.15 |
| TextBox | Text170 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.63, 0.10, 0.57, 0.20 |
| Label | Label171 | ----------- |  |  |  | 3.54, 0.00, 0.66, 0.13 |
| ComboBox | Combo173 |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 0.62, 0.09, 1.83, 0.18 |

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
| TextBox | Text133 |  | ="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*" |  |  | 0.45, 0.11, 3.16, 0.18 |
| TextBox | Text143 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.64, 0.10, 0.57, 0.20 |
| Label | Label144 | ----------- |  |  |  | 3.55, 0.00, 0.66, 0.13 |

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
| TextBox | Text193 |  | ="*Requested for FY " & [END_FY] & "*" |  |  | 0.44, 0.11, 3.16, 0.18 |
| TextBox | Text194 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.63, 0.10, 0.57, 0.20 |
| Label | Label195 | ----------- |  |  |  | 3.54, 0.00, 0.66, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.19, 2.13, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.93, 0.19 |
