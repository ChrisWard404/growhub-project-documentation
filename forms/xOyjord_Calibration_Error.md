# Form: xOyjord_Calibration_Error

**Caption:** Calibration Error Message  
**Opened from (VBA):** `Form_Oyjord_Calibration subform`, `Form_Oyjord_Calibration subform2`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Please Excuse Me But... |  |  |  | 0.55, 0.17, 7.90, 0.83 |
| Label | Label1 | I've been asked to alert you when the AMOUNT CALCULATED PER REV is out of the normal range. I could be mistaken but it appears to be so now. |  |  |  | 0.93, 1.58, 7.12, 0.85 |
| Label | Label2 | Please Excuse The intrusion.... |  |  |  | 3.04, 3.38, 2.99, 0.26 |
| CommandButton | Close form | Drop Dead You Stupid Computer |  |  |  | 3.60, 4.66, 1.81, 0.28 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click


    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub
```
