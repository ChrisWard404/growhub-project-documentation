Option Compare Database

Sub Open_Agreement_Lots_Form_From_Switchboard()
On Error GoTo open_agreement_lots_form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
    DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, "", "", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = True
open_agreement_lots_form_Exit:
    Exit Sub

open_agreement_lots_form_Err:
    MsgBox Error$
    Resume open_agreement_lots_form_Exit

End Sub

Sub Open_Agreements_Form_From_Switchboard()
On Error GoTo open_agreements_form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
    DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_AGREEMENTS", acNormal, , , , acWindowNormal

open_agreements_form_Exit:
    Exit Sub

open_agreements_form_Err:
    MsgBox Error$
    Resume open_agreements_form_Exit

End Sub
    
Sub Open_NMIS_TICKETS_charge_per_ticket1_Form_From_Switchboard()

On Error GoTo Open_NMIS_TICKETS_charge_per_ticket1_Form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_TICKETS_charge_per_ticket1", , , stLinkCriteria
    
Open_NMIS_TICKETS_charge_per_ticket1_Form_Exit:
    Exit Sub

Open_NMIS_TICKETS_charge_per_ticket1_Form_Err:
    MsgBox Error$
    Resume Open_NMIS_TICKETS_charge_per_ticket1_Form_Exit
    
End Sub
Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Err
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "XPLTN"
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Est_Counter = True
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Exit
    
End Sub

Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Err
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "XPLTP"
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Exit
    
End Sub
Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Total_Containers_Grow_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "LOCCHG"
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Exit
    
End Sub
Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Err
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "SOW"
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Exit
    
End Sub
Sub Open_Propagule_Orders_New_Form_From_Switchboard()
On Error GoTo Open_Propagule_Orders_New_Form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Totals_Prop_Grow_Cont_At_Time_of_Order_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_PROCESSING_ORDERS_INPUT_Propagule", acNormal, "", "", , acNormal

Open_Propagule_Orders_New_Form_Exit:
    Exit Sub

Open_Propagule_Orders_New_Form_Err:
    MsgBox Error$
    Resume Open_Propagule_Orders_New_Form_Exit

End Sub
Sub Open_Product_Ship_ticket_Form_From_Switchboard()
On Error GoTo Open_Product_Ship_ticket_Form_From_Switchboard_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
    DoCmd.OpenQuery "NMIS_Product_ship Ticket_multiple_orders_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_SHIPPING_TICKET subform", acNormal
    
Open_Product_Ship_ticket_Form_From_Switchboard_Exit:
    Exit Sub

Open_Product_Ship_ticket_Form_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_Product_Ship_ticket_Form_From_Switchboard_Exit

End Sub