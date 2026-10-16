# Form: Oyjord_Calibration subform

**Caption:** Ojyord_Calibration subform  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.EST_CONTAINERS_REQUIRED, NMIS_AGREEMENT_LOTS.CALIBRATION_REV_SOURCE_UNITS, NMIS_AGREEMENT_LOTS.CALIBRATION_TRAVEL_PER_REV, NMIS_AGREEMENT_LOTS.CALIBRATION_REVS_USED, NMIS_AGREEMENT_LOTS.CALIBRATION_SOURCE_UNITS, NMIS_AGREEMENT_LOTS.CALIBRATION_SUBLOTS, NMIS_AGREEMENT_LOTS.NUMBER_CALIBRATION_CONTAINERS, NMIS_AGREEMENT_LOTS.CALIBRATION_FUNNEL_SETTING_ID, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_FUNNEL_SETTING, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MIN_REV_UNITS, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MAX_REV_UNITS FROM (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) LEFT JOIN NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.PLNTMSTR_SYMBOL WHERE (((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "b*" Or (NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "NSP"));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_OYJORD_SETTINGS subform`  
**Embedded in:** `Form:Oyjord_Calibration`  
**Opens:** `Form:xOyjord_Calibration_Error`  
**Form events with code:** Current  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 1.73, 0.10, 1.58, 0.23 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  | DblClick, Enter, Exit | 6.30, 0.35, 0.79, 0.20 |
| TextBox | CALIBRATION_REV_SOURCE_UNITS |  | CALIBRATION_REV_SOURCE_UNITS |  | DblClick, Enter, Exit | 2.20, 1.22, 0.58, 0.20 |
| TextBox | CALIBRATION_TRAVEL_PER_REV |  | CALIBRATION_TRAVEL_PER_REV |  | DblClick, Enter, Exit | 2.20, 1.84, 0.59, 0.20 |
| TextBox | CALIBRATION_REVS_USED |  | CALIBRATION_REVS_USED |  | DblClick, Enter | 2.20, 0.98, 0.58, 0.20 |
| TextBox | CALIBRATION_SOURCE_UNITS |  | CALIBRATION_SOURCE_UNITS |  | DblClick, Enter | 2.21, 0.74, 0.58, 0.20 |
| TextBox | CALIBRATION_SUBLOTS |  | CALIBRATION_SUBLOTS |  |  | 6.41, 1.75, 0.50, 0.20 |
| TextBox | NUMBER_CALIBRATION_CONTAINERS |  | NUMBER_CALIBRATION_CONTAINERS |  | DblClick, Enter | 2.20, 2.08, 0.58, 0.20 |
| TextBox | CALIBRATION_FUNNEL_SETTING_ID |  | CALIBRATION_FUNNEL_SETTING_ID |  | DblClick, Enter, Exit | 2.20, 0.50, 0.50, 0.20 |
| Label | ID_Label | Agreement Lot ID: |  |  |  | 0.21, 0.09, 1.48, 0.24 |
| Label | CALIBRATION_REV_SOURCE_UNITS_Label | Rev Source Units: |  |  |  | 0.90, 1.22, 1.24, 0.20 |
| Label | CALIBRATION_TRAVEL_PER_REV_Label | Travel/Rev: |  |  |  | 1.35, 1.84, 0.79, 0.20 |
| Label | CALIBRATION_REVS_USED_Label | Revs Used: |  |  |  | 1.35, 0.98, 0.80, 0.20 |
| Label | CALIBRATION_SOURCE_UNITS_Label | Source Units (Wet Weight): |  |  |  | 0.28, 0.74, 1.87, 0.20 |
| Label | CALIBRATION_SUBLOTS_Label | Sublots: |  |  |  | 5.73, 1.75, 0.62, 0.20 |
| Label | NUMBER_CALIBRATION_CONTAINERS_Label | Number Containers: |  |  |  | 0.77, 2.08, 1.38, 0.20 |
| Label | CALIBRATION_FUNNEL_SETTING_ID_Label | Funnel Setting: |  |  |  | 1.09, 0.50, 1.05, 0.20 |
| TextBox | CN |  | CN |  |  | 3.75, 0.17, 1.08, 0.20 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est Containers Required |  |  |  | 4.55, 0.35, 1.66, 0.20 |
| TextBox | SOURCE_REQUIRED | Source Required Dry Weight): | SOURCE_REQUIRED |  |  | 6.30, 0.10, 0.79, 0.20 |
| TextBox | Units_Per_Rev | Units/Rev: |  |  |  | 2.20, 1.52, 0.58, 0.20 |
| TextBox | Sublot_Units | Units: |  |  | Enter | 6.41, 2.00, 0.50, 0.20 |
| Label | Label27 | Calibration Sublots |  |  |  | 5.58, 0.71, 1.33, 0.20 |
| Rectangle | Box28 |  |  |  |  | 5.37, 0.65, 1.71, 1.77 |
| TextBox | Min_Units_For_Sublot | Minimum: |  |  |  | 6.42, 0.98, 0.50, 0.20 |
| TextBox | Increment_For_Sublot | Increment: |  |  |  | 6.41, 1.23, 0.50, 0.20 |
| TextBox | Max_Sublots | Max Sublots: |  |  |  | 6.41, 1.49, 0.50, 0.20 |
| TextBox | DRILL_MAX_REV_UNITS |  | DRILL_MAX_REV_UNITS |  | DblClick, Enter | 2.88, 1.66, 0.39, 0.20 |
| TextBox | DRILL_MIN_REV_UNITS |  | DRILL_MIN_REV_UNITS |  | DblClick, Enter | 2.88, 1.42, 0.39, 0.20 |
| TextBox | DRILL_FUNNEL_SETTING | Default | DRILL_FUNNEL_SETTING |  | DblClick, Enter | 2.88, 0.49, 0.39, 0.21 |
| Label | Label38 | min |  |  |  | 3.34, 1.43, 0.32, 0.20 |
| Label | Label39 | max |  |  |  | 3.34, 1.67, 0.32, 0.20 |
| Rectangle | Box42 |  |  |  |  | 0.21, 0.41, 3.75, 2.00 |
| Subform | NMIS_OYJORD_SETTINGS subform | Oyjord Settings | Form.NMIS_OYJORD_SETTINGS subform |  |  | 1.42, 2.46, 3.05, 1.33 |
| TextBox | Oyjord_ID |  |  |  | AfterUpdate | 0.99, 2.84, 0.29, 0.20 |
| Label | Oyjord_ID Label | Oyjord ID: |  |  |  | 0.21, 2.84, 0.72, 0.21 |

## Code-behind (VBA)

```vb
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
```
