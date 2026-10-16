# Report: Balances_By_Age_Class_and_End_Date

**Caption:** Balance by Age Class  
**Record source:**

```sql
Age_Class_balances_from_transactions_by_activity_date
```

**Grouping/sorting:** `CATEGORY_CODE`, `END_FY`, `AGE_CLASS_CURRENT`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Current Age Class |  |  |  | 1.92, 1.28, 0.75, 0.33 |
| Label | SOURCE_LOT_CN_Label | Number of Lots |  |  |  | 9.79, 1.28, 0.55, 0.33 |
| Label | TOTAL_REQUEST_Label |   Next   Age Class |  |  |  | 6.24, 1.28, 0.71, 0.35 |
| Label | CLIENT_ASSOCIATE_Label | Net Est. (M) |  |  |  | 9.23, 1.28, 0.57, 0.33 |
| Label | AMOUNT_REQUESTED_Label | Gross Est. (M) |  |  |  | 8.46, 1.28, 0.67, 0.34 |
| Label | Label60 | Previous Age Class |  |  |  | 4.17, 1.28, 0.72, 0.33 |
| Label | Label80 | Nursery Management Information System |  |  |  | 3.73, 0.16, 2.81, 0.19 |
| Label | Label81 | Balance by Age Class |  |  |  | 3.68, 0.55, 2.91, 0.22 |
| TextBox | Text82 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.51, 0.35, 3.24, 0.20 |
| Label | Label83 | USDA Forest Service |  |  |  | 3.51, 0.00, 3.24, 0.16 |
| Label | Label86 | Nursery Management Information System |  |  |  | 3.73, 0.16, 2.81, 0.19 |
| Label | Label87 | Balance by Age Class |  |  |  | 3.68, 0.55, 2.91, 0.22 |
| TextBox | Text88 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.51, 0.35, 3.24, 0.20 |
| Label | Label89 | USDA Forest Service |  |  |  | 3.51, 0.00, 3.24, 0.16 |
| Label | Label92 | Nursery Management Information System |  |  |  | 3.73, 0.16, 2.81, 0.19 |
| TextBox | Text94 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.51, 0.35, 3.24, 0.20 |
| Label | Label95 | USDA Forest Service |  |  |  | 3.51, 0.00, 3.24, 0.16 |
| TextBox | Text96 | As of: | As_Of_Date |  |  | 5.06, 1.00, 0.00, 0.23 |
| Line | Line101 |  |  |  |  | 0.00, 1.64, 10.34, 0.00 |
| Line | Line102 |  |  |  |  | 0.00, 1.26, 10.34, 0.00 |
| ComboBox | Text113 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 3.53, 0.77, 3.29, 0.23 |
| Label | Label123 | Product Description |  |  |  | 0.03, 1.28, 0.75, 0.33 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | END_FY | End FY: | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.58, 0.00, 1.10, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGE_CLASS_CURRENT |  | AGE_CLASS_CURRENT |  |  | 1.90, 0.00, 2.26, 0.20 |
| TextBox | CountOfID |  | CountOfID |  |  | 10.00, 0.00, 0.32, 0.20 |
| TextBox | Age_Class_Previous |  | Age_Class_Previous |  |  | 4.17, 0.00, 2.06, 0.20 |
| TextBox | Age_Class_Next |  | Age_Class_Next |  |  | 6.23, 0.00, 2.12, 0.20 |
| TextBox | Gross |  | Gross |  |  | 8.38, 0.00, 0.72, 0.20 |
| TextBox | Net |  | Net |  |  | 9.20, 0.00, 0.69, 0.20 |
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.00, 0.00, 1.88, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo126 | Totals for End FY: | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 1.33, 0.00, 1.04, 0.20 |
| TextBox | Text130 |  | =Sum([Gross]) |  |  | 8.25, 0.01, 0.84, 0.19 |
| Line | Line131 |  |  |  |  | 8.47, 0.01, 0.62, 0.00 |
| TextBox | Text133 |  | =Sum([Net]) |  |  | 9.20, 0.01, 0.69, 0.19 |
| Line | Line134 |  |  |  |  | 9.18, 0.01, 0.71, 0.00 |
| TextBox | Text135 |  | =Sum([CountOfID]) |  |  | 9.90, 0.01, 0.43, 0.19 |
| Line | Line136 |  |  |  |  | 10.07, 0.01, 0.25, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text103 |  | =Sum([Gross]) |  |  | 8.25, 0.01, 0.84, 0.23 |
| TextBox | Text104 |  | =Sum([Net]) |  |  | 9.20, 0.01, 0.69, 0.23 |
| Line | Line105 |  |  |  |  | 8.27, 0.01, 0.82, 0.00 |
| Line | Line106 |  |  |  |  | 9.20, 0.01, 0.71, 0.00 |
| TextBox | Text107 |  | =Sum([CountOfID]) |  |  | 9.92, 0.01, 0.43, 0.23 |
| Line | Line120 |  |  |  |  | 10.08, 0.01, 0.25, 0.00 |
| Line | Line132 |  |  |  |  | 8.27, 0.01, 0.82, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.01, 0.02, 3.50, 0.18 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.18, 0.02, 3.17, 0.18 |
| Line | Line100 |  |  |  |  | 0.04, 0.02, 10.17, 0.00 |
