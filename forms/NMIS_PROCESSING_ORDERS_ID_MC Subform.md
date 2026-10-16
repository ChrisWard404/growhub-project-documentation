# Form: NMIS_PROCESSING_ORDERS_ID_MC Subform

**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Embedded in:** `Form:NMIS_ORDER_BILL_ADJUSTMENTS`, `Form:NMIS_PROCESSING_ORDERS_ID subform`, `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE`, `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | MGMT_CODE_Label | Job Code |  |  |  | 1.31, 0.03, 0.71, 0.19 |
| Label | MGMT_CODE_PCT_Label | % |  |  |  | 2.06, 0.03, 0.64, 0.19 |
| TextBox | FISCAL_YEAR_USED |  | FISCAL_YEAR_USED |  |  | 2.17, 0.04, 0.46, 0.00 |
| Label | Associate_Label | Associate |  |  |  | 0.52, 0.03, 0.75, 0.19 |
| Label | Label106 | FY |  |  |  | 0.01, 0.03, 0.48, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 1.31, 0.04, 0.71, 0.20 |
| TextBox | MGMT_CODE_PCT |  | MGMT_CODE_PCT |  |  | 2.06, 0.04, 0.60, 0.21 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 2.17, 0.04, 0.58, 0.00 |
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.52, 0.04, 0.75, 0.21 |
| TextBox | Combo104 |  | FISCAL_YEAR_USED |  |  | 0.03, 0.04, 0.45, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PCT_TOTAL | % Total | =Sum([MGMT_CODE_PCT]) |  |  | 2.02, 0.04, 0.60, 0.21 |
