# Form: Seed_Billing_Change_Defaults

**Caption:** Change Defaults  
**Record source:**

```sql
SELECT NMIS_ACCESS_USER_NURSERY.Default1N, NMIS_ACCESS_USER_NURSERY.Default2N, NMIS_ACCESS_USER_NURSERY.Default1D, NMIS_ACCESS_USER_NURSERY.Default3N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Set_As_User)=True));
```

**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`  
**Opened from (VBA):** `Form_Seed_Non_WCF_Billing_Report`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label6 | Change Defaults |  |  |  | 1.58, 0.08, 1.39, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Cooler | Cooler Unit Price Default | Default1N |  |  | 2.52, 1.24, 0.58, 0.21 |
| TextBox | Freezer | Freezer Unit Price Default | Default2N |  | AfterUpdate | 2.52, 0.91, 0.58, 0.21 |
| TextBox | Storage_Date | Non-WCF Storage Date Default | Default1d |  | AfterUpdate | 2.52, 0.25, 0.58, 0.21 |
| TextBox | Min_Lot_WT | Freezer Unit Price Default | Default3N |  |  | 2.52, 0.57, 0.58, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Freezer_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Unit_Price_Freezer] = FREEZER
    
End Sub

Private Sub cooler_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Unit_Price_Cooler] = cooler
    
End Sub

Private Sub Storage_Date_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Storage_bill_Date] = Left$(Storage_Date, 6) & Right$([Forms]![Switchboard]![FY_For_Reports], 2)
    
End Sub
```
