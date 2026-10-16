# Form: NMIS_AGREEMENT_LOTS_NEW_bu

**Caption:** NMIS AGREEMENT LOTS - NEW  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.*, NMIS_SOURCE_LOTS.ID AS Source_lot_ID FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Form:NMIS_AGREEMENT_LOTS`  
**Form events with code:** Close  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.17, 0.08, 1.22, 0.00 |
| TextBox | Index |  | Index |  |  | 4.59, 0.17, 0.00, 0.00 |
| Label | Label98 | NEW NMIS Agreement Lot |  |  |  | 1.49, 0.12, 3.03, 0.31 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 0.21, 0.29, 1.17, 0.21 |
| CommandButton | Close_Form | Close |  |  | Click | 5.54, 0.08, 0.51, 0.31 |
| ComboBox | Find_Lot | Review Lot ID's: |  | SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS Agr_Class, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, [CLIENT_ASSOCIATE] & " " AS Client, [AMOUNT_REQUESTED] & " " AS Req, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.Index AS [Original ID], NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_PRODUCTS.CN, Left$(Nz([nmis_agreement_lots].[Category_Code],"B"),1) AS Product_Type FROM NMIS_PRODUCTS INNER JOIN (NMIS_AGREEMENTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![NMIS_AGREEMENT_LOTS_NEW]![BEGIN_FY])) ORDER BY NMIS_AGREEMENT_LOTS.ID DESC , NMIS_AGREEMENT_LOTS.BEGIN_FY DESC; |  | 1.58, 0.54, 1.46, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE | Note: | NOTE |  |  | 0.71, 1.50, 5.00, 0.59 |
| ComboBox | CATEGORY_CODE | Category | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 0.49, 0.73, 1.58, 0.21 |
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 1.90, 1.20, 0.63, 0.21 |
| ComboBox | END_FY | End FY | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 2.62, 1.20, 0.63, 0.21 |
| ComboBox | SOURCE_LOT_CN | Source Lot ID | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.SOURCE_CODE FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;  |  | 0.50, 1.20, 1.28, 0.20 |
| ComboBox | SPECIES_PRODUCT_CN | Species Product | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN;  |  | 2.16, 0.73, 2.66, 0.20 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF Adj: | HARVEST_ASF_ADJUSTMENT |  |  | 1.41, 1.62, 0.34, 0.20 |
| TextBox | HARVEST_FACTOR_1 | Harvest Factor 1: | HARVEST_FACTOR_1 |  |  | 1.41, 1.92, 0.34, 0.20 |
| TextBox | HARVEST_FACTOR_2 | Harvest Factor 2: | HARVEST_FACTOR_2 |  |  | 1.41, 2.79, 0.34, 0.20 |
| TextBox | HARVEST_FACTOR_3 | Harvest Factor 3: | HARVEST_FACTOR_3 |  |  | 1.41, 2.21, 0.34, 0.20 |
| TextBox | HARVEST_FACTOR_4 | Harvest Factor 4: | HARVEST_FACTOR_4 |  |  | 1.41, 2.49, 0.34, 0.20 |
| TextBox | CONTAINER_ASF_ADJUSTMENT | Container ASF Adj: | CONTAINER_ASF_ADJUSTMENT |  |  | 5.46, 1.62, 0.36, 0.20 |
| TextBox | CONTAINER_FACTOR_1 | Container Factor 1: | CONTAINER_FACTOR_1 |  |  | 5.46, 1.92, 0.36, 0.20 |
| TextBox | CONTAINER_FACTOR_2 | Container Factor 2: | CONTAINER_FACTOR_2 |  |  | 5.46, 2.22, 0.36, 0.20 |
| TextBox | CONTAINER_FACTOR_3 | Container Factor 3: | CONTAINER_FACTOR_3 |  |  | 5.46, 2.52, 0.36, 0.20 |
| TextBox | INSERTED_BY | Inserted By: | INSERTED_BY |  |  | 1.12, 3.12, 0.00, 0.20 |
| TextBox | DESIRED_DENSITY | Desired Density: | DESIRED_DENSITY |  |  | 5.46, 2.83, 0.38, 0.20 |
| CommandButton | Open_Agreement_Lots_Form | Click to continue to Calculations... |  |  | Click | 1.96, 2.42, 2.08, 0.58 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE | Previous Nursery Associate | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [Associate] & ")" AS Expr1 FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [Associate] & ")"; |  | 3.25, 0.29, 2.72, 0.20 |
| ComboBox | PREVIOUS_AGREEMENT_LOT_CN | Previous Agreement Lot | PREVIOUS_AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;  | Exit | 1.54, 0.29, 1.66, 0.20 |
| TextBox | Source_lot_ID | Source Lot ID: | Source_lot_ID |  |  | 4.89, 3.21, 1.08, 0.21 |
| TextBox | NURSERY_ASSOCIATE | Nursery Associate | NURSERY_ASSOCIATE |  |  | 2.29, 3.28, 1.25, 0.21 |
| TextBox | TOTAL_REQUEST | Total Request: | TOTAL_REQUEST |  |  | 3.00, 2.12, 0.00, 0.21 |
| TextBox | CALIBRATION_REVS_USED |  | CALIBRATION_REVS_USED |  |  | 3.38, 1.25, 0.00, 0.00 |
| TextBox | ID | Nursery ID | ID |  | Enter, Exit | 0.21, 0.28, 1.20, 0.21 |
| TextBox | ID_ORIGINAL | Original ID | ID_ORIGINAL |  |  | 3.78, 1.21, 1.04, 0.20 |
| TextBox | AKA | AKA | AKA |  |  | 4.89, 1.20, 1.04, 0.20 |

## Code-behind (VBA)

```vb
Private Sub Form_Close()

On Error GoTo Err_Form_Close
    If Not IsNull(ID) Then
        If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
        End If
        Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    End If
Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close
    
End Sub

Private Sub ID_Enter()
On Error GoTo Err_ID_Enter
    
Dim Default_ID As Long

    
    With CodeContextObject
        
        If IsNull(ID) Then
            '.ID = "Temp ID"
            Select Case [NURSERY_ASSOCIATE]
    
            Case Is = "040207" 'Lucky Peak Nursery
                '.ID = Forms![NMIS_AGREEMENTS]![NMIS_SOURCE_LOTS_ID subform].Form![ID] _
                    '& Left$(CATEGORY_CODE, 1) & Right$(BEGIN_FY, 1) ' & Right$(END_FY, 1)
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Is = "050357" 'Placerville Nursery
                .ID = Forms![NMIS_AGREEMENTS]![NMIS_SOURCE_LOTS_ID subform].Form![ID] & "-" _
                    & Right$(BEGIN_FY, 1) & Right$(END_FY, 1) & IIf(Left$(CATEGORY_CODE, 1) = "C", "C", "")
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Is = "061019" 'J. Herbert Stone Nursery
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Else
                'Sets the ID to a default based on the table index and User Nursery offset'
                ID = " "
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            End Select
        End If
        
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        DoCmd.RunCommand acCmdRefresh
    End With

    'If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
        'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
        'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    'End If
Exit_ID_Enter:
    Exit Sub

Err_ID_Enter:
    'MsgBox Err.DESCRIPTION
    MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    Resume Exit_ID_Enter
       
End Sub

Private Sub ID_Exit(Cancel As Integer)

    Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery

End Sub

Private Sub Open_Agreement_Lots_Form_Click()
On Error GoTo Err_Open_Agreement_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    stDocName = "NMIS_AGREEMENT_LOTS"
    
    DoCmd.RunCommand acCmdRefreshPage
    'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    If Not IsNull(ID) Then
        If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
        End If
        Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    End If
    Forms![NMIS_AGREEMENTS].Requery
    
    DoCmd.OpenForm stDocName, acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENT_LOTS_NEW]![CN]", , acNormal
    Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False

Exit_Open_Agreement_Lots_Form_Click:
    Exit Sub

Err_Open_Agreement_Lots_Form_Click:
    'MsgBox Err.DESCRIPTION
    
    Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Null
    DoCmd.Close , "NMIS_AGREEMENT_LOTS"
    ID.SetFocus
    DoCmd.GoToControl "ID"
    'MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    Resume Exit_Open_Agreement_Lots_Form_Click
    
End Sub
Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click

    DoCmd.RunCommand acCmdRefresh
    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    'MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    DoCmd.GoToControl "ID"
    Resume Exit_Close_Form_Click
    
End Sub

Private Sub PREVIOUS_AGREEMENT_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(previou_agreement_lot_cn) And IsNull(PREVIOUS_NURSERY_ASSOCIATE) Then
        PREVIOUS_NURSERY_ASSOCIATE = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        PREVIOUS_NURSERY_ASSOCIATE.Requery
    End If
  
End Sub
```
