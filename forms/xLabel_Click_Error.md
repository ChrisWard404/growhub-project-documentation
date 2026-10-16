# Form: xLabel_Click_Error

**Caption:** Clicked a Label Error Message  
**Opened from (VBA):** `Error_Messages`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | You Just Clicked on a Label and not a button! |  |  |  | 0.00, 0.17, 8.99, 2.43 |
| Label | Label1 | You have clicked on a label which does nothing but inform you of something. If you are having trouble figuring out which are buttons and which are labels, let them know at JHSN |  |  |  | 0.88, 3.12, 7.12, 1.11 |
| CommandButton | Close form | I Promise NEVER To Do That Again |  |  |  | 3.62, 4.67, 1.80, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click


    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub
```
