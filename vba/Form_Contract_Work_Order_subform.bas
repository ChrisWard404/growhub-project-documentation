Private Sub AMENDMENT_DblClick(Cancel As Integer)

    AMENDMENT.Locked = False
    
End Sub

Private Sub AMENDMENT_Enter()

    If IsNull(AMENDMENT) Then
        AMENDMENT.Locked = False
    Else
        AMENDMENT.Locked = True
    End If
   
End Sub

Private Sub BEGIN_DATE_DblClick(Cancel As Integer)

    BEGIN_DATE.Locked = False
    
End Sub

Private Sub BEGIN_DATE_Enter()

    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE.Locked = False
    Else
        BEGIN_DATE.Locked = True
    End If
   
End Sub

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)
    
    Contract_No.Locked = False
    
End Sub

Private Sub CONTRACT_NO_Enter()

    If IsNull(Contract_No) Then
        Contract_No.Locked = False
    Else
        Contract_No.Locked = True
    End If
    
End Sub

Private Sub ESTIMATE_NO_DblClick(Cancel As Integer)

    ESTIMATE_NO.Locked = False
    
End Sub

Private Sub ESTIMATE_NO_Enter()

    If IsNull(ESTIMATE_NO) Then
        ESTIMATE_NO.Locked = False
    Else
        ESTIMATE_NO.Locked = True
    End If
 
End Sub

Private Sub Form_Current()

    'Forms![Contract_Work_Order]![NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER].Requery

End Sub

Private Sub New_Estimate_Click()

    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "BEGIN_DATE"

End Sub

Private Sub REFERENCE_DblClick(Cancel As Integer)

    REFERENCE.Locked = False
    
End Sub

Private Sub REFERENCE_Enter()

    If ESTIMATE_NO = 0 Then
        If IsNull(REFERENCE) Then
            REFERENCE.Locked = False
        Else
            REFERENCE.Locked = True
        End If
    End If
 
End Sub

Private Sub Remarks_DblClick(Cancel As Integer)

    REMARKS.Locked = False
    
End Sub

Private Sub Remarks_Enter()
    
    If ESTIMATE_NO = 0 Then
        If IsNull(REMARKS) Then
            REMARKS.Locked = False
        Else
            REMARKS.Locked = True
        End If
    End If
 
End Sub