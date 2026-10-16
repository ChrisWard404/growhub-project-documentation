# Form: NMIS_Ticket_Note_Form

**Caption:** Product Ship Ticket Note Form  
**Record source:**

```sql
SELECT NMIS_TICKETS.NOTE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.CN)=[Forms]![NMIS_SHIPPING_TICKET subform]![CN]));
```

**Backend tables referenced:** `NMIS_TICKETS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_LOT_CN_Label | Ticket ID: |  |  |  | 0.08, 0.40, 0.81, 0.25 |
| Label | Label40 | Ticket Note |  |  |  | 2.71, 0.06, 3.62, 0.28 |
| Label | Label54 | Note: |  |  |  | 0.07, 0.71, 1.11, 0.20 |
| TextBox | SOURCE_LOT_CN |  | =[Forms]![NMIS_SHIPPING_TICKET subform]![TKT_NO] |  |  | 0.94, 0.38, 1.67, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | NOTE |  |  | 0.08, 0.04, 8.29, 2.42 |

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
