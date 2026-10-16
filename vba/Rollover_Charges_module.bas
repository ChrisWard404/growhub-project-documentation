Option Compare Database

'------------------------------------------------------------
' Rollover Charges, prices and MGMT Codes
'
'------------------------------------------------------------
Function Rollover_Product_Charges()
On Error GoTo Rollover_Product_Charges_Err

    DoCmd.OpenForm "NMIS_PRODUCT_CHARGES_ROLL_OVER"
    Forms![NMIS_PRODUCT_CHARGES_ROLL_OVER].Visible = False
    If Forms![NMIS_PRODUCT_CHARGES_ROLL_OVER]![Product_Charges_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Rollover_Product_Charges", acViewNormal, acEdit
        DoCmd.OpenQuery "Rollover_PRODUCT_MGMT_CODES", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Product Charge Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Product Charges have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_PRODUCT_CHARGES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Product_Charges_Exit:
    Exit Function

Rollover_Product_Charges_Err:
    MsgBox Error$
    Resume Rollover_Product_Charges_Exit

End Function

Function Rollover_Activity_Charges()
On Error GoTo Rollover_Activity_Charges_Err

    DoCmd.OpenForm "NMIS_ACTIVITY_CHARGES_ROLL_OVER"
    Forms![NMIS_ACTIVITY_CHARGES_ROLL_OVER].Visible = False
    If Forms![NMIS_ACTIVITY_CHARGES_ROLL_OVER]![Activity_Charges_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_ACTIVITY_CHARGES_Rollover", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Activity Charge Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Activity Charges have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_ACTIVITY_CHARGES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Activity_Charges_Exit:
    Exit Function

Rollover_Activity_Charges_Err:
    MsgBox Error$
    Resume Rollover_Activity_Charges_Exit

End Function
Function Rollover_Source_Prices()
On Error GoTo Rollover_Source_Prices_Err

    DoCmd.OpenForm "NMIS_SOURCE_PRICES_ROLL_OVER"
    Forms![NMIS_SOURCE_PRICES_ROLL_OVER].Visible = False
    If Forms![NMIS_SOURCE_PRICES_ROLL_OVER]![NMIS_SOURCE_PRICES_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_SOURCE_PRICE_RATES_BASE_Rollover", acViewNormal, acEdit
        DoCmd.OpenQuery "NMIS_SOURCE_PRICE_RATES_Rollover", acViewNormal, acEdit
        DoCmd.OpenQuery "NMIS_SOURCE_PRICE_LINKS_Rollover", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Source Price Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Source Prices have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_SOURCE_PRICES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Source_Prices_Exit:
    Exit Function

Rollover_Source_Prices_Err:
    MsgBox Error$
    Resume Rollover_Source_Prices_Exit

End Function

Function Rollover_Source_Processing_Prices()
On Error GoTo Rollover_Source_Processing_Prices_Err

    DoCmd.OpenForm "NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER"
    Forms![NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER].Visible = False
    If Forms![NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER]![NMIS_SOURCE_PROCESSING_PRICES_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_SOURCE_PROCESSING_RATES_Rollover", acViewNormal, acEdit
        DoCmd.OpenQuery "NMIS_SOURCE_PROCESSING_LINKS_Rollover", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Source Processing Prices Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Source Processing Prices have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Source_Processing_Prices_Exit:
    Exit Function

Rollover_Source_Processing_Prices_Err:
    MsgBox Error$
    Resume Rollover_Source_Processing_Prices_Exit

End Function
