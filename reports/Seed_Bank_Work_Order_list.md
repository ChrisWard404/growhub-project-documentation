# Report: Seed_Bank_Work_Order_list

**Caption:** Seed_Bank_Work_Order  
**Record source:**

```sql
Seed_Bank_Work_Order_by_species_and_product query
```

**Grouping/sorting:** `Cost_Center`, `PLNTMSTR_SYMBOL`, `SOURCE`, `ID`, `PRODUCT_CLASS`  
**Backend tables referenced:** `NMIS_SPECIES`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1`  
**Opened from (VBA):** `Form_Source_Material_Work_List`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_SOURCE_LOTS_ID_Label | Seed Lot ID |  |  |  | 0.16, 2.53, 0.45, 0.36 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.94, 2.70, 0.52, 0.20 |
| Label | SOURCE_REQUIRED_Label | Lbs. Out |  |  |  | 6.92, 2.53, 0.38, 0.36 |
| Line | Line114 |  |  |  |  | 0.16, 2.90, 7.81, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.65, 0.16, 2.81, 0.19 |
| TextBox | Text91 | Agreement Lot Source Material Withdrawal Request | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.44, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.44, 0.00, 3.24, 0.16 |
| Label | Label130 | Storage Location |  |  |  | 4.74, 2.53, 0.62, 0.36 |
| Label | Label131 | New Balance |  |  |  | 7.40, 2.53, 0.58, 0.36 |
| Label | Label132 | Inventory Balance |  |  |  | 5.42, 2.53, 0.71, 0.36 |
| Label | Label133 | Reweigh Balance  |  |  |  | 6.07, 2.53, 0.66, 0.36 |
| Label | Label148 | Computer Posted |  |  |  | 5.38, 1.28, 1.19, 0.18 |
| Label | Label149 | Shipment Record |  |  |  | 5.38, 1.46, 1.20, 0.18 |
| Label | Label150 | Stratification |  |  |  | 5.38, 1.64, 1.19, 0.18 |
| Label | Label151 | Withdrawn By |  |  |  | 5.38, 1.81, 1.19, 0.18 |
| Label | Label152 | Reviewed By |  |  |  | 5.38, 1.99, 1.19, 0.18 |
| Label | Label153 | Histories |  |  |  | 5.38, 2.17, 1.19, 0.18 |
| Line | Line154 |  |  |  |  | 6.67, 1.46, 0.58, 0.00 |
| Line | Line155 |  |  |  |  | 7.38, 1.46, 0.58, 0.00 |
| Label | Label156 | By |  |  |  | 6.75, 1.10, 0.42, 0.18 |
| Label | Label157 | Date |  |  |  | 7.46, 1.10, 0.38, 0.18 |
| Line | Line158 |  |  |  |  | 6.67, 1.64, 0.58, 0.00 |
| Line | Line159 |  |  |  |  | 7.38, 1.64, 0.58, 0.00 |
| Line | Line160 |  |  |  |  | 6.67, 1.81, 0.58, 0.00 |
| Line | Line161 |  |  |  |  | 7.38, 1.81, 0.58, 0.00 |
| Line | Line162 |  |  |  |  | 6.67, 1.99, 0.58, 0.00 |
| Line | Line163 |  |  |  |  | 7.38, 1.99, 0.58, 0.00 |
| Line | Line164 |  |  |  |  | 6.67, 2.17, 0.58, 0.00 |
| Line | Line165 |  |  |  |  | 7.38, 2.17, 0.58, 0.00 |
| Line | Line166 |  |  |  |  | 6.67, 2.34, 0.58, 0.00 |
| Line | Line167 |  |  |  |  | 7.38, 2.34, 0.58, 0.00 |
| Label | Label168 | Ordered by: |  |  |  | 0.32, 1.28, 0.83, 0.20 |
| Line | Line169 |  |  |  |  | 1.01, 1.88, 0.58, 0.00 |
| Label | Label171 | Order #: |  |  |  | 0.32, 1.68, 0.58, 0.20 |
| Line | Line172 |  |  |  |  | 2.35, 1.88, 0.58, 0.00 |
| Label | Label173 | Date: |  |  |  | 1.88, 1.68, 0.40, 0.20 |
| TextBox | Will_Be_Used_At |  | ="Seed will be used at " & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 0.32, 2.05, 3.24, 0.20 |
| Line | Line176 |  |  |  |  | 0.16, 2.53, 7.80, 0.00 |
| Label | Label177 | Ageement Lot ID |  |  |  | 1.27, 2.53, 0.75, 0.36 |
| ComboBox | PRODUCT_CLASS |  | =[Heading] | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, IIf([Forms]![Source_Material_Work_List]![Product_Class]="*","All Stock Types",[Forms]![Source_Material_Work_List]![Product_Class]) & "  " & IIf([Forms]![Source_Material_Work_List]![Plntmstr_Symbol]="*","All Species",[VERNACULAR]) AS Selected_For FROM NMIS_SPECIES WHERE (((NMIS_SPECIES.PLNTMSTR_SYMBOL) Like [Forms]![Source_Material_Work_List]![Plntmstr_Symbol] & "*")); |  | 2.11, 0.79, 4.14, 0.29 |
| TextBox | Heading |  | =IIf(([Forms]![Source_Material_Work_List]![Plntmstr_Symbol]="*"),"PIPO",[Forms]![Source_Material_Work_List]![Plntmstr_Symbol]) |  |  | 1.49, 0.79, 0.62, 0.25 |
| TextBox | Ordered_By |  | =[Forms]![Source_Material_Work_List]![Ordered_By] |  |  | 1.17, 1.28, 3.24, 0.20 |
| TextBox | Order_ID |  | =[Forms]![Source_Material_Work_List]![Ticket_ID] |  |  | 0.99, 1.67, 0.58, 0.20 |
| TextBox | Date |  | =[Forms]![Source_Material_Work_List]![Date] |  |  | 2.36, 1.67, 0.58, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_SOURCE_LOTS_ID |  | SOURCE |  |  | 2.28, 0.14, 2.23, 0.20 |
| TextBox | SOURCE_REQUIRED |  | SOURCE_REQUIRED |  |  | 6.68, 0.14, 0.64, 0.20 |
| Subform | NMIS_ID_LOCATIONS subreport1 |  | Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1 (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 4.53, 0.12, 0.91, 0.21 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 5.46, 0.14, 0.59, 0.20 |
| TextBox | SOURCE_ID |  | NMIS_SOURCE_LOTS_ID |  |  | 0.16, 0.14, 1.17, 0.20 |
| Line | Line134 |  |  |  |  | 6.09, 0.34, 0.56, 0.00 |
| Line | Line135 |  |  |  |  | 7.43, 0.34, 0.57, 0.00 |
| TextBox | Agreement_Lot_ID |  | ID |  |  | 1.34, 0.14, 0.92, 0.20 |
| TextBox | ACTIVITY_UNITS |  | Withdrawal_Amt |  |  | 7.41, 0.17, 0.58, 0.00 |
| TextBox | Text183 |  | =IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn") |  |  | 7.36, 0.00, 0.62, 0.00 |
| TextBox | Text186 |  | TKT_NO_and_Date |  |  | 6.28, 0.01, 1.10, 0.16 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.35, 0.02, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.52, 0.02, 5.46, 0.16 |
| Line | Line22 |  |  |  |  | 0.19, 0.00, 7.75, 0.00 |

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
