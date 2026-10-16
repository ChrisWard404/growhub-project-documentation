# Report: NMIS_CLIENT_MGMT_CODES subreport

**Caption:** NMIS_CLIENT_MGMT_CODES subreport  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, [NMIS_CLIENT_MGMT_CODES].[CLIENT_ASSOCIATE] & " " & [MGMT_CODE] & " " & Round((([MGMT_CODE_PCT]/100)*[PCT_of_Total]),0) & "%" AS PAYEE_MGMT_CODE_N_PCT, [FIRST_NAME] & " " & [LAST_NAME] AS Contact_Name FROM ([Agreement_PCT_of_Total Query] INNER JOIN (NMIS_CLIENT_MGMT_CODES INNER JOIN NMIS_AGREEMENTS ON NMIS_CLIENT_MGMT_CODES.AGREEMENT_CN = NMIS_AGREEMENTS.CN) ON [Agreement_PCT_of_Total Query].CN = NMIS_AGREEMENTS.CN) LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN GROUP BY NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, [NMIS_CLIENT_MGMT_CODES].[CLIENT_ASSOCIATE] & " " & [MGMT_CODE] & " " & Round((([MGMT_CODE_PCT]/100)*[PCT_of_Total]),0) & "%", [FIRST_NAME] & " " & [LAST_NAME];
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_CLIENT_MGMT_CODES`, `NMIS_CONTACTS`  
**Embedded in:** `Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE`, `Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE_Summary`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line4 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | PAYEE_MGMT_CODE_N_PCT |  |  | 0.00, 0.00, 1.79, 0.23 |
| TextBox | Text10 |  | Contact_Name |  |  | 1.83, 0.00, 1.79, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line5 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
