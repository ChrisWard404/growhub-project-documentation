Option Compare Database

'------------------------------------------------------------
' SPCL_SVCS_STRING_Macro
'
'------------------------------------------------------------
Function SPCL_SVCS_STRING_Macro()
On Error GoTo SPCL_SVCS_STRING_Macro_Err

    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit


SPCL_SVCS_STRING_Macro_Exit:
    Exit Function

SPCL_SVCS_STRING_Macro_Err:
    MsgBox Error$
    Resume SPCL_SVCS_STRING_Macro_Exit

End Function

