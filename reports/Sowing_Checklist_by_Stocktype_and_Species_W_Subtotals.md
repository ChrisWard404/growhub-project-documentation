# Report: Sowing_Checklist_by_Stocktype_and_Species_W_Subtotals

**Caption:** Transplant_Checklist  
**Record source:**

```sql
Sowing_Checklist Query
```

**Grouping/sorting:** `SPECIES_PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `TP For`, `ID`, `SIZE_SPEC_STRING`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SPECIES`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 3.88, 0.16, 2.81, 0.19 |
| Label | Label33 | Sowing Checklist |  |  |  | 4.19, 0.56, 2.20, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.67, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.67, 0.00, 3.24, 0.16 |
| TextBox | Text46 |  | ="FY " & Forms!Switchboard!FY_For_Reports |  |  | 3.67, 0.76, 3.29, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Major_Client_Label | Owned By (For) |  |  |  | 3.60, 0.04, 1.00, 0.19 |
| Label | ID_Label | ID |  |  |  | 0.00, 0.04, 0.72, 0.19 |
| Label | SIZE_SPEC_STRING_Label | Size Spec |  |  |  | 4.61, 0.04, 0.71, 0.19 |
| Label | BEGIN_FY_Label | Beg FY |  |  |  | 5.85, 0.04, 0.48, 0.19 |
| Label | END_FY_Label | End FY |  |  |  | 6.40, 0.04, 0.53, 0.19 |
| Label | TOTAL_REQUEST_Label | Req(M) |  |  |  | 5.34, 0.04, 0.51, 0.19 |
| Label | SOURCE_LOT_CN_Label | Source Lot |  |  |  | 0.75, 0.04, 1.49, 0.19 |
| Line | Line24 |  |  |  |  | 0.00, 0.00, 10.50, 0.00 |
| Line | Line25 |  |  |  |  | 0.00, 0.28, 10.50, 0.00 |
| Label | Label26 | Previous Nursery |  |  |  | 7.01, 0.04, 1.07, 0.19 |
| Label | Label28 | Prev ID |  |  |  | 9.87, 0.04, 0.50, 0.19 |
| Label | Label35 | Location |  |  |  | 8.38, 0.04, 1.12, 0.19 |
| Label | Label48 | BF |  |  |  | 9.49, 0.04, 0.39, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 0.05, 0.00, 2.71, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, "(" & [PLNTMSTR_SYMBOL] & ") " & [VERNACULAR] AS Code_N_Name FROM NMIS_SPECIES;  |  | 0.06, 0.02, 3.33, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Major_Client |  | TP For |  |  | 3.56, 0.00, 1.11, 0.19 |
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE2 |  |  | 0.00, 0.00, 3.56, 0.19 |
| TextBox | SIZE_SPEC_STRING |  | SIZE_SPEC_STRING |  |  | 4.61, 0.00, 0.72, 0.19 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 5.35, 0.00, 0.53, 0.19 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 5.89, 0.00, 0.49, 0.19 |
| TextBox | END_FY |  | END_FY |  |  | 6.40, 0.00, 0.53, 0.19 |
| ComboBox | Text27 |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 6.96, 0.00, 1.41, 0.19 |
| TextBox | Begin_Bed |  | Location |  |  | 8.38, 0.00, 1.04, 0.19 |
| TextBox | BF_Transplanted |  | BF_Transplanted |  |  | 9.42, 0.00, 0.46, 0.19 |
| TextBox | Text29 |  | Prev_ID |  |  | 9.88, 0.00, 0.63, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Sum([TOTAL_REQUEST]) |  |  | 4.80, 0.02, 1.07, 0.19 |
| TextBox | Text40 |  | ="Subtotal for " & [PLNTMSTR_SYMBOL] |  |  | 0.00, 0.01, 2.71, 0.20 |
| Line | Line41 |  |  |  |  | 5.33, 0.00, 0.54, 0.00 |
| TextBox | Text50 |  | =Sum(nz([BF_Transplanted],0)) |  |  | 8.81, 0.02, 1.07, 0.19 |
| Line | Line55 |  |  |  |  | 9.34, 0.00, 0.54, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text36 |  | =Sum([TOTAL_REQUEST]) |  |  | 4.80, 0.06, 1.07, 0.19 |
| TextBox | Text37 |  | ="Subtotal for " & [SPECIES_PRODUCT_DESC] |  |  | 0.05, 0.05, 2.71, 0.20 |
| Line | Line38 |  |  |  |  | 5.33, 0.04, 0.54, 0.00 |
| TextBox | Text51 |  | =Sum(nz([BF_Transplanted],0)) |  |  | 8.81, 0.06, 1.07, 0.19 |
| Line | Line52 |  |  |  |  | 9.34, 0.04, 0.54, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Now() |  |  | 0.04, 0.10, 3.50, 0.00 |
| TextBox | Text22 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.98, 0.10, 3.50, 0.00 |
| Line | Line30 |  |  |  |  | 0.00, 0.04, 10.50, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([TOTAL_REQUEST]) |  |  | 4.80, 0.02, 1.07, 0.19 |
| Line | Line44 |  |  |  |  | 5.28, 0.00, 0.54, 0.00 |
| Label | Label45 | TOTAL |  |  |  | 45.50, 0.03, 0.74, 0.19 |
| TextBox | Text53 |  | =Sum([TOTAL_REQUEST]) |  |  | 8.81, 0.02, 1.07, 0.19 |
| Line | Line54 |  |  |  |  | 9.34, 0.00, 0.54, 0.00 |
