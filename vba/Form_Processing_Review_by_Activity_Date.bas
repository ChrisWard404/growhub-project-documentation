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