# Form: Oyjord_Calibration subform2

**Caption:** Ojyord_Calibration subform  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[ID], [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[EST_CONTAINERS_REQUIRED], [NMIS_AGREEMENT_LOTS].[CALIBRATION_REV_SOURCE_UNITS], [NMIS_AGREEMENT_LOTS].[CALIBRATION_TRAVEL_PER_REV], [NMIS_AGREEMENT_LOTS].[CALIBRATION_REVS_USED], [NMIS_AGREEMENT_LOTS].[CALIBRATION_SOURCE_UNITS], [NMIS_AGREEMENT_LOTS].[CALIBRATION_SUBLOTS], [NMIS_AGREEMENT_LOTS].[NUMBER_CALIBRATION_CONTAINERS], [NMIS_AGREEMENT_LOTS].[CALIBRATION_FUNNEL_SETTING_ID], [NMIS_AGREEMENT_LOTS].[SOURCE_REQUIRED], [NMIS_SPECIES_PRODUCTS].[DRILL_FUNNEL_SETTING], [NMIS_SPECIES_PRODUCTS].[DRILL_MIN_REV_UNITS], [NMIS_SPECIES_PRODUCTS].[DRILL_MAX_REV_UNITS] FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Form:xOyjord_Calibration_Error`  
**Form events with code:** Current  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 1.69, 0.21, 0.86, 0.23 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 4.83, 0.51, 0.79, 0.20 |
| TextBox | CALIBRATION_REV_SOURCE_UNITS |  | CALIBRATION_REV_SOURCE_UNITS |  | Exit | 3.01, 2.11, 0.58, 0.20 |
| TextBox | CALIBRATION_TRAVEL_PER_REV |  | CALIBRATION_TRAVEL_PER_REV |  |  | 3.01, 2.70, 0.59, 0.20 |
| TextBox | CALIBRATION_REVS_USED |  | CALIBRATION_REVS_USED |  |  | 3.01, 1.82, 0.58, 0.20 |
| TextBox | CALIBRATION_SOURCE_UNITS |  | CALIBRATION_SOURCE_UNITS |  |  | 3.01, 1.52, 0.58, 0.20 |
| TextBox | CALIBRATION_SUBLOTS |  | CALIBRATION_SUBLOTS |  |  | 6.72, 2.53, 0.50, 0.20 |
| TextBox | NUMBER_CALIBRATION_CONTAINERS |  | NUMBER_CALIBRATION_CONTAINERS |  |  | 3.01, 3.00, 0.58, 0.20 |
| TextBox | CALIBRATION_FUNNEL_SETTING_ID |  | CALIBRATION_FUNNEL_SETTING_ID |  | Enter, Exit | 3.01, 1.23, 0.50, 0.20 |
| Label | ID_Label | Agreement Lot ID: |  |  |  | 0.15, 0.20, 1.48, 0.24 |
| Label | CALIBRATION_REV_SOURCE_UNITS_Label | Rev Source Units: |  |  |  | 1.71, 2.11, 1.24, 0.20 |
| Label | CALIBRATION_TRAVEL_PER_REV_Label | Travel/Rev: |  |  |  | 2.16, 2.70, 0.79, 0.20 |
| Label | CALIBRATION_REVS_USED_Label | Revs Used: |  |  |  | 2.15, 1.82, 0.80, 0.20 |
| Label | CALIBRATION_SOURCE_UNITS_Label | Source Units (Wet Weight): |  |  |  | 1.08, 1.52, 1.87, 0.20 |
| Label | CALIBRATION_SUBLOTS_Label | Sublots: |  |  |  | 6.04, 2.53, 0.62, 0.20 |
| Label | NUMBER_CALIBRATION_CONTAINERS_Label | Number Containers: |  |  |  | 1.57, 3.00, 1.38, 0.20 |
| Label | CALIBRATION_FUNNEL_SETTING_ID_Label | Funnel Setting: |  |  |  | 1.90, 1.23, 1.05, 0.20 |
| TextBox | CN |  | CN |  |  | 0.33, 0.58, 1.08, 0.20 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est Containers Required |  |  |  | 3.08, 0.51, 1.66, 0.20 |
| TextBox | SOURCE_REQUIRED | Source Required: | SOURCE_REQUIRED |  |  | 4.83, 0.21, 0.79, 0.20 |
| TextBox | Units_Per_Rev | Units/Rev: |  |  |  | 3.01, 2.40, 0.58, 0.20 |
| TextBox | Sublot_Units | Units: |  |  |  | 6.72, 2.83, 0.50, 0.20 |
| Label | Label27 | Calibration Sublots |  |  |  | 5.88, 1.17, 1.33, 0.20 |
| Rectangle | Box28 |  |  |  |  | 5.67, 1.00, 1.71, 2.33 |
| TextBox | Min_Units_For_Sublot | Minimum: |  |  |  | 6.72, 1.64, 0.50, 0.20 |
| TextBox | Increment_For_Sublot | Increment: |  |  |  | 6.72, 1.95, 0.50, 0.20 |
| TextBox | Max_Sublots | Max Sublots: |  |  |  | 6.72, 2.24, 0.50, 0.20 |
| TextBox | DRILL_MAX_REV_UNITS |  | DRILL_MAX_REV_UNITS |  |  | 3.68, 2.53, 0.39, 0.20 |
| TextBox | DRILL_MIN_REV_UNITS |  | DRILL_MIN_REV_UNITS |  |  | 3.68, 2.29, 0.39, 0.20 |
| TextBox | DRILL_FUNNEL_SETTING |  | DRILL_FUNNEL_SETTING |  |  | 3.79, 1.25, 0.00, 0.00 |
| Label | Label38 | min |  |  |  | 4.14, 2.30, 0.32, 0.20 |
| Label | Label39 | max |  |  |  | 4.14, 2.54, 0.32, 0.20 |

## Code-behind (VBA)

```vb
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
```
