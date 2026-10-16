# Form: NMIS_TICKETS_charge_per_ticket1

**Caption:** Charge Per Ticket  
**Record source:**

```sql
SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY FROM NMIS_TICKETS GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_TICKETS`  
**Subforms/subreports:** `Form.NMIS_TICKETS_Charge_Per_Ticket1 subform`, `Form.TSO_Container_Summary`  
**Opens:** `Report:Ship_Ticket_Summary_by_TSO`, `Report:Ship_Ticket_Summary_by_Ticket_No_TSO2`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Forms_Open Module`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Green_Background_Box |  |  |  |  | 0.04, 0.03, 2.90, 0.72 |
| TextBox | EXT_DOC_REF | EXT_DOC_REF | EXT_DOC_REF |  |  | 3.45, 0.29, 0.83, 0.21 |
| Subform | NMIS_TICKETS_Charge_Per_Ticket subform |  | Form.NMIS_TICKETS_Charge_Per_Ticket1 subform (master: EXT_DOC_REF → child: EXT_DOC_REF) |  |  | 0.03, 0.79, 9.34, 3.56 |
| ComboBox | Find_TSO | Find TSO: |  | SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.EXT_DOC_REF AS TSO, Count(NMIS_TICKETS.CN) AS Tickets, NMIS_TICKETS.FY, Sum(NMIS_TICKETS.CHARGE_PER_TICKET) AS [$ Per TSO], [DELIVERED_BY_ASSOCIATE] & IIf(Not IsNull([DELIVERED_BY_ASSOCIATE])," - " & [nmis_associates].[ASSOCIATE_NAME]) AS [Delivered By] FROM (NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_BY_ASSOCIATE) LEFT JOIN NMIS_ASSOCIATES AS NMIS_ASSOCIATES_1 ON NMIS_TICKETS.DELIVERED_TO_ASSOCIATE = NMIS_ASSOCIATES_1.ASSOCIATE WHERE (((NMIS_TICKETS.TICKET_TYPE)="p")) GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY, [DELIVERED_BY_ASSOCIATE] & IIf(Not IsNull([DELIVERED_BY_ASSOCIATE])," - " & [nmis_associates].[ASSOCIATE_NAME]), NMIS_TICKETS.EXT_DOC_REF HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null And (NMIS_TICKETS.EXT_DOC_REF) Not Like "*PICK*UP") AND ((NMIS_TICKETS.FY) Like [Forms]![NMIS_TICKETS_charge_per_ticket1]![View_FY] & "*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.EXT_DOC_REF DESC; | AfterUpdate, Enter | 1.16, 0.40, 1.68, 0.24 |
| ComboBox | View_FY | Like View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; |  | 1.15, 0.10, 0.58, 0.20 |
| TextBox | TSO_Charge | TSO Charge: |  |  |  | 7.11, 0.44, 0.00, 0.24 |
| TextBox | Mileage_Override | Mileage Override: |  |  | AfterUpdate | 7.11, 0.09, 0.00, 0.24 |
| Subform | TSO_Container_Summary |  | Form.TSO_Container_Summary (master: EXT_DOC_REF → child: EXT_DOC_REF) |  |  | 2.50, 4.42, 3.88, 1.75 |
| CommandButton | Prod_Ship_Ticket_list_by_Tkt_No_TSO | Click for Ship Tickets with TSO's Checklist... |  |  | Click | 0.38, 5.04, 1.71, 0.43 |
| CommandButton | Prod_Ship_Ticket_list_by_TSO | Click for TSO Summary for Selected TSO |  |  | Click | 0.38, 4.48, 1.71, 0.43 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Find_TSO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
    Mileage_Override = Null
    TSO_Charge = Null
    
End Sub

Private Sub Find_TSO_Enter()
    
    Find_TSO.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Mileage_Override_AfterUpdate()

    [NMIS_TICKETS_Charge_Per_Ticket subform].Form![Ship_Miles_PCT].Requery
    
End Sub

Private Sub Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Ticket_No_TSO2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click
    
End Sub

Private Sub Prod_Ship_Ticket_list_by_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_TSO"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_TSO_Click
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_TSO.Requery
    
End Sub
```
