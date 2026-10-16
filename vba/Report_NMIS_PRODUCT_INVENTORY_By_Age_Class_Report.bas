Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input_w_cost_center"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input_w_cost_center", , , , , acDialog, "Client Billings by Project"
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input_w_cost_center") Then
        Cancel = True
    End If

End Sub