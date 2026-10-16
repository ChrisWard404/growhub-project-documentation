Option Compare Database

Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_INVENTORY()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal, "", "", , acNormal
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Activity_Code = "LOTINV"

End Sub
Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_LIFTING()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal, "", "", , acNormal
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Activity_Code = "FAMLF"

End Sub
Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING()
    
    Dim VarX As Variant
    VarX = DLookup("[CN]", "NMIS_LOCATIONS", "Location = 'Cooler'")
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal, "", "", , acNormal
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Activity_Code = "PACK"
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Location = VarX

End Sub
Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_ALL()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal

End Sub