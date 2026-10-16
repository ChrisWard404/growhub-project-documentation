# Form: NMIS_ORDERS_TRANS subform

**Caption:** NMIS Transactions subform  
**Record source:**

```sql
NMIS_TRANSACTIONS
```

**Backend tables referenced:** `NMIS_ORDERS`, `NMIS_TRANSACTIONS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.04, 0.04, 0.54, 0.31 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | Amount |  |  |  | 0.62, 0.04, 0.53, 0.31 |
| Label | AMT_PER_U | Per Unit |  |  |  | 1.20, 0.04, 0.54, 0.31 |
| Label | Gross Label | Gross |  |  |  | 1.79, 0.04, 0.42, 0.31 |
| Label | CHARGE_PER_UNIT_OVERRIDE_Label | Chrg/Unit Adjstmnt |  |  |  | 2.25, 0.04, 0.67, 0.31 |
| Label | CHARGE_PER_AMT_OVERRIDE_Label | Chrg/Amt Adjstmnt |  |  |  | 2.96, 0.04, 0.67, 0.31 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 1.00, 0.00, 0.71, 0.15 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 1.71, 0.00, 0.50, 0.12 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Amount |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 0.62, 0.00, 0.53, 0.20 |
| TextBox | Per Unit |  | AMT_PER_UNIT |  |  | 1.20, 0.00, 0.54, 0.20 |
| TextBox | Grss Adj |  | AMT_PER_UNIT_INV_GROSS |  |  | 1.79, 0.00, 0.42, 0.20 |
| TextBox | Chg/Unit |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 2.25, 0.00, 0.67, 0.20 |
| TextBox | Chg/Amt |  | CHARGE_PER_AMT_OVERRIDE |  |  | 2.96, 0.00, 0.67, 0.20 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.04, 0.00, 0.54, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOT_PACK | Total: | =IIf([UNIT_TYPE]="M",(Sum([NUMBER_OF_ACTIVITY_UNITS]*[AMT_PER_UNIT])/1000),Sum([NUMBER_OF_ACTIVITY_UNITS]*[AMT_PER_UNIT])) |  |  | 1.27, 0.04, 0.50, 0.21 |
| TextBox | UNIT_TYPE |  | =IIf(([Forms]![NMIS_ORDERS]![NMIS_ORDERS_ACTIVITIES subform].[Form]![UNIT_CODE]) Like "B*","M",[Forms]![NMIS_ORDERS]![NMIS_ORDERS_ACTIVITIES subform].[Form]![UNIT_CODE]) |  |  | 1.79, 0.04, 0.50, 0.21 |
