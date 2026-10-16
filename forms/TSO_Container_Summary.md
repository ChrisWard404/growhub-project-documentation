# Form: TSO_Container_Summary

**Caption:** TSO_Container_Summary  
**Record source:**

```sql
SELECT NMIS_TICKETS.EXT_DOC_REF, Sum(Abs([NUMBER_OF_ACTIVITY_UNITS])) AS Units, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS INNER JOIN ((NMIS_TICKETS INNER JOIN (NMIS_ID_ACTIVITIES INNER JOIN NMIS_TRANSACTIONS ON NMIS_ID_ACTIVITIES.CN = NMIS_TRANSACTIONS.ID_ACTIVITY_CN) ON NMIS_TICKETS.CN = NMIS_ID_ACTIVITIES.TICKET_CN) INNER JOIN NMIS_ID_LOCATIONS ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN) ON (NMIS_UNITS.UNIT_CODE = NMIS_ID_LOCATIONS.UNIT_CODE) AND (NMIS_UNITS.UNIT_CODE = NMIS_ID_LOCATIONS.UNIT_CODE) GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_UNITS.UNIT_DESC HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null));
```

**Backend tables referenced:** `NMIS_ID_ACTIVITIES`, `NMIS_ID_LOCATIONS`, `NMIS_TICKETS`, `NMIS_TRANSACTIONS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_TICKETS_charge_per_ticket1`, `Form:NMIS_TICKETS_charge_per_ticket2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label7 | # Units |  |  |  | 0.08, 0.03, 0.50, 0.21 |
| Label | Label8 | Unit Code |  |  |  | 0.65, 0.03, 0.85, 0.21 |
| Label | Label9 | Unit Description |  |  |  | 1.56, 0.03, 1.90, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Units |  | Units |  |  | 0.08, 0.03, 0.50, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 0.65, 0.03, 0.85, 0.21 |
| TextBox | UNIT_DESC |  | UNIT_DESC |  |  | 1.57, 0.03, 1.89, 0.21 |
