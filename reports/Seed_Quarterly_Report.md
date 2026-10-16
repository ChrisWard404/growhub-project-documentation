# Report: Seed_Quarterly_Report

**Caption:** Seed_Quarterly_Report  
**Record source:**

```sql
Seed_Quarterly_Report Query
```

**Grouping/sorting:** `DIVERSE`, `PLNTMSTR_SYMBOL`  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`, `Form_Seed_Quarterly_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PLNTMSTR_SYMBOL_Label | Species Code |  |  |  | 0.03, 1.20, 0.56, 0.33 |
| Label | BEGIN_BALANCE_Label | Beginning Inventory |  |  |  | 2.69, 1.20, 0.70, 0.33 |
| Label | DONATION_Label | Donation |  |  |  | 3.48, 1.35, 0.59, 0.18 |
| Label | WEIGHT_CHANGE_Label | Weight Change |  |  |  | 4.35, 1.20, 0.51, 0.33 |
| Label | XFER_IN_Label | Added to Inventory  |  |  |  | 5.04, 1.20, 0.65, 0.33 |
| Label | XFER_OUT_Label | Xfer Out |  |  |  | 5.81, 1.35, 0.54, 0.18 |
| Label | DESTROY_Label | Destroy |  |  |  | 6.53, 1.35, 0.51, 0.18 |
| Label | SALES_Label | Sales |  |  |  | 7.32, 1.35, 0.38, 0.18 |
| Label | SOWN_Label | Sowing |  |  |  | 8.00, 1.35, 0.50, 0.18 |
| Label | TESTING_Label | Testing |  |  |  | 8.77, 1.35, 0.50, 0.18 |
| Label | END_BALANCE_Label | Ending Balance |  |  |  | 9.63, 1.20, 0.53, 0.33 |
| Line | Line27 |  |  |  |  | 0.00, 1.53, 10.29, 0.00 |
| Label | Label29 | Species Common Name |  |  |  | 0.88, 1.35, 1.48, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.86, 0.16, 2.81, 0.19 |
| Label | Label33 | Traditional and Non-Traditional SOURCE INVENTORY REPORT |  |  |  | 3.00, 0.56, 4.58, 0.17 |
| TextBox | Text37 |  | =Forms!Seed_Quarterly_Report!Begin_Date |  |  | 3.00, 0.74, 2.17, 0.20 |
| TextBox | Text41 |  | =Forms!Seed_Quarterly_Report!End_Date |  |  | 5.38, 0.74, 2.20, 0.21 |
| Label | Label42 | to |  |  |  | 5.18, 0.74, 0.21, 0.20 |
| TextBox | Text43 | Like Client: | =Forms!Seed_Quarterly_Report!Like_Client |  |  | 5.03, 0.95, 0.59, 0.20 |
| Line | Line47 |  |  |  |  | 0.00, 1.18, 10.29, 0.00 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.64, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.64, 0.00, 3.24, 0.16 |
| ComboBox | Text93 |  | =Forms!Seed_Quarterly_Report!Category_Code | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 5.63, 0.96, 2.16, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo107 |  | DIVERSE | 0;Traditional;-1;Non-Traditional |  | 0.00, 0.00, 3.67, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BEGIN_BALANCE |  | BEGINNING_BALANCE |  |  | 2.55, 0.00, 0.82, 0.00 |
| TextBox | DONATION |  | DONATION |  |  | 3.42, 0.00, 0.65, 0.00 |
| TextBox | WEIGHT_CHANGE |  | WEIGHT_CHANGE |  |  | 4.10, 0.00, 0.78, 0.00 |
| TextBox | XFER_IN |  | XFER_IN |  |  | 4.95, 0.00, 0.71, 0.00 |
| TextBox | XFER_OUT |  | XFER_OUT |  |  | 5.68, 0.00, 0.71, 0.00 |
| TextBox | DESTROY |  | DESTROY |  |  | 6.38, 0.00, 0.72, 0.00 |
| TextBox | SALES |  | SALES |  |  | 7.11, 0.00, 0.68, 0.00 |
| TextBox | SOWN |  | SOWN |  |  | 7.84, 0.00, 0.77, 0.00 |
| TextBox | TESTING |  | TESTING |  |  | 8.66, 0.00, 0.66, 0.00 |
| TextBox | END_BALANCE |  | ENDING_BALANCE |  |  | 9.34, 0.00, 0.88, 0.00 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.04, 0.00, 0.62, 0.00 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 0.71, 0.00, 1.82, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text96 |  | =Sum([BEGINNING_BALANCE]) |  |  | 2.50, 0.00, 0.88, 0.00 |
| TextBox | Text97 |  | =Sum([DONATION]) |  |  | 3.40, 0.00, 0.67, 0.00 |
| TextBox | Text98 |  | =Sum([WEIGHT_CHANGE]) |  |  | 4.10, 0.00, 0.78, 0.00 |
| TextBox | Text99 |  | =Sum([XFER_IN]) |  |  | 4.95, 0.00, 0.71, 0.00 |
| TextBox | Text100 |  | =Sum([XFER_OUT]) |  |  | 5.68, 0.00, 0.71, 0.00 |
| TextBox | Text101 |  | =Sum([DESTROY]) |  |  | 6.38, 0.00, 0.72, 0.00 |
| TextBox | Text102 |  | =Sum([SALES]) |  |  | 7.11, 0.00, 0.68, 0.00 |
| TextBox | Text103 |  | =Sum([SOWN]) |  |  | 7.84, 0.00, 0.77, 0.00 |
| TextBox | Text104 |  | =Sum([TESTING]) |  |  | 8.66, 0.00, 0.66, 0.00 |
| TextBox | Text105 |  | =Sum([ENDING_BALANCE]) |  |  | 9.40, 0.00, 0.82, 0.00 |
| ComboBox | Combo109 |  | DIVERSE | 0;Traditional Totals;-1;Non-Traditional Totals |  | 0.00, 0.00, 2.46, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text24 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.79, 0.27, 3.50, 0.18 |
| Label | Label30 | All quantities being reported in pounds |  |  |  | 0.04, 0.03, 2.63, 0.19 |
| TextBox | Text39 |  | =Now() |  |  | 0.04, 0.28, 1.67, 0.00 |
| Line | Line90 |  |  |  |  | 0.00, 0.02, 10.29, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label46 | Sum: |  |  |  | 0.10, 0.03, 0.39, 0.17 |
| TextBox | Text79 |  | =Sum([BEGINNING_BALANCE]) |  |  | 2.50, 0.02, 0.88, 0.00 |
| TextBox | Text80 |  | =Sum([DONATION]) |  |  | 3.42, 0.03, 0.65, 0.00 |
| TextBox | Text81 |  | =Sum([WEIGHT_CHANGE]) |  |  | 4.10, 0.02, 0.78, 0.00 |
| TextBox | Text82 |  | =Sum([XFER_IN]) |  |  | 4.95, 0.02, 0.71, 0.00 |
| TextBox | Text83 |  | =Sum([XFER_OUT]) |  |  | 5.68, 0.02, 0.71, 0.00 |
| TextBox | Text84 |  | =Sum([DESTROY]) |  |  | 6.38, 0.02, 0.72, 0.00 |
| TextBox | Text85 |  | =Sum([SALES]) |  |  | 7.11, 0.02, 0.68, 0.00 |
| TextBox | Text86 |  | =Sum([SOWN]) |  |  | 7.84, 0.02, 0.77, 0.00 |
| TextBox | Text87 |  | =Sum([TESTING]) |  |  | 8.66, 0.02, 0.66, 0.00 |
| TextBox | Text88 |  | =Sum([ENDING_BALANCE]) |  |  | 9.40, 0.02, 0.82, 0.00 |
| Line | Line89 |  |  |  |  | 0.00, 0.00, 10.29, 0.00 |
