# Form: NMIS_CLIENT_MGMT_CODES_Prod_Ship

**Caption:** NMIS CLIENT Bill To  CODES  
**Record source:**

```sql
SELECT NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED, NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_CLIENT_MGMT_CODES LEFT JOIN NMIS_ID_ACTIVITIES ON NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN=NMIS_ID_ACTIVITIES.CN;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CLIENT_MGMT_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`  
**Opened from (VBA):** `Form_NMIS_SHIPPING_ID_ACTIVITIES subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Payee |  |  |  | 0.05, 0.04, 0.80, 0.21 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.90, 0.04, 0.87, 0.21 |
| Label | MGMT_CODE_PCT_Label | Pct |  |  |  | 1.79, 0.04, 0.33, 0.20 |
| Label | FISCAL_YEAR_USED_Label | FY |  |  |  | 2.15, 0.04, 0.53, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 0.89, 0.04, 0.87, 0.21 |
| TextBox | MGMT_CODE_PCT |  | MGMT_CODE_PCT |  |  | 1.79, 0.04, 0.34, 0.20 |
| ComboBox | Fiscal_Year_Used |  | FISCAL_YEAR_USED | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 2.15, 0.04, 0.53, 0.20 |
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.05, 0.04, 0.80, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_ID_CN |  | ACTIVITY_ID_CN |  |  | 0.08, 0.08, 0.75, 0.00 |
| TextBox | Total_PCT | Total %: | =Sum([MGMT_CODE_PCT]) |  |  | 1.76, 0.08, 0.34, 0.21 |
