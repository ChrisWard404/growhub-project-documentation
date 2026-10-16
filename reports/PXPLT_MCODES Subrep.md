# Report: PXPLT_MCODES Subrep

**Caption:** ORDER_FORM_MCODES Subrep  
**Record source:**

```sql
SELECT NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, Sum(NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT) AS SumOfMGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.ORDER_CN FROM NMIS_ORDERS INNER JOIN NMIS_CLIENT_MGMT_CODES ON NMIS_ORDERS.CN = NMIS_CLIENT_MGMT_CODES.ORDER_CN WHERE (((NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED)=[Forms]![Switchboard]![FY_For_Reports]) AND ((Left$([nmis_orders].[CLIENT_ASSOCIATE],4)) Not Like Left$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Owned_Code],4))) GROUP BY NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.ORDER_CN;
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`  
**Backend tables referenced:** `NMIS_CLIENT_MGMT_CODES`, `NMIS_ORDERS`  
**Embedded in:** `Report:XPLT_AT_JHSN`, `Report:XPLT_AT_JHSN_by_Client_Sp_age_class`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | =[CLIENT_ASSOCIATE] & " " & [SumOfMGMT_CODE_PCT] & "%" |  |  | 0.00, 0.00, 0.97, 0.18 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 1.38, 0.00, 0.54, 0.16 |
