# Form: NMIS_ASSOCIATES_Ship_Miles_st

**Backend tables referenced:** `NMIS_STATES`  
**Opened from (VBA):** `Form_NMIS_SHIPPING_TICKET subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME | Associate Name | ASSOCIATE_NAME |  |  | 1.32, 0.38, 3.25, 0.24 |
| TextBox | SHIP_MILES | Ship Miles | SHIP_MILES |  |  | 3.54, 3.21, 0.88, 0.24 |
| TextBox | ASSOCIATE | Associate | ASSOCIATE |  |  | 0.21, 0.38, 0.00, 0.24 |
| TextBox | MAIL_ADDR | Mail Address: | MAIL_ADDR |  |  | 1.46, 0.79, 3.11, 0.24 |
| TextBox | STREET_ADDR | Street Address: | STREET_ADDR |  |  | 1.46, 1.08, 3.11, 0.24 |
| TextBox | CITY | City: | CITY |  |  | 1.46, 1.38, 3.11, 0.24 |
| TextBox | SHIP_ADDR | Ship Address: | SHIP_ADDR |  |  | 1.46, 2.33, 3.11, 0.24 |
| TextBox | SHIP_CITY | Ship City: | SHIP_CITY |  |  | 1.46, 2.62, 3.11, 0.24 |
| ComboBox | SHIP_STATE | Ship State: | SHIP_STATE | SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE; |  | 1.46, 2.92, 0.50, 0.24 |
| TextBox | SHIP_ZIPCODE | Ship Zip: | SHIP_ZIPCODE |  |  | 1.46, 3.21, 0.00, 0.24 |
| TextBox | ZIPCODE | Zip: | ZIPCODE |  |  | 1.46, 1.96, 0.00, 0.24 |
| ComboBox | STATE | State: | STATE | SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE; |  | 1.46, 1.67, 0.50, 0.24 |
| TextBox | Text16 | Note: | NOTE |  |  | 1.46, 3.59, 3.11, 0.49 |
