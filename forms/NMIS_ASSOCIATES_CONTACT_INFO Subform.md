# Form: NMIS_ASSOCIATES_CONTACT_INFO Subform

**Caption:** NMIS_CONTACTS Subform  
**Record source:**

```sql
SELECT [NMIS_CONTACTS].[CN], [NMIS_CONTACTS].[LAST_NAME], [NMIS_CONTACTS].[FIRST_NAME], [NMIS_CONTACTS].[MIDDLE_INITIAL], [NMIS_CONTACTS].[CONTACT_NAME_UPPER], [NMIS_CONTACTS].[CONTACT_DESC], [NMIS_CONTACTS].[HOME_ASSOCIATE], [NMIS_CONTACTS].[RNS_USERNAME], [NMIS_CONTACTS].[EMAIL_ADDR], [NMIS_CONTACTS].[NOTE], [NMIS_CONTACTS].[Index] FROM NMIS_CONTACTS;
```

**Backend tables referenced:** `NMIS_CONTACTS`  
**Embedded in:** `Form:NMIS_ASSOCIATES`  
**Opens:** `Form:NMIS_CONTACTS Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTACT_DESC |  | CONTACT_DESC |  |  | 0.06, 0.27, 2.59, 0.20 |
| TextBox | HOME_ASSOCIATE |  | HOME_ASSOCIATE |  |  | 0.06, 1.90, 0.92, 0.20 |
| TextBox | EMAIL_ADDR |  | EMAIL_ADDR |  |  | 0.06, 0.74, 2.58, 0.41 |
| TextBox | NOTE |  | NOTE |  |  | 0.06, 2.38, 2.64, 0.88 |
| Label | NOTE_Label | Note: |  |  |  | 0.06, 2.15, 0.41, 0.20 |
| Label | EMAIL_ADDR_Label | E-mail Addr: |  |  |  | 0.06, 0.51, 0.86, 0.20 |
| Label | HOME_ASSOCIATE_Label | Home Associate: |  |  |  | 0.06, 1.68, 1.15, 0.20 |
| Label | CONTACT_DESC_Label | Contact Description: |  |  |  | 0.06, 0.04, 1.41, 0.20 |
| TextBox | CONTACT_NAME_UPPER | Contact Name Upper: | CONTACT_NAME_UPPER |  |  | 0.06, 1.43, 2.58, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Open_Client_Notes_Form_Click()
On Error GoTo Err_Open_Client_Notes_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS Subform"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Client_Notes_Form_Click:
    Exit Sub

Err_Open_Client_Notes_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Client_Notes_Form_Click
    
End Sub

Private Sub FIRST_NAME_Exit(Cancel As Integer)

    If [FIRST_NAME] > "" Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & ", " & [FIRST_NAME])
    End If
    
End Sub

Private Sub LAST_NAME_Exit(Cancel As Integer)

    If [LAST_NAME] > "" Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME])
    End If
    
End Sub

Private Sub MIDDLE_INITIAL_Exit(Cancel As Integer)

    If [LAST_NAME] > "" And [FIRST_NAME] > "" And [MIDDLE_INITIAL] > "" Then
        [CONTACT_NAME_UPPER] = [LAST_NAME] & ", " & [FIRST_NAME]
    End If
    
End Sub
```
