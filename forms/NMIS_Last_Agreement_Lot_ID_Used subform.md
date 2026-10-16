# Form: NMIS_Last_Agreement_Lot_ID_Used subform

**Caption:** NMIS_ACCESS_SET_USER_NURSERY subform  
**Record source:**

```sql
SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, Max(Nz([ID],Right$([fiscal_year],2) & "0000")+1) AS next_ID, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS LEFT JOIN NMIS_AGREEMENT_LOTS ON NMIS_FISCAL_YEARS.FISCAL_YEAR = NMIS_AGREEMENT_LOTS.BEGIN_FY WHERE (((NMIS_FISCAL_YEARS.FISCAL_YEAR)=[Forms]![NMIS_AGREEMENTS]![BEGIN_FY])) GROUP BY NMIS_FISCAL_YEARS.FISCAL_YEAR HAVING (((NMIS_FISCAL_YEARS.FISCAL_YEAR)>"2013"));
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_FISCAL_YEARS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Next_ID |  | next_ID |  |  | 0.04, 0.02, 0.79, 0.21 |
