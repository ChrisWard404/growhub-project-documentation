Option Compare Database

'------------------------------------------------------------
' Set_CN
'
'------------------------------------------------------------
Function Set_CN()
On Error GoTo Set_CN_Err

    With CodeContextObject
        ' Sets the CN on the calling form to the INDEX on the calling form + User_Nursery_Code from the NMIS_ACCESS_SET_USER_NURSERY subform on the switchboard
        .CN = .Index & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code
    End With


Set_CN_Exit:
    Exit Function

Set_CN_Err:
    MsgBox Error$
    Resume Set_CN_Exit

End Function

