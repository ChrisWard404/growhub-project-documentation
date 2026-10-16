# Form: NMIS_TICKETS_charge_per_ticket

**Caption:** NMIS_TICKETS_charge_per_ticket  
**Record source:**

```sql
SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY FROM NMIS_TICKETS GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null));
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`, `NMIS_TICKETS`  
**Subforms/subreports:** `Form.NMIS_TICKETS_Charge_Per_Ticket subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | EXT_DOC_REF | EXT_DOC_REF | EXT_DOC_REF |  |  | 3.46, 0.31, 0.83, 0.21 |
| Subform | NMIS_TICKETS_Charge_Per_Ticket subform |  | Form.NMIS_TICKETS_Charge_Per_Ticket subform (master: EXT_DOC_REF → child: EXT_DOC_REF) |  |  | 0.12, 0.79, 6.29, 3.67 |
| ComboBox | Find_TSO | Find TSO: |  | SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.EXT_DOC_REF AS TSO, Count(NMIS_TICKETS.CN) AS Tickets FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.FY) Like [Forms]![NMIS_TICKETS_charge_per_ticket]![View_FY] & "*")) GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.EXT_DOC_REF HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null And (NMIS_TICKETS.EXT_DOC_REF) Not Like "*PICK*UP")); | AfterUpdate, Enter | 1.17, 0.42, 1.31, 0.24 |
| ComboBox | View_FY | Like View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;  |  | 1.16, 0.12, 0.58, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Find_TSO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Find_TSO_Enter()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Find_TSO = Forms![NMIS_SHIPPING_TICKET Subform]![EXT_DOC_REF]
    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_TSO.Requery
    
End Sub
```
