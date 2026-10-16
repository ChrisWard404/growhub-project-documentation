Option Compare Database

Private Sub Preview_Report_Click()

    DoCmd.OpenReport "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change", acPreview

End Sub