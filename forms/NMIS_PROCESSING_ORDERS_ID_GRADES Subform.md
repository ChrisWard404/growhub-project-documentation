# Form: NMIS_PROCESSING_ORDERS_ID_GRADES Subform

**Caption:** NMIS_PROCESSING_ORDERS_GRADES Subform  
**Record source:**

```sql
NMIS_ORDER_GRADES
```

**Backend tables referenced:** `NMIS_ORDER_GRADES`, `NMIS_PRODUCT_GRADES`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_ID subform`, `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE`, `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2`  
**Form events with code:** BeforeUpdate  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_GRADE_Label | Product Grade |  |  |  | 0.04, 0.03, 1.08, 0.21 |
| Label | GRADE_PCT_Label | Grade % |  |  |  | 1.17, 0.03, 0.69, 0.21 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 2.17, 0.00, 0.70, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GRADE_PCT |  | GRADE_PCT |  |  | 1.17, 0.04, 0.69, 0.20 |
| ComboBox | Combo10 |  | PRODUCT_GRADE | SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES;  |  | 0.04, 0.04, 1.08, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_PCT | % Total | =Sum([GRADE_PCT]) |  |  | 1.17, 0.03, 0.69, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_BeforeUpdate(Cancel As Integer)

    'MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    'MODIFIED_DATE = Date
    'Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
    
End Sub
```
