# Form: xnot_implemented

**Caption:** Option Not Implemented  
**Opens:** `Form:Switchboard`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label2 | This Option Not Currently Implemented |  |  |  | 1.79, 0.83, 2.83, 1.33 |
| CommandButton | Open_Switchboard | OK |  |  | Click | 2.71, 3.08, 0.88, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Open_Switchboard_Click()
On Error GoTo Err_Open_Switchboard_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Switchboard"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Switchboard_Click:
    Exit Sub

Err_Open_Switchboard_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Switchboard_Click
    
End Sub
```
