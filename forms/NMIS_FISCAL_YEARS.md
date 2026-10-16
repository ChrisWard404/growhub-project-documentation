# Form: NMIS_FISCAL_YEARS

**Caption:** NMIS_FISCAL_YEARS  
**Record source:**

```sql
SELECT NMIS_FISCAL_YEARS.* FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Form_xLookup_Tables_Menu`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label8 | Fiscal Years |  |  |  | 1.31, 0.08, 1.38, 0.31 |
| Label | Label9 | Fiscal Year Number |  |  |  | 1.23, 0.67, 0.86, 0.37 |
| Label | Label10 | Fiscal Year Text |  |  |  | 0.30, 0.67, 0.86, 0.36 |
| Label | Label11 | FY Begin Date |  |  |  | 2.16, 0.67, 0.75, 0.37 |
| Label | Label12 | FY End Date |  |  |  | 2.99, 0.67, 0.75, 0.37 |
| Line | Line13 |  |  |  |  | 0.08, 0.56, 3.93, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.30, 0.04, 0.86, 0.21 |
| TextBox | FISCAL_YEAR_NUMBER |  | FISCAL_YEAR_NUMBER |  | Enter | 1.23, 0.04, 0.86, 0.21 |
| TextBox | BEGIN_DATE |  | BEGIN_DATE |  | Enter | 2.16, 0.04, 0.75, 0.21 |
| TextBox | END_DATE |  | END_DATE |  | Enter | 2.99, 0.04, 0.75, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub BEGIN_DATE_Enter()
    
    If IsNull(BEGIN_DATE) And Not IsNull(FISCAL_YEAR) Then
        BEGIN_DATE = "10/01/" & Right$((FISCAL_YEAR - 1), 2)
    End If
    
End Sub

Private Sub END_DATE_Enter()
    
    If IsNull(END_DATE) And Not IsNull(FISCAL_YEAR) Then
        END_DATE = "09/30/" & Right$((FISCAL_YEAR), 2)
    End If
  
End Sub

Private Sub FISCAL_YEAR_NUMBER_Enter()

    If IsNull(FISCAL_YEAR_NUMBER) And Not IsNull(FISCAL_YEAR) Then
        FISCAL_YEAR_NUMBER = FISCAL_YEAR
    End If
    
End Sub
```
