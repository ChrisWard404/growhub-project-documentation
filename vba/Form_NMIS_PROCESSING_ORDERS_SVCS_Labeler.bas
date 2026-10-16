Option Compare Database

Private Sub CONTRACT_ITEM_Enter()

    CONTRACT_ITEM.Requery
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE.Locked = False
    
End Sub

Private Sub CLIENT_NOTE_Enter()
    
    If Not IsNull(CLIENT_NOTE) Then
        CLIENT_NOTE.Locked = True
    Else
        CLIENT_NOTE.Locked = False
    End If
    
End Sub

Private Sub Form_Close()
DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
 DoCmd.SetWarnings True
End Sub

Private Sub Form_Open(Cancel As Integer)
    
    DoCmd.GoToControl "contact_cn"
    
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE.Locked = False
    
End Sub

Private Sub NURSERY_NOTE_Enter()
    
    If Not IsNull(NURSERY_NOTE) Then
        NURSERY_NOTE.Locked = True
    Else
        NURSERY_NOTE.Locked = False
    End If
    
End Sub