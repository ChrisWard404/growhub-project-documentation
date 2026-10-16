# Form: xnot_not_valid_double_click_to_to_update

**Caption:** Option Not Implemented  
**Opens:** `Form:Switchboard`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label2 | The Value You Entered Is Not Valid |  |  |  | 1.88, 0.21, 2.83, 1.33 |
| CommandButton | Open_Switchboard | OK |  |  | Click | 2.96, 3.54, 0.88, 0.00 |
| Label | Label9 | Double Click In The Field To Open The Entry Form |  |  |  | 1.88, 1.62, 2.83, 1.67 |

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
