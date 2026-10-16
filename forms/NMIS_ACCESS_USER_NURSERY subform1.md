# Form: NMIS_ACCESS_USER_NURSERY subform1

**Caption:** NMIS_ACCESS_USER_NURSERY subform1  
**Record source:**

```sql
SELECT NMIS_ACCESS_USER_NURSERY.Default1N, NMIS_ACCESS_USER_NURSERY.Default2N, NMIS_ACCESS_USER_NURSERY.Default1D, NMIS_ACCESS_USER_NURSERY.Default3N, NMIS_ACCESS_USER_NURSERY.Default4N, NMIS_ACCESS_USER_NURSERY.Default5N, NMIS_ACCESS_USER_NURSERY.Default6N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Set_As_User)=True));
```

**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`  
**Embedded in:** `Form:Field_Location_Worksheet`, `Form:Field_Map Form`, `Form:NMIS_PROCESS_LABELS_MAIN`, `Form:Non_WCF_Storage_Billing_Report`, `Form:Propagule_Billing_Report`, `Form:Propagule_Harvest_Priorties`, `Form:Seed_Non_WCF_Billing_Report`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | cooler | cooler | Default1N |  |  | 0.79, 0.71, 0.58, 0.19 |
| TextBox | freezer | freezer | Default2N |  |  | 0.79, 0.49, 0.58, 0.19 |
| TextBox | storge_date | store date | Default1D |  |  | 0.79, 0.05, 0.58, 0.19 |
| TextBox | Min_Lot_Wt | Min Lot Wt | Default3N |  |  | 0.79, 0.27, 0.58, 0.19 |
| TextBox | Default4N | seed ft/ac | Default4N |  |  | 0.79, 0.92, 0.62, 0.19 |
| TextBox | Client_min_bill_amt | Min Bill $ | Default5N |  |  | 0.79, 1.14, 0.62, 0.19 |
| TextBox | Text13 | Labels/Box | Default6N |  |  | 0.79, 1.35, 0.62, 0.19 |
