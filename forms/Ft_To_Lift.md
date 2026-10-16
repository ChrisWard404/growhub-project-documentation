# Form: Ft_To_Lift

**Caption:** Ft_To_Lift  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, nz([Total_Containers],0) AS Lot_Total_Ft FROM NMIS_AGREEMENT_LOTS LEFT JOIN Agreement_Lot_Total_Containers_Grow ON NMIS_AGREEMENT_LOTS.CN=Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN GROUP BY NMIS_AGREEMENT_LOTS.ID, nz([Total_Containers],0) HAVING (((NMIS_AGREEMENT_LOTS.ID)=Forms!Husky_lpro_data_input_check_form![**Huksy_lpro_xfer_hlift_table subform].Form!Nursery_ID)) ORDER BY NMIS_AGREEMENT_LOTS.ID;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Embedded in:** `Form:Husky_lpro_data_input_check_form`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Lot_Total_Ft |  | Lot_Total_Ft |  |  | 0.04, 0.04, 0.83, 0.19 |
