# Report: ORDER_FORM_PACK mt subrep_050357

**Record source:**

```sql
**Order_Form_Pkc
```

**Subforms/subreports:** `Report.ORDER_FORM_PACK1_mt subrep_050357`  
**Embedded in:** `Report:ORDER_FORM_SPECS mt Subrep_040207`, `Report:ORDER_FORM_SPECS mt Subrep_050357`, `Report:ORDER_FORM_SPECS mt Subrep_050357_pre_fy06`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PACK_CN | PACK_CN: | PACK_CN |  |  | 2.96, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_PACK1 subrep |  | Report.ORDER_FORM_PACK1_mt subrep_050357 (master: PACK_CN → child: PACK_CN) |  |  | 0.00, 0.01, 6.79, 0.16 |
| TextBox | NO_FLD_CONTS |  | NO_FLD_CONTS |  |  | 6.90, 0.01, 0.47, 0.16 |
| TextBox | FLD_CONT |  | FLD_CONT |  |  | 7.36, 0.01, 0.41, 0.16 |
