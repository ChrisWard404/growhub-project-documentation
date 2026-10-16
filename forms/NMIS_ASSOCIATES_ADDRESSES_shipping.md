# Form: NMIS_ASSOCIATES_ADDRESSES_shipping

**Caption:** NMIS_ASSOCIATES_ADDRESSES  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER, NMIS_ASSOCIATES.MAIL_ADDR, NMIS_ASSOCIATES.STREET_ADDR, NMIS_ASSOCIATES.CITY, NMIS_ASSOCIATES.STATE, NMIS_ASSOCIATES.ZIPCODE, NMIS_ASSOCIATES.SHIP_ADDR, NMIS_ASSOCIATES.SHIP_CITY, NMIS_ASSOCIATES.SHIP_STATE, NMIS_ASSOCIATES.SHIP_ZIPCODE, NMIS_ASSOCIATES.SHIP_MILES FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Embedded in:** `Form:Associate_Mail_Label_Input_shipping`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME_UPPER | Associate Name: | ASSOCIATE_NAME_UPPER |  |  | 1.21, 0.04, 4.42, 0.19 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 4.33, 0.04, 0.72, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MAIL_ADDR | Mail Address: | MAIL_ADDR |  |  | 1.11, 0.30, 2.00, 0.19 |
| TextBox | STREET_ADDR | Street Address: | STREET_ADDR |  |  | 1.11, 0.52, 2.00, 0.19 |
| TextBox | CITY | City: | CITY |  |  | 0.52, 0.75, 2.59, 0.19 |
| TextBox | STATE | State: | STATE |  |  | 0.53, 0.97, 0.32, 0.19 |
| TextBox | ZIPCODE | Zip: | ZIPCODE |  |  | 1.29, 0.97, 0.90, 0.19 |
| TextBox | SHIP_ADDR | Address: | SHIP_ADDR |  |  | 3.98, 0.30, 2.00, 0.19 |
| TextBox | SHIP_CITY | City: | SHIP_CITY |  |  | 3.98, 0.52, 2.00, 0.19 |
| TextBox | SHIP_ZIPCODE | Ship Zip: | SHIP_ZIPCODE |  |  | 4.98, 0.75, 0.90, 0.19 |
| Label | Label24 | Mailing Address |  |  |  | 0.93, 0.06, 1.08, 0.19 |
| Label | Label25 | Shipping  Address |  |  |  | 4.04, 0.07, 1.12, 0.19 |
| Rectangle | Box26 |  |  |  |  | 0.04, 0.04, 3.15, 1.17 |
| Rectangle | Box27 |  |  |  |  | 3.23, 0.04, 2.83, 1.17 |
| TextBox | SHIP_STATE | State: | SHIP_STATE |  |  | 3.98, 0.75, 0.29, 0.00 |
