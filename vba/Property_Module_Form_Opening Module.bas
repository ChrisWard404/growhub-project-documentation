Option Compare Database

Public Function Property_Module_Form_Open(Property_Module, ID_ACTIVITY_CN, AGREEMENT_LOT_CN, ORDER_CN, Ticket_ID)

    If Not IsNull(Property_Module) Then
    
        Select Case [Property_Module]
        
            Case Is = "@SOW"

                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
                DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
                DoCmd.SetWarnings True

                stLinkCriteria = "[CN]=" & "'" & [AGREEMENT_LOT_CN] & "'"
                DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , stLinkCriteria, , acNormal
                DoCmd.GoToControl "[ID]"
                
                Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
                
                Case Is = "@PROC"

                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
                DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
                DoCmd.SetWarnings True

                stLinkCriteria = "[CN]=" & "'" & [AGREEMENT_LOT_CN] & "'"
                DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , stLinkCriteria, , acNormal
                DoCmd.GoToControl "[ID]"
                
                Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
                
            Case Is = "@Plant_Inventory"
                DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES2", acNormal, "", "", , acNormal
    
            Case Is = "PROC"
                If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ORDER_CN]) Then
                    DoCmd.OpenForm "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2", acNormal, , stLinkCriteria, , acNormal
                Else
                    MsgBox "Must have an ORDER NO. to view Properties with this activity"
                End If
            Case Is = "SHIP"
            
                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
                DoCmd.OpenQuery "NMIS_Product_ship Ticket_multiple_orders_mt"
                DoCmd.SetWarnings True
                
                stLinkCriteria = "[cn]=" & "'" & [Ticket_ID] & "'"
                If Not IsNull(Ticket_ID) Then
                    DoCmd.OpenForm "NMIS_SHIPPING_TICKET subform", acNormal, , stLinkCriteria, , acNormal
                    DoCmd.Requery
                Else
                    MsgBox "Must have a Ticket ID Entered"
                End If
            Case Is = "@SOURCE"
                
                If Not IsNull(Ticket_ID) Then
                    DoCmd.OpenForm "NMIS_SOURCE_LOTS", acNormal, , stLinkCriteria, , acNormal
                    Forms![NMIS_SOURCE_LOTS]![Selected_Source_ID] = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![SOURCE_LOT_CN]
                    DoCmd.Requery
                    
                Else
                    MsgBox "Must have a Ticket ID Entered"
                End If
            Case Else
                MsgBox "No Properties module with this activity"
                
        End Select
        
    End If
End Function