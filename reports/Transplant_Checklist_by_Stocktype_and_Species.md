# Report: Transplant_Checklist_by_Stocktype_and_Species

**Caption:** Transplant_Checklist  
**Record source:**

```sql
Transplant_Checklist Query
```

**Grouping/sorting:** `SPECIES_PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `TP For`, `ID`, `SIZE_SPEC_STRING`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SPECIES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 3.97, 0.16, 2.81, 0.19 |
| Label | Label33 | Transplanting Checklist |  |  |  | 4.28, 0.56, 2.18, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.75, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.75, 0.00, 3.24, 0.16 |
| TextBox | Text46 |  | ="FY " & Forms!Switchboard!FY_For_Reports |  |  | 3.75, 0.76, 3.29, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Major_Client_Label | Owned By (For) |  |  |  | 3.70, 0.04, 1.00, 0.19 |
| Label | ID_Label | ID |  |  |  | 0.10, 0.04, 0.72, 0.19 |
| Label | SIZE_SPEC_STRING_Label | Size Spec |  |  |  | 4.72, 0.04, 0.75, 0.19 |
| Label | BEGIN_FY_Label | Beg FY |  |  |  | 5.96, 0.04, 0.48, 0.19 |
| Label | END_FY_Label | End FY |  |  |  | 6.51, 0.04, 0.53, 0.19 |
| Label | TOTAL_REQUEST_Label | Req(M) |  |  |  | 5.45, 0.04, 0.51, 0.19 |
| Label | SOURCE_LOT_CN_Label | Source Lot |  |  |  | 0.85, 0.04, 1.36, 0.19 |
| Line | Line24 |  |  |  |  | 0.00, 0.00, 10.49, 0.00 |
| Line | Line25 |  |  |  |  | 0.00, 0.28, 10.49, 0.00 |
| Label | Label26 | Previous Nursery |  |  |  | 7.12, 0.04, 1.48, 0.19 |
| Label | Label28 | Prev ID |  |  |  | 9.79, 0.04, 0.50, 0.19 |
| Label | Label35 | Location |  |  |  | 8.67, 0.04, 1.12, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 0.01, 0.00, 2.71, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, "(" & [PLNTMSTR_SYMBOL] & ") " & [VERNACULAR] AS Code_N_Name FROM NMIS_SPECIES;  |  | 0.00, 0.03, 3.33, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Major_Client |  | TP For |  |  | 3.66, 0.00, 1.11, 0.19 |
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE2 |  |  | 0.10, 0.00, 3.56, 0.19 |
| TextBox | SIZE_SPEC_STRING |  | SIZE_SPEC_STRING |  |  | 4.76, 0.00, 0.72, 0.19 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 5.48, 0.00, 0.53, 0.19 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 6.01, 0.00, 0.49, 0.19 |
| TextBox | END_FY |  | END_FY |  |  | 6.51, 0.00, 0.53, 0.19 |
| ComboBox | Text27 |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 7.07, 0.00, 1.57, 0.19 |
| TextBox | Text29 |  | Prev_ID |  |  | 9.74, 0.00, 0.76, 0.19 |
| TextBox | Begin_Bed |  | Location |  |  | 8.67, 0.00, 1.04, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Now() |  |  | 0.04, 0.10, 3.50, 0.00 |
| TextBox | Text22 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.10, 0.10, 3.38, 0.00 |
| Line | Line30 |  |  |  |  | 0.00, 0.04, 10.49, 0.00 |
