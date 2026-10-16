# Form: NMIS_SOURCE_TEST_RESULTS Subform

**Caption:** NMIS_SOURCE_TEST_RESULTS Subform1  
**Record source:**

```sql
SELECT NMIS_SOURCE_TEST_RESULTS.SOURCE_TEST_CN, NMIS_SOURCE_TEST_RESULTS.ID_ACTIVITY_CN, NMIS_SOURCE_TEST_RESULTS.SOURCE_CN, NMIS_SOURCE_TEST_RESULTS.DAYS_STRAT, NMIS_SOURCE_TEST_RESULTS.DAYS, NMIS_SOURCE_TEST_RESULTS.GERM_PCT FROM NMIS_SOURCE_TEST_RESULTS ORDER BY NMIS_SOURCE_TEST_RESULTS.DAYS_STRAT, NMIS_SOURCE_TEST_RESULTS.DAYS;
```

**Backend tables referenced:** `NMIS_SOURCE_TEST_RESULTS`  
**Embedded in:** `Form:NMIS_SOURCE_TESTS Form`, `Form:NMIS_SOURCE_TESTS Subform`, `Form:NMIS_SOURCE_TESTS_NEW Subform`, `Form:NMIS_SOURCE_TESTS_NEW_LOT Form`, `Form:NMIS_SOURCE_TESTS_Ship_Ticket Form`, `Form:NMIS_SOURCE_TESTS_for_Act_data Form`  
**Form events with code:** AfterInsert  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | DAYS_STRAT_Label | Days Strat |  |  |  | 0.14, 0.07, 0.42, 0.37 |
| Label | DAYS_Label | Days |  |  |  | 0.84, 0.24, 0.38, 0.20 |
| Label | GERM_PCT_Label | GERM % |  |  |  | 1.46, 0.07, 0.46, 0.37 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 1.04, 0.07, 0.00, 0.00 |
| TextBox | SOURCE_CN |  | SOURCE_CN |  |  | 1.08, 0.11, 0.00, 0.00 |
| TextBox | SOURCE_TEST_CN |  | SOURCE_TEST_CN |  |  | 0.08, 0.07, 0.92, 0.00 |
| TextBox | Count_Increment |  |  |  |  | 1.06, 0.04, 0.19, 0.00 |
| TextBox | Default_Strat |  |  |  |  | 0.17, 0.11, 0.29, 0.00 |
| TextBox | Last_Day |  |  |  |  | 0.62, 0.11, 0.25, 0.21 |
| Label | Label30 | Inc |  |  |  | 0.84, 0.04, 0.21, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | DAYS_STRAT |  | DAYS_STRAT |  | AfterUpdate | 0.09, 0.03, 0.51, 0.17 |
| TextBox | DAYS |  | DAYS |  |  | 0.82, 0.03, 0.42, 0.17 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 1.46, 0.03, 0.46, 0.17 |
| Label | Label12 | % |  |  |  | 1.98, 0.03, 0.18, 0.17 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub DAYS_STRAT_AfterUpdate()

    DAYS = Count_Increment
    
End Sub

Private Sub Form_AfterInsert()

    Default_Strat = DAYS_STRAT
    Last_Day = DAYS
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub
```
