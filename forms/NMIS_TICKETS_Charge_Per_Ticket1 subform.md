# Form: NMIS_TICKETS_Charge_Per_Ticket1 subform

**Caption:** NMIS_TICKETS_Charge_Per_Ticket subform  
**Record source:**

```sql
SELECT NMIS_TICKETS.CN, NMIS_TICKETS.CHARGE_PER_TICKET, NMIS_TICKETS.GBL_PCT, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.DELIVERED_BY_ASSOCIATE, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY, [**Product_Ship_Ticket_Total_Containers_Table].Containers, [**Product_Ship_Ticket_Total_Containers_Table].SHIP_MILES, [**Product_Ship_Ticket_Total_Containers_Table].Rack_Eq, NMIS_TICKETS.NOTE FROM [**Product_Ship_Ticket_Total_Containers_Table] RIGHT JOIN NMIS_TICKETS ON [**Product_Ship_Ticket_Total_Containers_Table].TICKET_CN = NMIS_TICKETS.CN WHERE (((NMIS_TICKETS.TICKET_TYPE)="p"));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_TICKETS`  
**Embedded in:** `Form:NMIS_TICKETS_charge_per_ticket1`  
**Opens:** `Form:NMIS_ASSOCIATES_Ship_Miles1`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label14 | Charge Per Ticket |  |  |  | 2.23, 0.21, 0.78, 0.36 |
| Label | GBL_PCT_Label | GBL % |  |  |  | 3.05, 0.36, 0.49, 0.21 |
| Label | DELIVERED_TO_ASSOCIATE_Label | Delivered To Associate |  |  |  | 3.60, 0.03, 0.85, 0.54 |
| Label | DELIVERED_BY_ASSOCIATE_Label | Delivered By Associate |  |  |  | 4.51, 0.03, 0.85, 0.54 |
| Label | TKT_NO_Label | Ticket ID |  |  |  | 1.38, 0.36, 0.81, 0.21 |
| Label | EXT_DOC_REF_Label | TSO # |  |  |  | 0.06, 0.36, 1.26, 0.21 |
| Label | Label18 | Bags/Boxes |  |  |  | 6.27, 0.03, 0.82, 0.28 |
| Label | Label23 | % |  |  |  | 6.95, 0.33, 0.47, 0.24 |
| Label | Label24 | # |  |  |  | 6.48, 0.33, 0.43, 0.24 |
| Label | Label29 | Ship |  |  |  | 5.42, 0.03, 0.56, 0.28 |
| Label | Label30 | % |  |  |  | 6.01, 0.33, 0.41, 0.24 |
| Label | Label31 | Miles |  |  |  | 5.42, 0.33, 0.56, 0.24 |
| Label | Label36 | Est Racks |  |  |  | 7.36, 0.03, 0.67, 0.28 |
| Label | Label37 | % |  |  |  | 7.92, 0.33, 0.47, 0.24 |
| Label | Label38 | # |  |  |  | 7.47, 0.33, 0.41, 0.24 |
| Label | Label42 | Est. GBL  %  |  |  |  | 8.43, 0.03, 0.49, 0.54 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  | DblClick | 2.23, 0.04, 0.78, 0.21 |
| TextBox | GBL_PCT |  | GBL_PCT |  | DblClick | 3.05, 0.04, 0.49, 0.21 |
| ComboBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE | SELECT [ASSOCIATE] & " " AS Code, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.SHIP_MILES FROM NMIS_ASSOCIATES; | DblClick | 3.60, 0.04, 0.86, 0.21 |
| ComboBox | DELIVERED_BY_ASSOCIATE |  | DELIVERED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 4.51, 0.04, 0.83, 0.21 |
| TextBox | TKT_NO |  | TKT_NO |  |  | 1.36, 0.03, 0.82, 0.22 |
| TextBox | EXT_DOC_REF |  | EXT_DOC_REF |  |  | 0.04, 0.04, 1.27, 0.21 |
| TextBox | Containers |  | Containers |  |  | 6.48, 0.04, 0.43, 0.21 |
| TextBox | Container_PCT |  | =Round([Containers]/[Sum_Containers]*100,2) |  | DblClick | 6.95, 0.04, 0.47, 0.21 |
| TextBox | SHIP_MILES |  | SHIP_MILES |  | DblClick | 5.42, 0.04, 0.55, 0.21 |
| TextBox | Ship_Miles_PCT |  | =Round(IIf(Not IsNull([Forms]![NMIS_TICKETS_charge_per_ticket1]![Mileage_Override]),100,[SHIP_MILES])/IIf(Not IsNull([Forms]![NMIS_TICKETS_charge_per_ticket1]![Mileage_Override]),[Sum_Tickets],[Sum_Miles]/100),2) |  | DblClick | 6.01, 0.04, 0.41, 0.21 |
| TextBox | Rack_Eq |  | Rack_Eq |  |  | 7.47, 0.04, 0.41, 0.21 |
| TextBox | Rack_PCT |  | =Round([Rack_Eq]/[Sum_Rack_Eq]*100,2) |  | DblClick | 7.92, 0.04, 0.47, 0.21 |
| TextBox | Est_GBL_PCT |  | =Round((([Ship_Miles_PCT]/100)*[Rack_PCT]*[Sum_Tickets]),2) |  | DblClick | 8.43, 0.04, 0.49, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 0.56, 0.28, 8.32, 0.34 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_GBL_PCT |  | =Sum([GBL_PCT]) |  |  | 3.05, 0.04, 0.49, 0.19 |
| TextBox | Sum_CHARGE_PER_TICKET |  | =Sum([CHARGE_PER_TICKET]) |  |  | 2.22, 0.04, 0.79, 0.19 |
| TextBox | Sum_Containers |  | =Sum([Containers]) |  |  | 6.34, 0.04, 0.56, 0.19 |
| TextBox | Sum_Miles |  | =Sum([SHIP_MILES]) |  |  | 5.34, 0.04, 0.62, 0.19 |
| TextBox | Sum_Rack_Eq |  | =Sum([Rack_Eq]) |  |  | 7.38, 0.04, 0.50, 0.19 |
| TextBox | Sum_Tickets |  | =Count([tkt_no]) |  |  | 1.34, 0.04, 0.79, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CHARGE_PER_TICKET_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
    
End Sub

Private Sub Container_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Container_PCT, 2)
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)
On Error GoTo Err_DELIVERED_TO_ASSOCIATE_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles1"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_DELIVERED_TO_ASSOCIATE_DblClick:
    Exit Sub

Err_DELIVERED_TO_ASSOCIATE_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_DELIVERED_TO_ASSOCIATE_DblClick
    
End Sub

Private Sub Est_GBL_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Est_GBL_PCT, 2)
    
End Sub

Private Sub GBL_PCT_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
  
End Sub

Private Sub Rack_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Rack_PCT, 2)
    
End Sub

Private Sub SHIP_MILES_DblClick(Cancel As Integer)
On Error GoTo Err_SHIP_MILES_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles1"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_SHIP_MILES_DblClick:
    Exit Sub

Err_SHIP_MILES_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_SHIP_MILES_DblClick
    
End Sub

Private Sub Ship_Miles_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Ship_Miles_PCT, 2)
    
End Sub
```
