# Form: NMIS_PROCESSING_ORDERS_INPUT_MC subform

**Caption:** NMIS_ORDER_MGMT_CODES Subform  
**Record source:**

```sql
NMIS_CLIENT_MGMT_CODES
```

**Backend tables referenced:** `NMIS_CLIENT_MGMT_CODES`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_INPUT`, `Form:NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup`, `Form:NMIS_PROCESSING_ORDERS_INPUTbu`, `Form:junk`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.79, 0.04, 0.71, 0.19 |
| Label | MGMT_CODE_PCT_Label | % |  |  |  | 1.54, 0.04, 0.54, 0.19 |
| TextBox | FISCAL_YEAR_USED |  | FISCAL_YEAR_USED |  |  | 2.12, 0.04, 0.46, 0.00 |
| Label | Associate_Label | Associate |  |  |  | 0.04, 0.04, 0.71, 0.19 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 1.12, 0.04, 0.58, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 0.79, 0.04, 0.71, 0.20 |
| TextBox | MGMT_CODE_PCT |  | MGMT_CODE_PCT |  |  | 1.54, 0.04, 0.54, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.04, 0.04, 0.71, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PCT_TOTAL | % Total | =Sum([MGMT_CODE_PCT]) |  |  | 1.54, 0.03, 0.54, 0.21 |
