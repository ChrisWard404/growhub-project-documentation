Option Compare Database

Private Sub Contract_Item_Exit(Cancel As Integer)

End Sub

Private Sub Field_Container_BeforeUpdate(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Field_Container_Exit(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Nursery_ID_Enter()

    If IsNull(Nursery_ID) Then
        Field_Container = [Forms]![Husky_lpro_data_input_check_form]![Field_Container_Default]
    End If
    
End Sub

Private Sub Sum_Containers_Enter()

    Precool_Unit_Code = "Precool" & Field_Container
    If Field_Container = "S" Or Field_Container = "X" Then
        Sum_Containers = 1
    End If

End Sub

Private Sub Sum_Feet_Lifted_DblClick(Cancel As Integer)

    If Not IsNull(Nursery_ID) Then
        Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Requery
        Sum_Feet_Lifted = Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Form![Lot_Total_Ft]
    End If
    
End Sub

Private Sub Sum_Feet_Lifted_Enter()

    If Not IsNull(Nursery_ID) Then
        If Forms![Husky_lpro_data_input_check_form]![Auto_Insert_All_Ft] Then
            Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Requery
            Sum_Feet_Lifted = Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Form![Lot_Total_Ft]
        End If
    End If
    
End Sub