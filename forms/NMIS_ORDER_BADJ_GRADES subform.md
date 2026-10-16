# Form: NMIS_ORDER_BADJ_GRADES subform

**Caption:** NMIS_ORDR subform  
**Record source:**

```sql
SELECT NMIS_ORDERS.CN, NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDER_GRADES.PRODUCT_GRADE, NMIS_ORDER_GRADES.GRADE_PCT, NMIS_ORDER_GRADES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ORDER_GRADES.CHARGE_PER_AMT_OVERRIDE, NMIS_ORDER_GRADES.ORDER_CN FROM NMIS_ORDER_GRADES INNER JOIN NMIS_ORDERS ON NMIS_ORDER_GRADES.ORDER_CN = NMIS_ORDERS.CN ORDER BY NMIS_ORDERS.FISCAL_YEAR DESC;
```

**Backend tables referenced:** `NMIS_ORDERS`, `NMIS_ORDER_GRADES`, `NMIS_PRODUCT_GRADES`  
**Embedded in:** `Form:NMIS_ORDER_BILL_ADJUSTMENTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | GRADE_Label | Grade |  |  |  | 0.04, 0.04, 0.88, 0.31 |
| Label | PCT_Label | % |  |  |  | 0.97, 0.04, 0.40, 0.31 |
| Label | Label32 | Charge/Unit Override |  |  |  | 1.40, 0.04, 0.75, 0.31 |
| Label | Label33 | Charge/Amt Override |  |  |  | 2.20, 0.04, 0.75, 0.31 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GRADE_PCT |  | GRADE_PCT |  |  | 0.97, 0.04, 0.40, 0.19 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 1.40, 0.04, 0.75, 0.19 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 2.20, 0.04, 0.75, 0.19 |
| ComboBox | PRODUCT_GRADE |  | PRODUCT_GRADE | SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES ORDER BY NMIS_PRODUCT_GRADES.PRODUCT_GRADE DESC;  |  | 0.04, 0.06, 0.88, 0.00 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 0.21, 0.00, 1.03, 0.19 |
