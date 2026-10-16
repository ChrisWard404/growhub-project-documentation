# Form: NMIS_ASSOCIATES_Ship_Miles1

**Caption:** Ship Miles  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.SHIP_MILES, NMIS_ASSOCIATES.MAIL_ADDR, NMIS_ASSOCIATES.STREET_ADDR, NMIS_ASSOCIATES.CITY, NMIS_ASSOCIATES.STATE, NMIS_ASSOCIATES.ZIPCODE, NMIS_ASSOCIATES.SHIP_ADDR, NMIS_ASSOCIATES.SHIP_CITY, NMIS_ASSOCIATES.SHIP_STATE, NMIS_ASSOCIATES.SHIP_ZIPCODE FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![NMIS_TICKETS_charge_per_ticket1]![NMIS_TICKETS_Charge_Per_Ticket subform].[Form]![DELIVERED_TO_ASSOCIATE]));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_STATES`  
**Opened from (VBA):** `Form_NMIS_TICKETS_Charge_Per_Ticket1 subform`  
**Form events with code:** Close  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME | Associate Name | ASSOCIATE_NAME |  |  | 1.32, 0.38, 3.25, 0.24 |
| TextBox | SHIP_MILES | Ship Miles | SHIP_MILES |  |  | 3.54, 3.29, 0.88, 0.24 |
| TextBox | ASSOCIATE | Associate | ASSOCIATE |  |  | 0.21, 0.38, 0.00, 0.24 |
| TextBox | MAIL_ADDR | Mail Address: | MAIL_ADDR |  |  | 1.46, 0.79, 3.11, 0.24 |
| TextBox | STREET_ADDR | Street Address: | STREET_ADDR |  |  | 1.46, 1.08, 3.11, 0.24 |
| TextBox | CITY | City: | CITY |  |  | 1.46, 1.38, 3.11, 0.24 |
| TextBox | SHIP_ADDR | Ship Address: | SHIP_ADDR |  |  | 1.46, 2.42, 3.11, 0.24 |
| TextBox | SHIP_CITY | Ship City: | SHIP_CITY |  |  | 1.46, 2.71, 3.11, 0.24 |
| ComboBox | SHIP_STATE | Ship State: | SHIP_STATE | SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE; |  | 1.46, 3.00, 0.50, 0.24 |
| TextBox | SHIP_ZIPCODE | Ship Zip: | SHIP_ZIPCODE |  |  | 1.46, 3.29, 0.00, 0.24 |
| TextBox | ZIPCODE | Zip: | ZIPCODE |  |  | 1.46, 1.96, 0.00, 0.24 |
| ComboBox | STATE | State: | STATE | SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE; |  | 1.46, 1.67, 0.50, 0.24 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_update_ship_miles1"
    DoCmd.SetWarnings True
    
End Sub
```
