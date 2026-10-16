# Report: Seed_Bank_Work_Order_Checklist

**Caption:** Seed_Bank_Work_Order  
**Record source:**

```sql
Seed_Bank_Work_Order_by_species_and_product query
```

**Grouping/sorting:** `Cost_Center`, `PRODUCT_CLASS`, `PLNTMSTR_SYMBOL`, `SOURCE`  
**Backend tables referenced:** `NMIS_SPECIES`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1`  
**Opened from (VBA):** `Form_Source_Material_Work_List`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_SOURCE_LOTS_ID_Label | Seed Lot ID |  |  |  | 0.06, 1.18, 0.45, 0.36 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.88, 1.34, 0.52, 0.20 |
| Label | SOURCE_REQUIRED_Label | Lbs. Out |  |  |  | 6.93, 1.18, 0.38, 0.36 |
| Line | Line114 |  |  |  |  | 0.06, 1.54, 7.93, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.66, 0.16, 2.81, 0.19 |
| TextBox | Text91 | Agreement Lot Source Material Withdrawal Request Checklist | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label130 | Storage Location |  |  |  | 4.68, 1.18, 0.62, 0.36 |
| Label | Label131 | New Balance |  |  |  | 7.41, 1.18, 0.58, 0.36 |
| Label | Label132 | Inventory Balance |  |  |  | 5.35, 1.18, 0.71, 0.36 |
| Label | Label133 | Reweigh Balance  |  |  |  | 6.08, 1.18, 0.66, 0.36 |
| Line | Line176 |  |  |  |  | 0.06, 1.18, 7.92, 0.00 |
| Label | Label177 | Ageement Lot ID |  |  |  | 1.21, 1.18, 0.75, 0.36 |
| ComboBox | PRODUCT_CLASS |  | =[Heading] | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, IIf([Forms]![Source_Material_Work_List]![Product_Class]="*","All Stock Types",[Forms]![Source_Material_Work_List]![Product_Class]) & "  " & IIf([Forms]![Source_Material_Work_List]![Plntmstr_Symbol]="*","All Species",[VERNACULAR]) AS Selected_For FROM NMIS_SPECIES WHERE (((NMIS_SPECIES.PLNTMSTR_SYMBOL) Like [Forms]![Source_Material_Work_List]![Plntmstr_Symbol])); |  | 2.12, 0.79, 4.14, 0.29 |
| TextBox | Heading |  | =IIf([Forms]![Source_Material_Work_List]![Plntmstr_Symbol]="*","pipo",[Forms]![Source_Material_Work_List]![Plntmstr_Symbol]) |  |  | 1.50, 0.79, 0.62, 0.25 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text185 |  | PRODUCT_CLASS |  |  | 0.33, 0.00, 5.25, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PLNTMSTR_SYMBOL |  | [PLNTMSTR_SYMBOL] | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, [plntmstr_symbol] & "  " & [VERNACULAR] AS Expr1 FROM NMIS_SPECIES; |  | 0.46, 0.00, 5.17, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_SOURCE_LOTS_ID |  | SOURCE |  |  | 2.22, 0.14, 2.23, 0.20 |
| TextBox | SOURCE_REQUIRED |  | SOURCE_REQUIRED |  |  | 6.69, 0.14, 0.64, 0.20 |
| Subform | NMIS_ID_LOCATIONS subreport1 |  | Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1 (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 4.47, 0.12, 0.86, 0.21 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 5.35, 0.14, 0.59, 0.20 |
| TextBox | SOURCE_ID |  | NMIS_SOURCE_LOTS_ID |  |  | 0.06, 0.14, 1.21, 0.20 |
| Line | Line134 |  |  |  |  | 6.10, 0.34, 0.56, 0.00 |
| Line | Line135 |  |  |  |  | 7.44, 0.34, 0.57, 0.00 |
| TextBox | Agreement_Lot_ID |  | ID |  |  | 1.28, 0.14, 0.92, 0.20 |
| TextBox | ACTIVITY_UNITS |  | Withdrawal_Amt |  |  | 7.42, 0.17, 0.58, 0.00 |
| TextBox | Text183 |  | =IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn") |  |  | 7.39, 0.00, 0.62, 0.00 |
| TextBox | Text186 |  | TKT_NO_and_Date |  |  | 6.29, 0.01, 1.10, 0.16 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line187 |  |  |  |  | 0.06, 0.07, 7.91, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.36, 0.02, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.53, 0.02, 5.46, 0.16 |
| Line | Line22 |  |  |  |  | 0.06, 0.00, 7.86, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    If Forms![Source_Material_Work_List]![Hide Withdrawn Lots] = False Then
        ACTIVITY_UNITS.Visible = True
    Else
        ACTIVITY_UNITS.Visible = False
    End If
    
End Sub
```
