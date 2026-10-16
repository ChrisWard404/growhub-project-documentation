# Form: Processing_Contract_Payment

**Caption:** Report Input  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Contract Payment |  |  |  | 1.69, 0.08, 1.83, 0.27 |
| CommandButton | Preview_Report | Click to Preview Report |  |  |  | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| TextBox | Contract_No | Contract No.: |  |  |  | 2.59, 1.21, 1.41, 0.20 |
| TextBox | Begin_Date | Begin Date: |  |  |  | 2.60, 1.82, 0.68, 0.20 |
| TextBox | End_Date | End Date: |  |  |  | 2.60, 2.11, 0.68, 0.20 |
| TextBox | Contract_FY | Contract FY: |  |  |  | 2.59, 1.52, 0.68, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)
    
    If IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must enter both beginning and ending dates."
        DoCmd.GoToControl "Begin_Date"
    Else
        If [END_FY] <> "*" Then
            If ([BEGIN_DATE] > [END_DATE]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Date"
            End If
        Else
            Me.Visible = False
        End If
    End If
    
End Sub
```
