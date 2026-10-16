Option Compare Database
Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click
    
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = Nz([TOTAL_PCT], Null)
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR_ALT] = Nz([Total_PCT_ALT], Null)
    
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![NET_INV]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Factor_Updated].Visible = True
    End If
    
    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub
Private Sub Close_wo_Updating_Click()
On Error GoTo Err_Close_wo_Updating_Click


    DoCmd.Close

Exit_Close_wo_Updating_Click:
    Exit Sub

Err_Close_wo_Updating_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_wo_Updating_Click
    
End Sub

Private Sub Form_Close()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Update_Target_Factors].Visible = False
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Round(Nz(TOTAL_PCT, 0), 2) <> 0 Then
        If (Round(Nz(TOTAL_PCT, 0), 2) = Round(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR], 0), 2) And _
            Round(Nz(Total_PCT_ALT, 0), 2) = Round(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR_ALT], 0), 2)) Then
            DoCmd.Close
        End If
    End If
    
End Sub