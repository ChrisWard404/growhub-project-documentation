# Report: NMIS_PRODUCT_MGMT_CODES subreport_bu

**Caption:** NMIS_PRODUCT_MGMT_CODES subreport  
**Record source:**

```sql
SELECT NMIS_PRODUCT_MGMT_CODES_QUERY.ACTIVITY_CODE, NMIS_PRODUCT_MGMT_CODES_QUERY.PRODUCT_GRADE, NMIS_PRODUCT_MGMT_CODES_QUERY.PRODUCT_CN, NMIS_PRODUCT_MGMT_CODES_QUERY.CATEGORY_CODE, NMIS_PRODUCT_MGMT_CODES_QUERY.FISCAL_YEAR, NMIS_PRODUCT_MGMT_CODES_QUERY.MGMT_CODE, NMIS_PRODUCT_MGMT_CODES_QUERY.PERCENT_OF_CHARGE, NMIS_PRODUCT_MGMT_CODES_QUERY.PMC_LINK, Round([PERCENT_OF_CHARGE]/100*[CHARGE_PER_UNIT],2) AS Dollars_Per_Unit, Round([PERCENT_OF_CHARGE]/100*[CHARGE_PER_AMT],2) AS Dollars_Per_amt FROM NMIS_PRODUCT_CHARGES_QUERY INNER JOIN NMIS_PRODUCT_MGMT_CODES_QUERY ON NMIS_PRODUCT_CHARGES_QUERY.PMC_LINK = NMIS_PRODUCT_MGMT_CODES_QUERY.PMC_LINK WHERE (((NMIS_PRODUCT_MGMT_CODES_QUERY.ACTIVITY_CODE) Like IIf([Forms]![Products_Price_Reports]![Hide_JobCodes]=-1,"","*")) AND ((NMIS_PRODUCT_MGMT_CODES_QUERY.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]) AND ((NMIS_PRODUCT_CHARGES_QUERY.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]));
```

**Grouping/sorting:** `MGMT_CODE`, `PERCENT_OF_CHARGE`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line14 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 0.00, 0.00, 0.71, 0.18 |
| TextBox | PERCENT_OF_CHARGE |  | PERCENT_OF_CHARGE |  |  | 0.72, 0.00, 0.35, 0.18 |
| Label | Label17 | % |  |  |  | 1.08, 0.00, 0.18, 0.18 |
| TextBox | Dollars_Per_Unit |  | Dollars_Per_Unit |  |  | 1.28, 0.00, 0.67, 0.18 |
| TextBox | Dollars_Per_amt |  | Dollars_Per_amt |  |  | 1.95, 0.00, 0.71, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line15 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
