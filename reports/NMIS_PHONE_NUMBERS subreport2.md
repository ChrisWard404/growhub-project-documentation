# Report: NMIS_PHONE_NUMBERS subreport2

**Caption:** NMIS_PHONE_NUMBERS subreport  
**Record source:**

```sql
SELECT NMIS_PHONE_NUMBERS.ASSOCIATE, NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_PHONE_TYPES.PHONE_TYPE FROM NMIS_PHONE_TYPES INNER JOIN NMIS_PHONE_NUMBERS ON NMIS_PHONE_TYPES.CN=NMIS_PHONE_NUMBERS.PHONE_TYPE_CN;
```

**Grouping/sorting:** `PHONE_TYPE`  
**Backend tables referenced:** `NMIS_PHONE_NUMBERS`, `NMIS_PHONE_TYPES`  
**Embedded in:** `Report:NMIS_CONTACT_LINKS subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_TYPE |  |  | 1.48, 0.00, 1.20, 0.19 |
| TextBox | ASSOCIATE |  | PHONE_NUMBER |  |  | 0.04, 0.00, 1.05, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
