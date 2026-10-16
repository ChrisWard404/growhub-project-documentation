# Report: ORDER_FORM_PACK mt subrep

**Record source:**

```sql
**Order_Form_Pkc
```

**Subforms/subreports:** `Report.ORDER_FORM_PACK1_mt subrep`  
**Embedded in:** `Report:ORDER_FORM_SPECS mt Subrep`, `Report:ORDER_FORM_SPECS mt_Long Subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PACK_CN | PACK_CN: | PACK_CN |  |  | 2.96, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_PACK1 subrep |  | Report.ORDER_FORM_PACK1_mt subrep (master: PACK_CN → child: PACK_CN) |  |  | 0.00, 0.01, 4.92, 0.16 |
| TextBox | NO_FLD_CONTS |  | NO_FLD_CONTS |  |  | 4.92, 0.02, 0.71, 0.16 |
| TextBox | FLD_CONT |  | FLD_CONT |  |  | 5.62, 0.02, 0.58, 0.16 |
