# Report: NMIS_INCOME_DISTRIBUTION_MGMT_CODES subreport

**Caption:** NMIS_INCOME_DISTRIBUTION_MGMT_CODES subreport  
**Grouping/sorting:** `ID`  
**Backend tables referenced:** `NMIS_PRODUCTS`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CN_Label | Product |  |  |  | 0.04, 0.04, 1.81, 0.24 |
| Label | PRODUCT_GRADE_Label | Product Grade |  |  |  | 1.91, 0.04, 1.01, 0.24 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 3.09, 0.04, 0.74, 0.24 |
| Label | MGMT_CODE_PCT_Label |  % |  |  |  | 3.83, 0.04, 0.41, 0.24 |
| Label | Label12 | UNITS |  |  |  | 4.25, 0.04, 0.53, 0.24 |
| Label | Label14 | Per UNIT |  |  |  | 4.85, 0.04, 0.56, 0.24 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line10 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_GRADE |  | PRODUCT_GRADE |  |  | 2.04, 0.01, 0.88, 0.18 |
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 3.02, 0.01, 0.74, 0.18 |
| TextBox | MGMT_CODE_PCT |  | MGMT_CODE_PCT |  |  | 3.82, 0.01, 0.34, 0.18 |
| ComboBox | PRODUCT_CN |  | PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_CLASS FROM NMIS_PRODUCTS; |  | 0.04, 0.01, 1.81, 0.18 |
| TextBox | UNITS |  | UNITS |  |  | 4.24, 0.01, 0.55, 0.18 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 4.86, 0.01, 0.58, 0.18 |
| TextBox | Text15 |  | =Round([Units]*[CHARGE_PER_UNIT]*([MGMT_CODE_PCT]/100),2) |  |  | 5.52, 0.01, 0.61, 0.18 |
| TextBox | ID |  | ID |  |  | 6.25, 0.01, 0.84, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line11 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
