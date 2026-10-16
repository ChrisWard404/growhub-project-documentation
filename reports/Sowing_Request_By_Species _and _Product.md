# Report: Sowing_Request_By_Species _and _Product

**Caption:** NMIS_AGREEMENT_LOTS  
**Record source:**

```sql
SELECT [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL], [NMIS_PRODUCTS].[CATEGORY_CODE], [NMIS_PRODUCTS].[PRODUCT_CLASS], [NMIS_PRODUCTS].[PRODUCT_DESC], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC], Sum([NMIS_AGREEMENT_LOTS].[TOTAL_REQUEST]) AS SumOfTOTAL_REQUEST FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN]) ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN] GROUP BY [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL], [NMIS_PRODUCTS].[CATEGORY_CODE], [NMIS_PRODUCTS].[PRODUCT_CLASS], [NMIS_PRODUCTS].[PRODUCT_DESC], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC];
```

**Grouping/sorting:** `PLNTMSTR_SYMBOL`, `PRODUCT_CLASS`, `CATEGORY_CODE`, `PRODUCT_DESC`, `SPECIES_PRODUCT_DESC`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line37 |  |  |  |  | 0.00, 0.04, 7.26, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.02, 0.16, 2.81, 0.19 |
| Label | Label33 | Sowing Request Summary By Species and Product |  |  |  | 1.92, 0.57, 3.04, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 1.62, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 1.77, 0.00, 3.24, 0.16 |
| TextBox | Text40 |  | =Format(Date(),"Medium Date") |  |  | 2.43, 0.78, 2.00, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_DESC_Label | Product Description |  |  |  | 4.03, 0.04, 1.54, 0.17 |
| Label | TOTAL_REQUEST_Label | Request(M) |  |  |  | 5.80, 0.04, 0.72, 0.17 |
| Line | Line38 |  |  |  |  | 0.00, 0.00, 7.26, 0.00 |
| Line | Line39 |  |  |  |  | 0.00, 0.26, 7.26, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.08, 0.04, 0.82, 0.21 |
| ComboBox | Text41 |  | PLNTMSTR_SYMBOL | SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES;  |  | 0.94, 0.04, 2.90, 0.20 |

## Section: GroupHeader6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 1.48, 0.00, 2.16, 0.21 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 0.80, 0.00, 0.67, 0.21 |
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 0.17, 0.00, 0.60, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 3.70, 0.00, 2.08, 0.21 |
| TextBox | TOTAL_REQUEST |  | SumOfTOTAL_REQUEST |  |  | 5.95, 0.00, 0.55, 0.21 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label22 | Sum |  |  |  | 4.11, 0.00, 0.34, 0.19 |
| TextBox | Sum Of TOTAL_REQUEST |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 5.78, 0.00, 0.72, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text12 |  | ="Summary for " & [PLNTMSTR_SYMBOL] |  |  | 0.00, 0.00, 2.42, 0.19 |
| TextBox | Sum Of TOTAL_REQUEST3 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 5.78, 0.00, 0.72, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text36 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.76, 0.17, 3.50, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_REQUEST Grand Total Sum |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 5.70, 0.00, 0.80, 0.18 |
| Label | Label25 | Grand Total |  |  |  | 0.04, 0.00, 0.74, 0.17 |
