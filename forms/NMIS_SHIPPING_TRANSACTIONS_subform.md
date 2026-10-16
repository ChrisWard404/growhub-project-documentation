# Form: NMIS_SHIPPING_TRANSACTIONS_subform

**Caption:** NMIS_Cultrual_TRANSACTIONS subform  
**Record source:**

```sql
SELECT NMIS_TRANSACTIONS.*, NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN FROM NMIS_TRANSACTIONS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN WHERE (((NMIS_TRANSACTIONS.ID_ACTIVITY_CN)=[Forms]![NMIS_SHIPPING_TICKET subform]![TextLink1])) ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_TRANSACTIONS`  
**Embedded in:** `Form:NMIS_SHIPPING_TICKET subform`  
**Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | Units |  |  |  | 1.49, 0.03, 0.67, 0.35 |
| Label | AMT_PER_UNIT_Label | Amt/Unit Net |  |  |  | 3.01, 0.03, 0.63, 0.35 |
| Label | Label14 | Chg/Amt Override |  |  |  | 4.38, 0.03, 0.66, 0.35 |
| Label | Label15 | Chg/Unit Override |  |  |  | 3.68, 0.03, 0.66, 0.35 |
| Label | ID_LOCATION_CN_Label | Location |  |  |  | 0.00, 0.03, 1.45, 0.35 |
| Label | Label23 | Unit Code |  |  |  | 2.20, 0.03, 0.76, 0.35 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 1.04, 0.17, 0.62, 0.17 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.04, 0.17, 0.96, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  | Enter, Exit | 1.49, 0.03, 0.67, 0.20 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  | Exit | 3.02, 0.03, 0.62, 0.20 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 5.08, 0.03, 0.64, 0.20 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 4.38, 0.03, 0.66, 0.20 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 3.68, 0.03, 0.66, 0.20 |
| ComboBox | ID_LOCATION_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf(IsNull([Sublot_No]),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS LOCATION2, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)<>"FIELD") And ((NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN)=Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_ID_ACTIVITIES subform].Form!AGREEMENT_LOT_CN));  |  | 0.01, 0.03, 1.46, 0.20 |
| ComboBox | Combo24 |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN;  |  | 2.21, 0.03, 0.77, 0.20 |
| TextBox | TRANSACTIONS_SUM |  | =ROUND(Sum([NUMBER_OF_ACTIVITY_UNITS]*[AMT_PER_UNIT]),3) |  |  | 4.38, 0.00, 0.54, 0.20 |
| TextBox | Text30 |  | AMT_PER_UNIT_INV_GROSS |  |  | 3.67, 0.04, 0.62, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    AMT_PER_UNIT_INV_GROSS = AMT_PER_UNIT

End Sub

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_Current()

    If Not IsNull(ID_LOCATION_CN) Then
        [ID_LOCATION_CN].Requery
    End If
    
End Sub



Private Sub NUMBER_OF_ACTIVITY_UNITS_Enter()

    If IsNull(ID_LOCATION_CN) Then
        ID_LOCATION_CN = Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Form![ID_LOCATION_CN]
    End If
    ID_LOCATION_CN.Requery

End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_Exit(Cancel As Integer)

    If (Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "SHIP" Or _
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "PICKUP" Or _
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "DLIVR") Then
        If NUMBER_OF_ACTIVITY_UNITS > 0 Then
            NUMBER_OF_ACTIVITY_UNITS = NUMBER_OF_ACTIVITY_UNITS * -1
        End If
    End If
    
End Sub
```
