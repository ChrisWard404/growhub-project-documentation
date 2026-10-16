Option Compare Database

Private Sub Freezer_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Unit_Price_Freezer] = FREEZER
    
End Sub

Private Sub cooler_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Unit_Price_Cooler] = cooler
    
End Sub

Private Sub Storage_Date_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Storage_bill_Date] = Left$(Storage_Date, 6) & Right$([Forms]![Switchboard]![FY_For_Reports], 2)
    
End Sub