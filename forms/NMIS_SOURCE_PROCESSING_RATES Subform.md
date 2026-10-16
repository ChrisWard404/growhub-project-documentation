# Form: NMIS_SOURCE_PROCESSING_RATES Subform

**Caption:** NMIS_SOURCE_PROCESSING_RATES  
**Record source:**

```sql
SELECT NMIS_SOURCE_PROCESSING_RATES.* FROM NMIS_SOURCE_PROCESSING_RATES WHERE (((NMIS_SOURCE_PROCESSING_RATES.FY) Like [Forms]![NMIS_SOURCE_PROCESSING_RATES]![Like_FY] & "*")) ORDER BY NMIS_SOURCE_PROCESSING_RATES.FY DESC , NMIS_SOURCE_PROCESSING_RATES.PROCESSING_RATE_CODE, NMIS_SOURCE_PROCESSING_RATES.PROCESSING_RATE_CODE, NMIS_SOURCE_PROCESSING_RATES.ACTIVITY_CODE, NMIS_SOURCE_PROCESSING_RATES.MIN, NMIS_SOURCE_PROCESSING_RATES.MAX;
```

**Backend tables referenced:** `NMIS_SOURCE_PROCESSING_RATES`  
**Embedded in:** `Form:NMIS_SOURCE_PROCESSING_RATES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label8 | Proc Code |  |  |  | 1.11, 0.04, 0.57, 0.37 |
| Label | Label9 | Description |  |  |  | 6.12, 0.04, 2.29, 0.37 |
| Label | Label10 | Charge Per Unit |  |  |  | 3.30, 0.04, 0.66, 0.37 |
| Label | Label11 | FY |  |  |  | 0.06, 0.04, 0.50, 0.37 |
| Label | Label12 | Charge Per ACT |  |  |  | 4.01, 0.04, 0.66, 0.37 |
| Label | Label15 | Unit Code |  |  |  | 4.72, 0.04, 0.54, 0.37 |
| Label | Label18 | Income Job Code |  |  |  | 5.31, 0.04, 0.76, 0.37 |
| Label | Label13 | Min |  |  |  | 2.39, 0.04, 0.41, 0.38 |
| Label | Label20 | Max |  |  |  | 2.84, 0.04, 0.41, 0.38 |
| Label | Label21 | ACT Code |  |  |  | 1.73, 0.04, 0.63, 0.37 |
| Label | Label23 | CAT Code |  |  |  | 0.60, 0.04, 0.46, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PROCESSING_RATE_CODE |  | PROCESSING_RATE_CODE |  |  | 1.11, 0.03, 0.57, 0.21 |
| TextBox | FY |  | FY |  |  | 0.06, 0.03, 0.50, 0.21 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 3.30, 0.03, 0.66, 0.21 |
| TextBox | DESCRIPTION |  | DESCRIPTION |  |  | 6.12, 0.03, 2.29, 0.21 |
| TextBox | CHARGE_PER_ACTIVITY |  | CHARGE_PER_ACTIVITY |  |  | 4.01, 0.03, 0.66, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.72, 0.03, 0.54, 0.21 |
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 5.31, 0.03, 0.75, 0.21 |
| TextBox | MIN |  | MIN |  |  | 2.39, 0.03, 0.41, 0.20 |
| TextBox | MAX |  | MAX |  |  | 2.84, 0.03, 0.41, 0.20 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 1.73, 0.03, 0.63, 0.21 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 0.60, 0.03, 0.46, 0.21 |
