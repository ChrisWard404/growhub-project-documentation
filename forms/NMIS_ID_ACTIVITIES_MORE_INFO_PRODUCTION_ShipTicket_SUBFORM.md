# Form: NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM

**Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform  
**Record source:**

```sql
NMIS_ID_ACTIVITIES_MORE_INFO Query
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Opened from (VBA):** `Form_NMIS_SHIPPING_ID_ACTIVITIES subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 0.67, 0.70, 0.84, 0.34 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 1.55, 0.70, 0.77, 0.34 |
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 0.07, 0.70, 0.57, 0.34 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 2.36, 0.70, 0.50, 0.34 |
| Label | SOURCE_LOT_CN_Label | Agreement Lot: |  |  |  | 0.07, 0.40, 1.29, 0.25 |
| Label | Label38 | Per Hour |  |  |  | 4.95, 0.88, 0.58, 0.17 |
| ComboBox | SOURCE_LOT_CN |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS; |  | 1.41, 0.38, 1.67, 0.25 |
| Label | Label40 | Agreement Lot Ship Ticket More Info |  |  |  | 2.73, 0.06, 3.58, 0.28 |
| Label | Label41 | Destination Assoc |  |  |  | 2.91, 0.70, 0.75, 0.34 |
| Label | Label43 | Per Amt |  |  |  | 4.32, 0.88, 0.58, 0.17 |
| Label | Label45 | Per Unit |  |  |  | 3.70, 0.88, 0.58, 0.17 |
| Label | Label47 | Per Act. |  |  |  | 5.57, 0.88, 0.58, 0.17 |
| Label | Label49 | Charge Overrides |  |  |  | 3.70, 0.69, 2.46, 0.17 |
| Label | Ticket_NO Label | Ticket |  |  |  | 6.20, 0.69, 0.75, 0.35 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRMT")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  |  | 0.68, 0.03, 0.84, 0.20 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 1.55, 0.03, 0.76, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.08, 0.03, 0.57, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 2.37, 0.03, 0.51, 0.20 |
| TextBox | NOTE | ID Activity Note: | NOTE |  |  | 1.29, 0.27, 7.08, 0.41 |
| ComboBox | DESTINATION_ASSOCIATE |  | DESTINATION_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 2.91, 0.03, 0.75, 0.19 |
| TextBox | CHARGE_PER_HOUR_OVERRIDE |  | CHARGE_PER_HOUR_OVERRIDE |  |  | 4.95, 0.03, 0.58, 0.20 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 4.32, 0.03, 0.58, 0.20 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 3.70, 0.03, 0.58, 0.20 |
| TextBox | CHARGE_PER_ACTIVITY_OVERRIDE |  | CHARGE_PER_ACTIVITY_OVERRIDE |  |  | 5.57, 0.03, 0.58, 0.20 |
| ComboBox | Ticket_NO |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.NOTE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE)="p")) ORDER BY Val(Right$([TKT_NO],Len([tkt_NO])-2)) DESC; | DblClick, Enter | 6.20, 0.03, 0.75, 0.19 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label50 | Notes: |  |  |  | 0.11, 0.10, 0.47, 0.19 |
| Label | Label51 | Per Unit overrides the Product Price |  |  |  | 0.68, 0.10, 2.48, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Ticket_NO_DblClick(Cancel As Integer)
    
    Ticket_No.Locked = False
    
End Sub

Private Sub Ticket_NO_Enter()
    If Not IsNull(Ticket_No) Then
        Ticket_No.Locked = True
    Else
        Ticket_No.Locked = False
    End If
End Sub
```
