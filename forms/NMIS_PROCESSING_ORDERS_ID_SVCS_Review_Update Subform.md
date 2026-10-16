# Form: NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform

**Caption:** NMIS_ORDER_SERVICES  
**Record source:**

```sql
NMIS_ORDER_SERVICES
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ORDER_SERVICES`  
**Embedded in:** `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE`  
**Form events with code:** BeforeUpdate  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 0.04, 0.01, 0.79, 0.35 |
| Label | CHARGE_PER_UNIT_OVERRIDE_Label | Chrg/Unit Adj. |  |  |  | 1.55, 0.01, 0.70, 0.35 |
| Label | CHARGE_PER_AMT_OVERRIDE_Label | Chrg/Amt Adj. |  |  |  | 2.30, 0.01, 0.70, 0.35 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.88, 0.01, 0.65, 0.35 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.17, 0.17, 0.83, 0.21 |
| TextBox | RecordCount |  | =Count([ACTIVITY_CODE]) |  |  | 3.17, 0.00, 0.83, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) In ("DSTROY","SCSUP"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 0.04, 0.04, 0.79, 0.20 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 1.55, 0.04, 0.70, 0.20 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 2.30, 0.04, 0.70, 0.20 |
| ComboBox | CONTRACT_ITEM |  | CONTRACT_ITEM | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![Child102].[Form]![ACTIVITY_CODE])); | Enter | 0.88, 0.04, 0.65, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()
    
    CONTRACT_ITEM.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
    
End Sub
```
