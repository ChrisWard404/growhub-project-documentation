# Form: Processing_Review_by_Activity_Date

**Caption:** Report Input  
**Opens:** `Report:PACK_PROOF`, `Report:PACK_PROOF_HOURLY`, `Report:PACK_PROOF_MISC`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Enter Activity Date |  |  |  | 1.50, 0.12, 1.93, 0.27 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.42, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.81, 1.08, 3.46, 0.92 |
| TextBox | Begin_Activity_Date | Begin Date (mm/dd/yy): |  |  |  | 2.97, 1.26, 1.08, 0.23 |
| CommandButton | CmdProofPack | Preview Packing Report |  |  | Click | 1.50, 2.19, 2.00, 0.42 |
| CommandButton | Pack_Proof_Hourly | Preview Hourly Report |  |  | Click | 1.50, 2.68, 2.00, 0.42 |
| TextBox | End_Activity_Date | End Date (Blank if Same): |  |  |  | 2.97, 1.58, 1.08, 0.23 |
| CommandButton | Command24 | Preview Misc Report |  |  | Click | 1.50, 3.18, 2.00, 0.42 |

## Code-behind (VBA)

```vb
Option Compare Database
Private Sub CmdProofPack_Click()
On Error GoTo Err_CmdProofPack_Click

    Dim stDocName As String
    Dim stMacroName As String
    
    If IsNull(End_Activity_Date) Then
        End_Activity_Date = Begin_Activity_Date
    End If

    If ([Begin_Activity_Date] > [End_Activity_Date]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Activity_DATE"
    Else
    ' turns warning (about to update/delete...) off
        
        stMacroName = "SPCL_SVCS_STRING Macro"
        
        DoCmd.SetWarnings False
        DoCmd.RunMacro stMacroName
        DoCmd.OpenQuery "PACK_PROOF Query"
        DoCmd.OpenQuery "PACK_PROOF_A Query"
        DoCmd.OpenQuery "PACK_PROOF_O Query"
        DoCmd.SetWarnings True

        stDocName = "PACK_PROOF"
        DoCmd.OpenReport stDocName, acPreview
    End If

Exit_CmdProofPack_Click:
    Exit Sub

Err_CmdProofPack_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdProofPack_Click
    
End Sub

Private Sub Command24_Click()
    
    If IsNull(End_Activity_Date) Then
        End_Activity_Date = Begin_Activity_Date
    End If

    If ([Begin_Activity_Date] > [End_Activity_Date]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Activity_DATE"
    Else
        DoCmd.SetWarnings True

        stDocName = "PACK_PROOF_MISC"
        
        DoCmd.OpenReport stDocName, acPreview
    End If
  
End Sub

Private Sub Pack_Proof_Hourly_Click()
    
    If IsNull(End_Activity_Date) Then
        End_Activity_Date = Begin_Activity_Date
    End If

    If ([Begin_Activity_Date] > [End_Activity_Date]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Activity_DATE"
    Else
        DoCmd.SetWarnings True

        stDocName = "PACK_PROOF_HOURLY"
        
        DoCmd.OpenReport stDocName, acPreview
    End If
    
End Sub
```
