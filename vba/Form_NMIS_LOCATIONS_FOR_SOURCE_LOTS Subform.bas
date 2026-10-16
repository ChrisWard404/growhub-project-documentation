
Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If IsNull([CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub