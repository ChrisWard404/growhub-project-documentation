Option Compare Database

Private Sub Form_Close()

    Forms![NMIS_SOURCE_LOTS_Bend].Requery
    
End Sub
Private Sub Append_Species_from_Bend_Click()
On Error GoTo Err_Append_Species_from_Bend_Click

    Dim stDocName As String

    stDocName = "Append_Species_from_Bend"
    DoCmd.SetWarnings False
    DoCmd.OpenQuery stDocName, acNormal, acEdit
    DoCmd.SetWarnings True
    MsgBox "Species Added"
    DoCmd.Close

Exit_Append_Species_from_Bend_Click:
    Exit Sub

Err_Append_Species_from_Bend_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Append_Species_from_Bend_Click
    
End Sub