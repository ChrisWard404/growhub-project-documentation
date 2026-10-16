# Form: NMIS_Special_Charges subform

**Caption:** Special_Charges subform  
**Record source:**

```sql
SELECT [NMIS_ID_ACTIVITIES].[CHARGE_PER_HOUR_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_AMT_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_UNIT_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_ACTIVITY_OVERRIDE], [NMIS_ID_ACTIVITIES].[CONTRACT_ITEM], [NMIS_ID_ACTIVITIES].[ACTIVITY_TIME], [NMIS_ID_ACTIVITIES].[ACTIVITY_HOURS], [NMIS_ID_ACTIVITIES].[CN] FROM NMIS_ID_ACTIVITIES;
```

**Backend tables referenced:** `NMIS_ID_ACTIVITIES`  
**Embedded in:** `Form:NMIS_ID_MGMT_CODES subform`, `Form:NMIS_ID_MGMT_CODES2 subform`, `Form:NMIS_ID_MGMT_CODES_NEW subform`, `Form:NMIS_ID_MGMT_CODES_Ship_Ticket subform`, `Form:NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CHARGE_PER_HOUR_OVERRIDE |  | CHARGE_PER_HOUR_OVERRIDE |  |  | 1.33, 2.17, 0.53, 0.20 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 3.55, 2.43, 0.53, 0.20 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 1.33, 2.67, 0.54, 0.20 |
| TextBox | CHARGE_PER_ACTIVITY_OVERRIDE |  | CHARGE_PER_ACTIVITY_OVERRIDE |  |  | 1.33, 2.42, 0.53, 0.20 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 3.55, 2.13, 0.58, 0.20 |
| Label | Label10 | Charge/Hour: |  |  |  | 0.31, 2.17, 0.94, 0.20 |
| Label | Label11 | Charge/Amt: |  |  |  | 2.57, 2.43, 0.88, 0.20 |
| Label | Label12 | Charge/Unit: |  |  |  | 0.37, 2.67, 0.88, 0.20 |
| Label | Label13 | Charge/Activity: |  |  |  | 0.15, 2.42, 1.10, 0.20 |
| Label | CONTRACT_ITEM_Label | Contract Item: |  |  |  | 2.45, 2.15, 0.99, 0.20 |
| TextBox | ACTIVITY_HOURS | Activity Hours: | ACTIVITY_HOURS |  |  | 1.33, 1.93, 0.53, 0.20 |
| Rectangle | Box16 |  |  |  |  | 2.23, 1.90, 2.15, 1.00 |
| Label | Label24 | Hours Involved and Charge Worksheet |  |  |  | 1.04, 0.18, 2.59, 0.20 |
| Rectangle | Box36 |  |  |  |  | 0.07, 0.04, 4.46, 1.71 |
| TextBox | Hours | Hours |  |  |  | 1.03, 1.23, 0.44, 0.23 |
| TextBox | Charge_Per_Hour | X |  |  |  | 1.88, 1.23, 0.54, 0.23 |
| TextBox | Charge | = | =[Hours]*[Charge_Per_Hour] |  |  | 2.81, 1.23, 0.65, 0.21 |
| Label | Label43 | Charge  /Hr  ($) |  |  |  | 1.89, 0.62, 0.54, 0.54 |
| Label | Label46 | Charge ($) |  |  |  | 2.81, 0.79, 0.69, 0.39 |
