Option Compare Database

Private Sub CALIBRATION_FUNNEL_SETTING_ID_Enter()

    If [Calibration_Funnel_Setting_ID] >= "" Then
    Else
        [Calibration_Funnel_Setting_ID] = [DRILL_FUNNEL_SETTING]
    End If
    
End Sub

Private Sub CALIBRATION_FUNNEL_SETTING_ID_Exit(Cancel As Integer)

    If [Calibration_Funnel_Setting_ID] >= "" Then
        If [DRILL_FUNNEL_SETTING] >= "" Then
        Else
            Response = MsgBox("Use this setting as the default?", vbYesNo)
            If Response = vbYes Then
                [DRILL_FUNNEL_SETTING] = [Calibration_Funnel_Setting_ID]
            End If
        End If
    End If
    
End Sub

Private Sub CALIBRATION_REV_SOURCE_UNITS_Exit(Cancel As Integer)
 
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
            Units_Per_Rev = Round(Rev_Source_Units / Revs_Used, 2)
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

End Sub

Private Sub Form_Current()
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Units_Per_Rev] = ""
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Travel_Per_Rev] = ""
End Sub