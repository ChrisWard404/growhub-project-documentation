# Form: BeginDate_EndDate_Input

**Caption:** Report Input  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Report Input  |  |  |  | 1.96, 0.08, 1.30, 0.27 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| TextBox | BeginDate | Begin Date: |  |  |  | 2.68, 1.41, 0.68, 0.20 |
| TextBox | EndDate | End Date: |  |  |  | 2.68, 1.72, 0.68, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Report_Click()
    If IsNull([BeginDate]) Or IsNull([EndDate]) Then
        MsgBox "You must enter both beginning and ending dates."
        DoCmd.GoToControl "BeginDate"
    Else
    If ([BeginDate] > [EndDate]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "BeginDATE"
    Else
            Me.Visible = False
    End If
    End If
End Sub
```
