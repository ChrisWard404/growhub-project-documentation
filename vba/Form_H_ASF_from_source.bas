Option Compare Database

Private Sub AVERAGE_ASF_DblClick(Cancel As Integer)

    Forms![NMIS_AGREEMENT_LOTS]![HARVEST_ASF_ADJUSTMENT] = Round(AVERAGE_ASF, 0)
    
End Sub

Private Sub USED_AfterUpdate()

    USE_SUM.Requery
    AVERAGE_ASF.Requery
    Requery

End Sub