# Form: NMIS_CLIENT_MGMT_CODES_NEW subform

**Caption:** NMIS_CLIENT_MGMT_CODES subform  
**Record source:**

```sql
SELECT NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED FROM NMIS_CLIENT_MGMT_CODES;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CLIENT_MGMT_CODES`, `NMIS_FISCAL_YEARS`  
**Embedded in:** `Form:NMIS_ID_MGMT_CODES_NEW subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Payee |  |  |  | 0.04, 0.04, 0.80, 0.21 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.89, 0.04, 0.75, 0.21 |
| Label | MGMT_CODE_PCT_Label | Pct |  |  |  | 1.67, 0.04, 0.49, 0.20 |
| Label | FISCAL_YEAR_USED_Label | FY |  |  |  | 2.20, 0.04, 0.53, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  | DblClick, Exit | 0.88, 0.04, 0.75, 0.21 |
| TextBox | MGMT_CODE_PCT |  | MGMT_CODE_PCT |  |  | 1.67, 0.04, 0.49, 0.20 |
| ComboBox | Fiscal_Year_Used |  | FISCAL_YEAR_USED | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 2.20, 0.04, 0.53, 0.20 |
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.04, 0.04, 0.80, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Total_PCT | Total %: | =Sum([MGMT_CODE_PCT]) |  |  | 1.75, 0.08, 0.41, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub
```
