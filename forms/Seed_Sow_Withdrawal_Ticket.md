# Form: Seed_Sow_Withdrawal_Ticket

**Record source:**

```sql
NMIS_TICKETS
```

**Backend tables referenced:** `NMIS_TICKETS`  
**Subforms/subreports:** `Form.Seed_Sow_Withdrawal_Ticket Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Seed_Sow_Withdrawal_Ticket Subform |  | Form.Seed_Sow_Withdrawal_Ticket Subform (master: FY → child: FY) |  |  | 0.08, 0.54, 9.43, 6.35 |
| Label | Label18 | Source Sowing Withdrawal Ticket |  |  |  | 3.20, 0.10, 3.18, 0.27 |
| TextBox | FY | View FY: |  |  |  | 0.92, 0.12, 0.50, 0.20 |
| Line | Line2 |  |  |  |  | 0.08, 0.47, 9.38, 0.00 |
| CommandButton | Refresh_Close | Close |  |  | Click | 8.89, 0.04, 0.47, 0.28 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub
```
