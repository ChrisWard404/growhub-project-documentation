# Report: ORDER_FORM_PACK subrep

**Record source:**

```sql
ORDER_FORM_PKC Query
```

**Subforms/subreports:** `Report.ORDER_FORM_PACK1 subrep`  
**Embedded in:** `Report:ORDER_FORM_SPECS Subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PACK_CN | PACK_CN: | PACK_CN |  |  | 2.96, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_PACK1 subrep |  | Report.ORDER_FORM_PACK1 subrep (master: PACK_CN → child: PACK_CN) |  |  | 0.00, 0.01, 4.92, 0.16 |
| TextBox | NO_FLD_CONTS |  | NO_FLD_CONTS |  |  | 4.92, 0.00, 0.71, 0.00 |
| TextBox | FLD_CONT |  | FLD_CONT |  |  | 5.62, 0.00, 0.58, 0.00 |
