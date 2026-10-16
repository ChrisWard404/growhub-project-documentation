# Report: NMIS_AGREEMENTS_Summary_Report

**Caption:** Agreement Confirmation Summary Report  
**Record source:**

```sql
Agreement_Lot_Confirmation_Query
```

**Grouping/sorting:** `DIVERSE`, `ASSOCIATE`, `UNIT_CODE`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `Contact_Name`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Original Request |  |  |  | 5.72, 1.04, 0.62, 0.33 |
| Label | SOURCE_CODE_Label | Species |  |  |  | 1.43, 1.21, 0.62, 0.18 |
| Line | Line31 |  |  |  |  | 0.00, 1.39, 7.99, 0.01 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.55, 0.16, 2.81, 0.19 |
| Label | Label33 | Agreement Confirmation Summary Report |  |  |  | 2.38, 0.55, 3.36, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.33, 0.00, 3.24, 0.16 |
| Label | Label110 | Adjusted Request |  |  |  | 6.61, 1.04, 0.68, 0.33 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] |  |  | 0.00, 0.00, 1.92, 0.20 |
| TextBox | Text132 |  | ="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY] |  |  | 0.00, 0.20, 1.92, 0.20 |
| TextBox | Text133 |  | ="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client] |  |  | 0.00, 0.40, 2.08, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol] |  |  | 0.00, 0.59, 2.08, 0.20 |
| Label | Label140 | Stocktype |  |  |  | 0.07, 1.21, 0.97, 0.18 |
| TextBox | Text39 |  | =IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species") |  |  | 2.46, 0.79, 3.21, 0.26 |
| ComboBox | Combo178 |  | =[Forms]![NMIS_AGREEMENT_LOTS_Report]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for Contact " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.79, 2.36, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ASSOCIATE |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [Associate_Name] & " (" & [Associate] & ")" AS Associate_Header FROM NMIS_ASSOCIATES;  |  | 0.00, 0.00, 7.31, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text124 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.30, 0.00, 0.84, 0.20 |
| TextBox | Text128 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.42, 0.00, 0.84, 0.20 |
| TextBox | Text129 |  | PRODUCT_DESC |  |  | 0.04, 0.00, 1.20, 0.20 |
| TextBox | Vernacular_With_Code |  | Vernacular_With_Code |  |  | 1.26, 0.00, 1.99, 0.20 |
| TextBox | Scientific_Name |  | Scientific_Name |  |  | 3.25, 0.00, 2.00, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line147 |  |  |  |  | 0.00, 0.02, 7.94, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.30, 0.01, 0.84, 0.20 |
| Label | Label51 | Total For:  |  |  |  | 0.04, 0.00, 0.86, 0.21 |
| ComboBox | Combo52 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.95, 0.00, 4.18, 0.21 |
| TextBox | Text119 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.42, 0.01, 0.84, 0.20 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text142 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.30, 0.02, 0.84, 0.20 |
| TextBox | Text144 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.42, 0.02, 0.84, 0.20 |
| TextBox | Text146 |  | ="Total For " & IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species") & ":" |  |  | 0.00, 0.00, 3.21, 0.22 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.17, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.04, 0.04, 7.92, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text131 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.30, 0.00, 0.84, 0.20 |
| Label | Label132 | Grand Totals:  |  |  |  | 0.00, 0.01, 1.12, 0.20 |
| TextBox | Text137 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 5.42, 0.00, 0.84, 0.20 |
