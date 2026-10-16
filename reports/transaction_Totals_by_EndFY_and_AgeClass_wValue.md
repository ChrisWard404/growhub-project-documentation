# Report: transaction_Totals_by_EndFY_and_AgeClass_wValue

**Caption:** transaction_Totals_by_location_Type  
**Grouping/sorting:** `END_FY`, `CATEGORY_CODE`, `Age_Class`  
**Backend tables referenced:** `NMIS_CATEGORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Net_Density_Label | Net (M) |  |  |  | 4.69, 1.07, 0.52, 0.19 |
| Label | Gross_Density_Label | Gross (M) |  |  |  | 3.79, 1.07, 0.65, 0.19 |
| Line | Line26 |  |  |  |  | 0.35, 1.02, 7.27, 0.00 |
| Line | Line27 |  |  |  |  | 0.35, 1.30, 7.27, 0.00 |
| Label | Label58 | *Value ($) |  |  |  | 6.81, 1.07, 0.66, 0.19 |
| Label | Label59 | Unit Price ($/M) |  |  |  | 5.44, 1.07, 1.12, 0.19 |
| Label | Label67 | Age Class |  |  |  | 1.52, 1.07, 0.62, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label24 | Transaction Totals By End FY and Age Class |  |  |  | 2.27, 0.57, 3.59, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | END_FY | End FY: | END_FY |  |  | 0.92, 0.08, 0.00, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 0.38, 0.04, 3.88, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Net_Density |  | Net |  |  | 4.62, 0.03, 0.57, 0.19 |
| TextBox | Gross_Density |  | Gross |  |  | 3.79, 0.03, 0.65, 0.19 |
| TextBox | CHARGE_PER_AMT |  | CHARGE_PER_AMT |  |  | 5.71, 0.03, 0.71, 0.19 |
| TextBox | Value |  | Value |  |  | 6.46, 0.03, 0.97, 0.19 |
| TextBox | Age_Class |  | Age_Class |  |  | 0.71, 0.03, 2.83, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo71 | Totals for: | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 1.54, 0.08, 2.12, 0.19 |
| TextBox | Text75 |  | =Sum([Net]) |  |  | 4.54, 0.08, 0.66, 0.19 |
| TextBox | Text76 |  | =Sum([Gross]) |  |  | 3.69, 0.08, 0.75, 0.19 |
| Line | Line77 |  |  |  |  | 4.62, 0.00, 0.58, 0.00 |
| Line | Line78 |  |  |  |  | 3.72, 0.00, 0.71, 0.00 |
| TextBox | Text79 |  | =Sum([Value]) |  |  | 6.33, 0.08, 1.09, 0.19 |
| Line | Line80 |  |  |  |  | 6.84, 0.00, 0.58, 0.00 |
| Line | Line31 |  |  |  |  | 0.82, 0.29, 6.97, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text29 |  | =Sum([Net]) |  |  | 4.54, 0.08, 0.66, 0.19 |
| TextBox | Text30 |  | =Sum([Gross]) |  |  | 3.69, 0.08, 0.75, 0.19 |
| TextBox | Text62 |  | =Sum([Value]) |  |  | 6.33, 0.08, 1.09, 0.19 |
| TextBox | Text73 | Totals For End FY: | END_FY |  |  | 1.67, 0.08, 0.00, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Now() |  |  | 0.53, 0.17, 3.50, 0.00 |
| TextBox | Text24 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.18, 0.17, 3.50, 0.00 |
| TextBox | FirstOfFISCAL_YEAR | *Value Based on Prices for FY | FirstOfFISCAL_YEAR |  |  | 4.58, 0.02, 0.46, 0.17 |
| Line | Line82 |  |  |  |  | 0.37, 0.01, 7.25, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text37 |  | =Sum([Net]) |  |  | 4.54, 0.08, 0.66, 0.19 |
| TextBox | Text38 |  | =Sum([Gross]) |  |  | 3.69, 0.08, 0.75, 0.19 |
| TextBox | Text69 |  | =Sum([Value]) |  |  | 6.33, 0.08, 1.09, 0.19 |
| Label | Label83 | Totals For All FY's: |  |  |  | 1.96, 0.08, 1.23, 0.19 |
| Line | Line84 |  |  |  |  | 0.37, 0.00, 7.25, 0.00 |
