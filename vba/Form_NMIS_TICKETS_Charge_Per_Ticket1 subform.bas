Option Compare Database

Private Sub CHARGE_PER_TICKET_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
    
End Sub

Private Sub Container_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Container_PCT, 2)
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)
On Error GoTo Err_DELIVERED_TO_ASSOCIATE_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles1"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_DELIVERED_TO_ASSOCIATE_DblClick:
    Exit Sub

Err_DELIVERED_TO_ASSOCIATE_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_DELIVERED_TO_ASSOCIATE_DblClick
    
End Sub

Private Sub Est_GBL_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Est_GBL_PCT, 2)
    
End Sub

Private Sub GBL_PCT_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
  
End Sub

Private Sub Rack_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Rack_PCT, 2)
    
End Sub

Private Sub SHIP_MILES_DblClick(Cancel As Integer)
On Error GoTo Err_SHIP_MILES_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles1"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_SHIP_MILES_DblClick:
    Exit Sub

Err_SHIP_MILES_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_SHIP_MILES_DblClick
    
End Sub

Private Sub Ship_Miles_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Ship_Miles_PCT, 2)
    
End Sub