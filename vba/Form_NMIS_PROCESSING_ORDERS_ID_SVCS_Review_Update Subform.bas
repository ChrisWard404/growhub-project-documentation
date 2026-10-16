Option Compare Database

Private Sub CONTRACT_ITEM_Enter()
    
    CONTRACT_ITEM.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
    
End Sub