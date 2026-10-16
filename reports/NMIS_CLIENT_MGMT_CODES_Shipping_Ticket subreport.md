# Report: NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport

**Caption:** NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport  
**Record source:**

```sql
SELECT NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, IIf([NMIS_CLIENT_MGMT_CODES]![MGMT_CODE]>"",[NMIS_CLIENT_MGMT_CODES]![CLIENT_ASSOCIATE] & " " & [NMIS_CLIENT_MGMT_CODES]![MGMT_CODE] & " " & [NMIS_CLIENT_MGMT_CODES]![MGMT_CODE_PCT] & "%","") AS Charge_To FROM NMIS_CLIENT_MGMT_CODES WHERE (((NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN) Is Not Null));
```

**Backend tables referenced:** `NMIS_CLIENT_MGMT_CODES`  
**Embedded in:** `Report:seed_shipping_ticket`, `Report:seed_sow_withdrawal_ticket`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_ID_CN |  | ACTIVITY_ID_CN |  |  | 0.38, 0.00, 0.46, 0.16 |
| TextBox | MGMT_CODE |  | Charge_To |  |  | 0.00, 0.00, 1.79, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
