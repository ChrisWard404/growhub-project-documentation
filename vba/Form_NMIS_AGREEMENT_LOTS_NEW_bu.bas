
Private Sub Form_Close()

On Error GoTo Err_Form_Close
    If Not IsNull(ID) Then
        If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
        End If
        Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    End If
Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close
    
End Sub

Private Sub ID_Enter()
On Error GoTo Err_ID_Enter
    
Dim Default_ID As Long

    
    With CodeContextObject
        
        If IsNull(ID) Then
            '.ID = "Temp ID"
            Select Case [NURSERY_ASSOCIATE]
    
            Case Is = "040207" 'Lucky Peak Nursery
                '.ID = Forms![NMIS_AGREEMENTS]![NMIS_SOURCE_LOTS_ID subform].Form![ID] _
                    '& Left$(CATEGORY_CODE, 1) & Right$(BEGIN_FY, 1) ' & Right$(END_FY, 1)
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Is = "050357" 'Placerville Nursery
                .ID = Forms![NMIS_AGREEMENTS]![NMIS_SOURCE_LOTS_ID subform].Form![ID] & "-" _
                    & Right$(BEGIN_FY, 1) & Right$(END_FY, 1) & IIf(Left$(CATEGORY_CODE, 1) = "C", "C", "")
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Is = "061019" 'J. Herbert Stone Nursery
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Else
                'Sets the ID to a default based on the table index and User Nursery offset'
                ID = " "
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            End Select
        End If
        
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        DoCmd.RunCommand acCmdRefresh
    End With

    'If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
        'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
        'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    'End If
Exit_ID_Enter:
    Exit Sub

Err_ID_Enter:
    'MsgBox Err.DESCRIPTION
    MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    Resume Exit_ID_Enter
       
End Sub

Private Sub ID_Exit(Cancel As Integer)

    Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery

End Sub

Private Sub Open_Agreement_Lots_Form_Click()
On Error GoTo Err_Open_Agreement_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    stDocName = "NMIS_AGREEMENT_LOTS"
    
    DoCmd.RunCommand acCmdRefreshPage
    'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    If Not IsNull(ID) Then
        If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
        End If
        Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    End If
    Forms![NMIS_AGREEMENTS].Requery
    
    DoCmd.OpenForm stDocName, acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENT_LOTS_NEW]![CN]", , acNormal
    Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False

Exit_Open_Agreement_Lots_Form_Click:
    Exit Sub

Err_Open_Agreement_Lots_Form_Click:
    'MsgBox Err.DESCRIPTION
    
    Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Null
    DoCmd.Close , "NMIS_AGREEMENT_LOTS"
    ID.SetFocus
    DoCmd.GoToControl "ID"
    'MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    Resume Exit_Open_Agreement_Lots_Form_Click
    
End Sub
Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click

    DoCmd.RunCommand acCmdRefresh
    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    'MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    DoCmd.GoToControl "ID"
    Resume Exit_Close_Form_Click
    
End Sub

Private Sub PREVIOUS_AGREEMENT_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(previou_agreement_lot_cn) And IsNull(PREVIOUS_NURSERY_ASSOCIATE) Then
        PREVIOUS_NURSERY_ASSOCIATE = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        PREVIOUS_NURSERY_ASSOCIATE.Requery
    End If
  
End Sub