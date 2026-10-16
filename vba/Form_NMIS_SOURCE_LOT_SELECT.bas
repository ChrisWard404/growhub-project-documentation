Option Compare Database

Private Sub Like_Client_Enter()

    If Like_Plntmstr_Symbol = "na" Then
        Like_Plntmstr_Symbol = "*"
    End If
    SOURCE_LOT_ID_SELECT = Null
    Like_Client.Requery
    
End Sub

Private Sub Like_Plntmstr_Symbol_Enter()
    
    If Like_Client = "na" Then
        Like_Client = "*"
    End If
    SOURCE_LOT_ID_SELECT = Null
    Like_Plntmstr_Symbol.Requery
    
End Sub

Private Sub NMIS_SOURCE_LOT_REPORT_CREATE_Click()

On Error GoTo Err_NMIS_SOURCE_LOT_REPORT_CREATE_Click

Dim stDocName As String

If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] <> _
    [NMIS_SOURCE_LOTS_REPORT subform].Form![STORED_AT_ASSOCIATE] Then
    MsgBox "NOT STORED HERE"
Else
    If Include_All_Tests Then
        stDocName = "NMIS_SOURCE_LOTS_REPORT_All_Tests"
    Else
        stDocName = "NMIS_SOURCE_LOTS_REPORT_Last_Test_Only"
    End If
    DoCmd.OpenReport stDocName, acPreview
End If
    
    
Exit_NMIS_SOURCE_LOT_REPORT_CREATE_Click:
    Exit Sub

Err_NMIS_SOURCE_LOT_REPORT_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_LOT_REPORT_CREATE_Click
    
End Sub

Private Sub SOURCE_LOT_ID_SELECT_Enter()

    Like_Plntmstr_Symbol = "na"
    Like_Client = "na"
End Sub