# Form: NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE

**Caption:** SOURCE LOCATIONS  
**Record source:**

```sql
SELECT NMIS_TRANSACTIONS.*, Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0) AS Est_Units, NMIS_ID_LOCATIONS.SOURCE_LOT_CN FROM NMIS_TRANSACTIONS LEFT JOIN (NMIS_LOCATIONS RIGHT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN WHERE (((NMIS_TRANSACTIONS.ID_ACTIVITY_CN)=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN])) ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_TRANSACTIONS.AMT_PER_UNIT;
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_SOURCE_LOTS`, `NMIS_TRANSACTIONS`  
**Opens:** `Form:NMIS_ID_LOCATIONS_SOURCE`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS`, `Form_NMIS_SOURCE_LOTS_bu`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 1.08, 0.03, 0.62, 0.35 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | Units |  |  |  | 3.23, 0.03, 0.67, 0.35 |
| Label | AMT_PER_UNIT_Label | Amt/Unit Net |  |  |  | 4.73, 0.03, 0.76, 0.35 |
| Label | AMT_PER_UNIT_INV_GROSS_Label | Amt/Unit Gross |  |  |  | 7.60, 0.03, 0.72, 0.35 |
| Label | Label13 | Contract Item |  |  |  | 5.52, 0.03, 0.65, 0.35 |
| Label | Label14 | Chg/Amt Override |  |  |  | 6.90, 0.03, 0.66, 0.35 |
| Label | Label15 | Chg/Unit Override |  |  |  | 6.20, 0.03, 0.66, 0.35 |
| Label | ID_LOCATION_CN_Label | Location |  |  |  | 1.74, 0.03, 1.45, 0.35 |
| Label | Label23 | Unit Code |  |  |  | 3.94, 0.03, 0.76, 0.35 |
| CommandButton | Update_Sow_Unit_Amts | Click to Update Amt/Units |  |  |  | 0.04, 0.03, 1.02, 0.37 |
| Label | Label52 | Transactions  |  |  |  | 0.04, 0.03, 1.01, 0.34 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 1.08, 0.02, 0.62, 0.19 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 3.23, 0.02, 0.67, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  | Exit | 4.74, 0.02, 0.74, 0.19 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 7.60, 0.02, 0.73, 0.19 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 5.52, 0.02, 0.63, 0.19 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 6.90, 0.02, 0.66, 0.19 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 6.20, 0.02, 0.66, 0.19 |
| ComboBox | ID_LOCATION_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf((IsNull([Sublot_No]) Or [Sublot_No]=" "),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS [Location(s)], NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.BEGIN_DATE, IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGIN_COUNTER])) AS [Est Units], NMIS_ID_LOCATIONS.Index, NMIS_ID_LOCATIONS.SOURCE_LOT_CN FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![NMIS_SOURCE_LOTS]![CN])) ORDER BY NMIS_ID_LOCATIONS.Index DESC; |  | 1.75, 0.02, 1.46, 0.19 |
| ComboBox | ID_LOCATION_UNIT_CODE |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN; |  | 3.95, 0.02, 0.77, 0.19 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.17, 0.04, 0.75, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database


Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    If Not IsNull(AMT_PER_UNIT) Then
        AMT_PER_UNIT_INV_GROSS = AMT_PER_UNIT
    End If
    
End Sub


Private Sub Label30_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_SOURCE"
    
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & [SOURCE_LOT_CN] & "'"
    
    DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub
```
