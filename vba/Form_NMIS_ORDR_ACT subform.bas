Option Compare Database

Private Sub Activity_Code_Exit(Cancel As Integer)
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)

    ORDER_CN.Requery

End Sub