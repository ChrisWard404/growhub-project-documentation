# Form: NMIS_PROCESSING_ORDERS_BILLED

**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ORDERS.FISCAL_YEAR FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE=NMIS_ORDERS.CLIENT_ASSOCIATE;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERS_BILLED1 subform`, `Form.NMIS_PROCESSING_ORDERS_BILLED2 subform`  
**Form events with code:** Current  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Processing Orders Billed |  |  |  | 2.00, 0.17, 2.83, 0.29 |
| Label | Select_Associate_Label | Select An Associate: |  |  |  | 3.50, 0.58, 1.43, 0.21 |
| ComboBox | ASSOCIATE |  |  | SELECT NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE=NMIS_ORDERS.CLIENT_ASSOCIATE GROUP BY NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 4.96, 0.58, 0.75, 0.21 |
| ComboBox | FISCAL_YEAR | Fiscal Year to View: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER FROM NMIS_FISCAL_YEARS;  |  | 2.62, 0.58, 0.62, 0.21 |
| Subform | NMIS_PROCESSING_ORDERS_BILLED subform |  | Form.NMIS_PROCESSING_ORDERS_BILLED1 subform (master: FISCAL_YEAR;ASSOCIATE → child: FISCAL_YEAR;ASSOCIATE) |  |  | 0.21, 1.00, 4.04, 2.41 |
| Subform | NMIS_PROCESSING_ORDERS_BILLED2 subform |  | Form.NMIS_PROCESSING_ORDERS_BILLED2 subform (master: ORDER_CN → child: ORDER_CN) |  |  | 4.38, 1.00, 2.50, 0.54 |
| TextBox | ORDER_CN |  | =[NMIS_PROCESSING_ORDERS_BILLED subform].Form!ORDER_CN |  |  | 4.38, 2.00, 0.00, 0.29 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Current()
   On Error Resume Next
        Me.Parent("ORDER_CN") = [CN]
End Sub
```
