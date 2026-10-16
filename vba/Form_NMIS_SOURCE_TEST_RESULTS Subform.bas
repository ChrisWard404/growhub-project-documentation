Option Compare Database

Private Sub DAYS_STRAT_AfterUpdate()

    DAYS = Count_Increment
    
End Sub

Private Sub Form_AfterInsert()

    Default_Strat = DAYS_STRAT
    Last_Day = DAYS
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub