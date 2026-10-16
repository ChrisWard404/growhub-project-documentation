# Report: NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC

**Caption:** Mailing Intermec  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER, IIf([Forms]![Associate_Mail_Label_Input]![Use_Ship_Address]=0,IIf(IsNull([MAIL_ADDR]),[STREET_ADDR],[MAIL_ADDR]),[SHIP_ADDR]) AS ADDRESS_LINE1, IIf([Forms]![Associate_Mail_Label_Input]![Use_Ship_Address]=0,IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),[CITY] & IIf(Not IsNull([STATE]),", ","") & [STATE] & " " & [ZIPCODE],[STREET_ADDR]),[SHIP_CITY] & IIf(Not IsNull([SHIP_STATE]),", ","") & [SHIP_STATE] & " " & [SHIP_ZIPCODE]) AS ADDRESS_LINE2, IIf([Forms]![Associate_Mail_Label_Input]![Use_Ship_Address]=0,IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),"",[CITY] & IIf(Not IsNull([STATE]),", ","") & [STATE] & " " & [ZIPCODE]),"") AS ADDRESS_LINE3 FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![Associate_Mail_Label_Input]![Like_Client]));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Form:Associate_Input`, `Form:Associate_Mail_Label_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Shipping Subform`, `Form_Reports_Menu_Source Subform`  
**Report events with code:** Close, Open  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Nursery Name |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME_UPPER] FROM NMIS_ASSOCIATES;  |  | 0.22, 0.26, 4.42, 0.26 |
| ComboBox | ADDRESS_LINE1 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], IIf(IsNull([MAIL_ADDR]),[STREET_ADDR],[MAIL_ADDR]) AS ADDRESS_LINE1 FROM NMIS_ASSOCIATES;  |  | 0.22, 0.52, 4.42, 0.26 |
| ComboBox | ADDRESS_LINE2 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),[CITY] & ", " & [STATE] & " " & [ZIPCODE],[STREET_ADDR]) AS ADDRESS_LINE2 FROM NMIS_ASSOCIATES;  |  | 0.22, 0.78, 4.42, 0.26 |
| ComboBox | ADDRESS_LINE3 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),"",[CITY] & ", " & [STATE] & " " & [ZIPCODE]) AS ADDRESS_LINE3 FROM NMIS_ASSOCIATES;  |  | 0.22, 1.03, 4.42, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME_UPPER |  | ASSOCIATE_NAME_UPPER |  |  | 0.85, 0.22, 4.83, 0.35 |
| TextBox | ADDR1 |  | ADDRESS_LINE1 |  |  | 0.85, 0.57, 4.83, 0.35 |
| TextBox | ADDR2 |  | ADDRESS_LINE2 |  |  | 0.85, 0.92, 4.83, 0.35 |
| TextBox | ADDR3 |  | ADDRESS_LINE3 |  |  | 0.85, 1.27, 4.83, 0.35 |
| TextBox | Text28 |  | =IIf(Not IsNull([Forms]![Associate_Mail_Label_Input]![Attn]),"Attn: " & [Forms]![Associate_Mail_Label_Input]![Attn]) |  |  | 0.22, 1.71, 3.17, 0.26 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Associate_Mail_Label_Input"
    
End Sub

Private Sub Report_Open(Cancel As Integer)

    'DoCmd.OpenForm "Associate_Input"
        'If Not IsLoaded("Associate_Input") Then
       'Cancel = True
    'End If
    
    DoCmd.OpenForm "Associate_Mail_Label_Input", , , , , acDialog, "Enter a Client Code"
    
    If Not IsLoaded("Associate_Mail_Label_Input") Then
        Cancel = True
    End If
End Sub
```
