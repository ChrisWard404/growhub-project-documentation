Option Compare Database

'------------------------------------------------------------
' Yearly Rollover
'
'------------------------------------------------------------
Function Yearly_Rollover()
On Error GoTo Yearly_Rollover_Err

    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    MsgBox "here"
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    'DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    'DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit


Yearly_Rollover_Exit:
    Exit Function

Yearly_Rollover_Err:
    MsgBox Error$
    Resume Yearly_Rollover_Exit

End Function

