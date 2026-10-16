Option Compare Database


Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    If Not IsNull(AMT_PER_UNIT) Then
        AMT_PER_UNIT_INV_GROSS = AMT_PER_UNIT
    End If
    
End Sub


Private Sub Label30_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_SOURCE"
    
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & [SOURCE_LOT_CN] & "'"
    
    DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub