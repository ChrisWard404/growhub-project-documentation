Option Compare Database

Private Sub CALIBRATION_FUNNEL_SETTING_ID_DblClick(Cancel As Integer)

    Calibration_Funnel_Setting_ID.Locked = False
    
End Sub

Private Sub CALIBRATION_FUNNEL_SETTING_ID_Enter()

    If IsNull([Calibration_Funnel_Setting_ID]) Then
        [Calibration_Funnel_Setting_ID] = [DRILL_FUNNEL_SETTING]
    End If
    If IsNull(Calibration_Revs_Used) Then
        If [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] = "061019" Then
            Calibration_Revs_Used = 5
        Else
            Calibration_Revs_Used = 3
        End If
    End If
    Calibration_Funnel_Setting_ID.Locked = True
    
End Sub

Private Sub CALIBRATION_FUNNEL_SETTING_ID_Exit(Cancel As Integer)

   ' If Not IsNull([Calibration_Funnel_Setting_ID]) And _
        'IsNull([DRILL_FUNNEL_SETTING]) Then
            'Response = MsgBox("Use this setting as the default?", vbYesNo)
            'If Response = vbYes Then
                '[DRILL_FUNNEL_SETTING] = [Calibration_Funnel_Setting_ID]
            'End If
    'End If
    
End Sub

Private Sub CALIBRATION_REV_SOURCE_UNITS_DblClick(Cancel As Integer)

    Calibration_Rev_Source_Units.Locked = False
    
End Sub

Private Sub CALIBRATION_REV_SOURCE_UNITS_Enter()

    If IsNull(Calibration_Rev_Source_Units) Then
        Calibration_Rev_Source_Units.Locked = False
    Else
        Calibration_Rev_Source_Units.Locked = True
    End If
    
End Sub

Private Sub CALIBRATION_REV_SOURCE_UNITS_Exit(Cancel As Integer)
 
  If Calibration_Source_Units > 0 Then
  
    Dim Source_Units As Double
    Dim Units_Per_Rev As Double
    Dim Rev_Source_Units As Double
    Dim Revs_Used As Integer
    Dim Travel_Per_Rev As Double
    Dim Total_Container_Units As Double
    Dim Min_Units_For_Sublot As Double
    Dim Increment_For_Sublot As Integer
    Dim Max_Sublots As Integer
    Dim Calibration_Sublots As Integer
    Dim Sublot_Units As Double
    
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units] >= 0 Then
        Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units] >= 0 Then
        Rev_Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used] >= 0 Then
        Revs_Used = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used]
    End If
    Total_Container_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![EST_CONTAINERS_REQUIRED]
    Min_Units_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Min_Units_For_Sublot]
    Increment_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Increment_For_Sublot]
    Max_Sublots = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Max_Sublots]

        If Revs_Used <> 0 And Rev_Source_Units <> 0 Then
            Units_Per_Rev = Round(Rev_Source_Units / Revs_Used, 3)
            Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Units_Per_Rev] = Units_Per_Rev
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Travel_Per_Rev] = Travel_Per_Rev
            If Total_Container_Units < Min_Units_For_Sublot Then
                Calibration_Sublots = 0
                Sublot_Units = 0
            Else
                Calibration_Sublots = (Total_Container_Units / Min_Units_For_Sublot)
                If Calibration_Sublots > Max_Sublots Then
                    Calibration_Sublots = Max_Sublots
                End If
                Sublot_Units = Round(Increment_For_Sublot / Travel_Per_Rev * Units_Per_Rev, 2)
            End If
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Sublots] = Calibration_Sublots
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Sublot_Units] = Sublot_Units
            'Check to see if Calibrated units per rev is within range
            If [DRILL_MIN_REV_UNITS] > 0 And [DRILL_MAX_REV_UNITS] > 0 Then
                If Units_Per_Rev < [DRILL_MIN_REV_UNITS] Or Units_Per_Rev > [DRILL_MAX_REV_UNITS] Then
                    DoCmd.OpenForm "xOyjord_Calibration_Error"
                End If
            End If
        End If
    
    End If
    [NMIS_OYJORD_SETTINGS subform].Requery

End Sub

Private Sub CALIBRATION_REVS_USED_DblClick(Cancel As Integer)

    Calibration_Revs_Used.Locked = False
    
End Sub

Private Sub CALIBRATION_REVS_USED_Enter()

    'If IsNull(Calibration_Revs_Used) Then
        Calibration_Revs_Used.Locked = False
    'Else
        'Calibration_Revs_Used.Locked = True
    'End If
    
End Sub

Private Sub CALIBRATION_SOURCE_UNITS_DblClick(Cancel As Integer)

    Calibration_Source_Units.Locked = False
    
End Sub

Private Sub CALIBRATION_SOURCE_UNITS_Enter()

    If IsNull(Calibration_Source_Units) Then
        Calibration_Source_Units.Locked = False
    Else
        Calibration_Source_Units.Locked = True
    End If
    
End Sub

Private Sub CALIBRATION_TRAVEL_PER_REV_DblClick(Cancel As Integer)

    Calibration_Travel_Per_Rev.Locked = False
    
End Sub

Private Sub CALIBRATION_TRAVEL_PER_REV_Enter()

    If IsNull(Calibration_Travel_Per_Rev) Then
        Calibration_Travel_Per_Rev.Locked = False
    Else
        Calibration_Travel_Per_Rev.Locked = True
    End If
    
End Sub

Private Sub CALIBRATION_TRAVEL_PER_REV_Exit(Cancel As Integer)

    Calibration_Travel_Per_Rev.Locked = True
    
End Sub

Private Sub DRILL_FUNNEL_SETTING_DblClick(Cancel As Integer)

        DRILL_FUNNEL_SETTING.Locked = False
    
End Sub

Private Sub DRILL_FUNNEL_SETTING_Enter()

    If IsNull(DRILL_FUNNEL_SETTING) Then
        DRILL_FUNNEL_SETTING.Locked = False
    Else
        DRILL_FUNNEL_SETTING.Locked = True
    End If
    
End Sub

Private Sub DRILL_MAX_REV_UNITS_DblClick(Cancel As Integer)

    DRILL_MAX_REV_UNITS.Locked = False
    
End Sub

Private Sub DRILL_MAX_REV_UNITS_Enter()

    If IsNull(DRILL_MAX_REV_UNITS) Then
        DRILL_MAX_REV_UNITS.Locked = False
    Else
        DRILL_MAX_REV_UNITS.Locked = True
    End If
    
End Sub

Private Sub DRILL_MIN_REV_UNITS_DblClick(Cancel As Integer)

    DRILL_MIN_REV_UNITS.Locked = False
   
End Sub

Private Sub DRILL_MIN_REV_UNITS_Enter()

    If IsNull(DRILL_MIN_REV_UNITS) Then
        DRILL_MIN_REV_UNITS.Locked = False
    Else
        DRILL_MIN_REV_UNITS.Locked = True
    End If
    
End Sub

Private Sub EST_CONTAINERS_REQUIRED_DblClick(Cancel As Integer)

    EST_CONTAINERS_REQUIRED.Locked = False
    
End Sub

Private Sub EST_CONTAINERS_REQUIRED_Enter()
    
    If Not IsNull(EST_CONTAINERS_REQUIRED) Then
        EST_CONTAINERS_REQUIRED.Locked = True
    Else
        EST_CONTAINERS_REQUIRED.Locked = False
    End If

End Sub

Private Sub EST_CONTAINERS_REQUIRED_Exit(Cancel As Integer)

    EST_CONTAINERS_REQUIRED.Locked = True
    
End Sub

Private Sub Form_Current()

            'Forms![Oyjord_Calibration]![OJYORD_CALIBRATION subform]![Units_Per_Rev] = Null
            'Forms![Oyjord_Calibration]![OJYORD_CALIBRATION subform]![Calibration_Travel_Per_Rev] = Null
        If Not IsNull(Rev_Source_Units) Then
            Units_Per_Rev = Round([Calibration_Rev_Source_Units] / Calibration_Revs_Used, 3)
            'Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
        Else
            Units_Per_Rev = Null
            'Travel_Per_Rev = Null
        End If
        
            
End Sub

Private Sub NUMBER_CALIBRATION_CONTAINERS_DblClick(Cancel As Integer)

    Number_Calibration_Containers.Locked = False
    
End Sub

Private Sub NUMBER_CALIBRATION_CONTAINERS_Enter()

    If IsNull(Number_Calibration_Containers) Then
     
        If Calibration_Source_Units > 0 Then
  
        Dim Source_Units As Double
        Dim Units_Per_Rev As Double
        Dim Rev_Source_Units As Double
        Dim Revs_Used As Integer
        Dim Travel_Per_Rev As Double
        Dim Total_Container_Units As Double
        Dim Min_Units_For_Sublot As Double
        Dim Increment_For_Sublot As Integer
        Dim Max_Sublots As Integer
        Dim Calibration_Sublots As Integer
        Dim Sublot_Units As Double
    
        If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units] >= 0 Then
            Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units]
        End If
        If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units] >= 0 Then
            Rev_Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units]
        End If
        If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used] >= 0 Then
            Revs_Used = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used]
        End If
        Total_Container_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![EST_CONTAINERS_REQUIRED]
        Min_Units_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Min_Units_For_Sublot]
        Increment_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Increment_For_Sublot]
        Max_Sublots = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Max_Sublots]

            If Revs_Used <> 0 And Rev_Source_Units <> 0 Then
                Units_Per_Rev = Round(Rev_Source_Units / Revs_Used, 3)
                Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
                Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Units_Per_Rev] = Units_Per_Rev
                Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Travel_Per_Rev] = Travel_Per_Rev
                If Total_Container_Units < Min_Units_For_Sublot Then
                    Calibration_Sublots = 0
                    Sublot_Units = 0
                Else
                    Calibration_Sublots = (Total_Container_Units / Min_Units_For_Sublot)
                    If Calibration_Sublots > Max_Sublots Then
                        Calibration_Sublots = Max_Sublots
                    End If
                   Sublot_Units = Round(Increment_For_Sublot / Travel_Per_Rev * Units_Per_Rev, 2)
              End If
              Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Sublots] = Calibration_Sublots
              Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Sublot_Units] = Sublot_Units
              'Check to see if Calibrated units per rev is within range
             If [DRILL_MIN_REV_UNITS] > 0 And [DRILL_MAX_REV_UNITS] > 0 Then
                 If Units_Per_Rev < [DRILL_MIN_REV_UNITS] Or Units_Per_Rev > [DRILL_MAX_REV_UNITS] Then
                     DoCmd.OpenForm "xOyjord_Calibration_Error"
                   End If
             End If
            End If
    
        End If
        [NMIS_OYJORD_SETTINGS subform].Requery
        Number_Calibration_Containers.Locked = False
    Else
        Number_Calibration_Containers.Locked = True
    End If
    
End Sub

Private Sub Oyjord_ID_AfterUpdate()

    [NMIS_OYJORD_SETTINGS subform].Requery
    
End Sub

Private Sub Sublot_Units_Enter()
  If Calibration_Source_Units > 0 Then
  
    Dim Source_Units As Double
    Dim Units_Per_Rev As Double
    Dim Rev_Source_Units As Double
    Dim Revs_Used As Integer
    Dim Travel_Per_Rev As Double
    Dim Total_Container_Units As Double
    Dim Min_Units_For_Sublot As Double
    Dim Increment_For_Sublot As Integer
    Dim Max_Sublots As Integer
    Dim Calibration_Sublots As Integer
    Dim Sublot_Units As Double
    
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units] >= 0 Then
        Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units] >= 0 Then
        Rev_Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used] >= 0 Then
        Revs_Used = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used]
    End If
    Total_Container_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![EST_CONTAINERS_REQUIRED]
    Min_Units_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Min_Units_For_Sublot]
    Increment_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Increment_For_Sublot]
    Max_Sublots = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Max_Sublots]

        If Revs_Used <> 0 And Rev_Source_Units <> 0 Then
            Units_Per_Rev = Round(Rev_Source_Units / Revs_Used, 3)
            Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Units_Per_Rev] = Units_Per_Rev
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Travel_Per_Rev] = Travel_Per_Rev
            If Total_Container_Units < Min_Units_For_Sublot Then
                Calibration_Sublots = 0
                Sublot_Units = 0
            Else
                Calibration_Sublots = (Total_Container_Units / Min_Units_For_Sublot)
                If Calibration_Sublots > Max_Sublots Then
                    Calibration_Sublots = Max_Sublots
                End If
                Sublot_Units = Round(Increment_For_Sublot / Travel_Per_Rev * Units_Per_Rev, 2)
            End If
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Sublots] = Calibration_Sublots
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Sublot_Units] = Sublot_Units
            
        End If
    
    End If
    [NMIS_OYJORD_SETTINGS subform].Requery
End Sub