Option Compare Database

Private Sub UNIT_CODE_Exit(Cancel As Integer)
    
    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub