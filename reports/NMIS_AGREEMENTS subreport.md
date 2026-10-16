# Report: NMIS_AGREEMENTS subreport

**Caption:** NMIS_AGREEMENTS subreport  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, Sum(NMIS_AGREEMENTS.AMOUNT_REQUESTED) AS SumOfAMOUNT_REQUESTED FROM NMIS_AGREEMENTS GROUP BY NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.CLIENT_ASSOCIATE;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`  
**Embedded in:** `Report:ORDER_FORM mt`, `Report:ORDER_FORM mt_040207`, `Report:ORDER_FORM mt_040207_edit`, `Report:ORDER_FORM mt_040207_input`, `Report:ORDER_FORM mt_050357`, `Report:ORDER_FORM mt_050357_edit`, `Report:ORDER_FORM mt_050357_input`, `Report:ORDER_FORM mt_050357_ld`, `Report:ORDER_FORM mt_050357_pre_fy06`, `Report:ORDER_FORM mt_edit`, `Report:order_form mt_Long`, `Report:order_form_from_Order_Print mt`, `Report:order_form_from_order_edit mt`, `Report:order_form_from_order_edit mt_bu2`, `Report:order_form_from_order_input mt`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Amount Requested by " & [ASSOCIATE] & ":" AS Req_By FROM NMIS_ASSOCIATES; |  | 0.04, 0.00, 2.04, 0.21 |
| TextBox | AMOUNT_REQUESTED |  | SumOfAMOUNT_REQUESTED |  |  | 2.08, 0.00, 0.70, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
