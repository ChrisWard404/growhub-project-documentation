# Form: NMIS_PROCESSING_ORDERs_INPUT_SVCS subform

**Caption:** NMIS_PROCESSING_ORDERS_INPUT_SVCS subform  
**Record source:**

```sql
NMIS_ORDER_SERVICES
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ORDER_SERVICES`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_INPUT`, `Form:NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup`, `Form:NMIS_PROCESSING_ORDERS_INPUTbu`, `Form:junk`  
**Form events with code:** GotFocus  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 0.04, 0.02, 0.79, 0.35 |
| Label | CHARGE_PER_UNIT_OVERRIDE_Label | Chrg/Unit Adj. |  |  |  | 1.68, 0.02, 0.70, 0.35 |
| Label | CHARGE_PER_AMT_OVERRIDE_Label | Chrg/Amt Adj. |  |  |  | 2.42, 0.02, 0.70, 0.35 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.88, 0.02, 0.75, 0.35 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 0.54, 0.08, 0.83, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) In ("DSTROY","SCSUP"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 0.04, 0.04, 0.79, 0.20 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 1.67, 0.04, 0.70, 0.20 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 2.42, 0.04, 0.70, 0.20 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  | Enter | 0.88, 0.04, 0.75, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()

    CONTRACT_ITEM.Requery
    
End Sub

Private Sub Form_GotFocus()

    Requery
    
End Sub
```
