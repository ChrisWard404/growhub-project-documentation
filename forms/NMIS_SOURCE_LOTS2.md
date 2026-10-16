# Form: NMIS_SOURCE_LOTS2

**Caption:** NMIS SOURCE LOTS  
**Record source:**

```sql
NMIS_SOURCE_LOTS
```

**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_ID_LOCATIONS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Form.NMIS_ID_LOCATIONS subform`, `Form.NMIS_ID_ACTIVITIES Subform`, `Form.NMIS_SOURCE_TESTS Subform`, `Form.NMIS_SOURCE_LOTS_Select subform`  
**Opens:** `Form:Lot_ID_Input_Form`, `Form:NMIS_SOURCE_LOTS_GERM_TESTS`, `Form:NMIS_SOURCE_LOTS_INPUT`, `Form:Refresh_Close`, `Form:Seedbox_Labels2`, `Report:Lot_ID_Input_Form`, `Report:NMIS_SOURCE_LOTS_GERM_TESTS`, `Report:NMIS_SOURCE_LOTS_INPUT`, `Report:Refresh_Close`, `Report:Seedbox_Labels2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label147 | NMIS Source Lots |  |  |  | 4.18, 0.08, 1.68, 0.27 |
| TextBox | CN |  | =[NMIS_SOURCE_LOTS_Select subform].Form![Selected_Lot_CN] |  |  | 7.42, 0.08, 0.00, 0.00 |
| CommandButton | Close | Save and Close |  |  | Click | 8.83, 0.08, 1.17, 0.33 |
| Line | Line245 |  |  |  |  | 0.04, 0.45, 10.04, 0.00 |
| Line | Line246 |  |  |  |  | 0.04, 0.43, 10.04, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl70 |  |  |  |  | 0.12, 1.54, 9.99, 4.60 |
| Page | Lot Information |  |  |  |  | 0.20, 1.79, 9.84, 4.28 |
| TextBox | STORED_FOR_ASSOCIATE | Stored For: | =[NMIS_SOURCE_LOTS_Select subform].Form![STORED_FOR_ASSOCIATE] |  |  | 1.73, 2.22, 0.86, 0.20 |
| TextBox | STORED_AT_ASSOCIATE | Stored  At: | =[NMIS_SOURCE_LOTS_Select subform].Form![STORED_AT_ASSOCIATE] |  |  | 1.73, 2.94, 0.79, 0.20 |
| TextBox | DATE_COLLECTED | Date Collected: | =[NMIS_SOURCE_LOTS_Select subform].Form![DATE_COLLECTED] |  |  | 4.89, 2.22, 0.75, 0.20 |
| TextBox | BREEDING_ZONE | Breeding Zone: | =[NMIS_SOURCE_LOTS_Select subform].Form![BREEDING_ZONE] |  |  | 4.89, 2.70, 0.68, 0.20 |
| TextBox | SEED_ZONE | Seed Zone: | =[NMIS_SOURCE_LOTS_Select subform].Form![SEED_ZONE] |  |  | 4.89, 2.94, 0.64, 0.20 |
| TextBox | COLLECT_METHOD | Collect Method: | =[NMIS_SOURCE_LOTS_Select subform].Form![COLLECT_METHOD] |  |  | 4.89, 3.18, 0.75, 0.20 |
| TextBox | ORIGIN_ELEVATION | Elevation: | =[NMIS_SOURCE_LOTS_Select subform].Form![ORIGIN_ELEVATION] |  |  | 4.89, 3.42, 0.75, 0.20 |
| TextBox | PROAG_ELEVATION | Proag Elevation: | =[NMIS_SOURCE_LOTS_Select subform].Form![PROAG_ELEVATION] |  |  | 4.89, 3.67, 0.75, 0.20 |
| TextBox | HUC | HUC: | =[NMIS_SOURCE_LOTS_Select subform].Form![HUC] |  |  | 7.71, 2.22, 0.64, 0.20 |
| TextBox | CERT_CODE | Cert Code: | =[NMIS_SOURCE_LOTS_Select subform].Form![CERT_CODE] |  |  | 7.71, 2.46, 0.75, 0.20 |
| TextBox | HABITAT | Habitat: | =[NMIS_SOURCE_LOTS_Select subform].Form![HABITAT] |  |  | 7.71, 2.70, 0.64, 0.20 |
| TextBox | GENETIC_BASE | Genetic Base: | =[NMIS_SOURCE_LOTS_Select subform].Form![GENETIC_BASE] |  |  | 7.71, 2.94, 0.64, 0.20 |
| TextBox | GEOGRAPHIC_LOCATION | Geographic Location: | =[NMIS_SOURCE_LOTS_Select subform].Form![GEOGRAPHIC_LOCATION] |  |  | 7.71, 3.18, 1.01, 0.20 |
| TextBox | COLLECTED_BY_ASSOCIATE | Collected By: | =[NMIS_SOURCE_LOTS_Select subform].Form![COLLECTED_BY_ASSOCIATE] |  |  | 7.71, 3.42, 0.75, 0.20 |
| TextBox | ID2 | 'Old' ID: | =[NMIS_SOURCE_LOTS_Select subform].Form![ID2] |  |  | 7.71, 3.67, 0.00, 0.20 |
| TextBox | NOTE | Note | =[NMIS_SOURCE_LOTS_Select subform].Form![NOTE] |  |  | 0.81, 3.93, 8.00, 0.87 |
| TextBox | INSERTED_BY | Inserted By: | =[NMIS_SOURCE_LOTS_Select subform].Form![INSERTED_BY] |  |  | 2.06, 5.31, 1.05, 0.20 |
| TextBox | INSERTED_DATE | Inserted Date: | =[NMIS_SOURCE_LOTS_Select subform].Form![INSERTED_DATE] |  |  | 2.06, 5.55, 1.06, 0.20 |
| TextBox | INSERTED_INSTANCE | Inserted  Instance: | =[NMIS_SOURCE_LOTS_Select subform].Form![INSERTED_INSTANCE] |  |  | 2.06, 5.79, 1.07, 0.20 |
| TextBox | MODIFIED_BY | Modified By: | =[NMIS_SOURCE_LOTS_Select subform].Form![MODIFIED_BY] |  |  | 4.92, 5.31, 1.07, 0.20 |
| TextBox | MODIFIED_DATE | Modified Date: | =[NMIS_SOURCE_LOTS_Select subform].Form![MODIFIED_DATE] |  |  | 4.92, 5.55, 1.07, 0.20 |
| TextBox | MODIFIED_INSTANCE | Modified Instance: | =[NMIS_SOURCE_LOTS_Select subform].Form![MODIFIED_INSTANCE] |  |  | 4.92, 5.79, 1.07, 0.20 |
| TextBox | TRANSFERRED_BY | Transferred By: | =[NMIS_SOURCE_LOTS_Select subform].Form![TRANSFERRED_BY] |  |  | 8.08, 5.31, 1.07, 0.20 |
| TextBox | TRANSFERRED_DATE | Transferred Date: | =[NMIS_SOURCE_LOTS_Select subform].Form![TRANSFERRED_DATE] |  |  | 8.08, 5.55, 1.07, 0.20 |
| Rectangle | Box149 |  |  |  |  | 0.43, 4.82, 9.04, 1.25 |
| TextBox | TRANSFERRED_INSTANCE | Transferred Instance: | =[NMIS_SOURCE_LOTS_Select subform].Form![TRANSFERRED_INSTANCE] |  |  | 8.08, 5.79, 1.07, 0.20 |
| Label | Label151 | Inserted Modified Transferred (IMT) |  |  |  | 0.51, 4.91, 2.34, 0.20 |
| ComboBox | CATEGORY_CODE | Category: | =[NMIS_SOURCE_LOTS_Select subform].Form![CATEGORY_CODE] | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 1.73, 2.46, 1.69, 0.20 |
| ComboBox | PRODUCT_CN | Product: | =[NMIS_SOURCE_LOTS_Select subform].Form![PRODUCT_CN] | SELECT [NMIS_PRODUCTS].[CATEGORY_CODE], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM NMIS_PRODUCTS;  |  | 1.73, 2.70, 1.69, 0.20 |
| TextBox | Text234 |  | =[NMIS_SOURCE_LOTS_Select subform].Form![ID] |  |  | 0.66, 1.83, 0.69, 0.20 |
| TextBox | Text237 |  | =[NMIS_SOURCE_LOTS_Select subform].Form![SOURCE_CODE] |  |  | 1.73, 1.83, 5.27, 0.20 |
| CommandButton | Open NMIS_SOURCE_LOT_INPUT | Enter New Source Lot |  |  | Click | 4.21, 5.21, 1.67, 0.62 |
| Page | Storage Location |  |  |  |  | 0.20, 1.79, 9.84, 4.28 |
| Subform | NMIS_ID_LOCATIONS subform1 | NMIS SOURCE LOT ID LOCATIONS | Form.NMIS_ID_LOCATIONS subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.96, 2.04, 8.37, 3.97 |
| Page | Activity Data |  |  |  |  | 0.20, 1.79, 9.84, 4.28 |
| Subform | NMIS_ID_ACTIVITIES Subform |  | Form.NMIS_ID_ACTIVITIES Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.25, 1.82, 9.79, 4.17 |
| Page | Test Data |  |  |  |  | 0.20, 1.79, 9.84, 4.28 |
| Subform | NMIS_SOURCE_TESTS Subform | NMIS SOURCE TESTS | Form.NMIS_SOURCE_TESTS Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.55, 1.96, 9.24, 4.01 |
| Page | Reports |  |  |  |  | 0.20, 1.79, 9.84, 4.28 |
| CommandButton | Preview/Print Box Labels | Preview/Print Box Labels |  |  |  | 0.75, 2.51, 2.10, 0.33 |
| CommandButton | Preview Germination Test Report | Preview/Print Germ Report |  |  | Click | 0.75, 3.13, 2.24, 0.33 |
| Label | Label208 | Reports |  |  |  | 4.78, 1.93, 0.57, 0.20 |
| Rectangle | Box210 |  |  |  |  | 0.46, 2.30, 9.46, 3.71 |
| Subform | NMIS_SOURCE_LOTS_Select subform |  | Form.NMIS_SOURCE_LOTS_Select subform |  |  | 1.38, 0.03, 8.69, 1.37 |
| TextBox | Selected_Source_ID | Selected Lot | =[NMIS_SOURCE_LOTS_Select subform].Form![ID] |  |  | 0.19, 0.96, 1.02, 0.31 |
| Label | Label231 | Select A Lot  |  |  |  | 0.15, 0.28, 0.88, 0.20 |
| Label | Label232 | è |  |  |  | 1.08, 0.28, 0.22, 0.19 |
| Rectangle | Box233 |  |  |  |  | 0.12, 0.62, 1.14, 0.74 |
| TextBox | Text251 | Species Code: | =[NMIS_SOURCE_LOTS_Select subform].Form![PLNTMSTR_SYMBOL] |  |  | 4.89, 2.46, 0.75, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub preview_print_seedbox_label_Click()
On Error GoTo Err_preview_print_seedbox_label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_preview_print_seedbox_label_Click:
    Exit Sub

Err_preview_print_seedbox_label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_print_seedbox_label_Click
    
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub

Private Sub Preview_Germination_Test_Report_Click()
On Error GoTo Err_Preview_Germination_Test_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_GERM_TESTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Germination_Test_Report_Cli:
    Exit Sub

Err_Preview_Germination_Test_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Germination_Test_Report_Cli
    
End Sub
Private Sub Open_Source_Lot_Input_Form_Click()
On Error GoTo Err_Open_Source_Lot_Input_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Input_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Input_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Input_Form_Click
    
End Sub
Private Sub Open_NMIS_SOURCE_LOT_INPUT_Click()
On Error GoTo Err_Open_NMIS_SOURCE_LOT_INPUT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_SOURCE_LOT_INPUT_Click:
    Exit Sub

Err_Open_NMIS_SOURCE_LOT_INPUT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_SOURCE_LOT_INPUT_Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub
Private Sub Command243_Click()
On Error GoTo Err_Command243_Click


    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70
    DoCmd.Close

Exit_Command243_Click:
    Exit Sub

Err_Command243_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command243_Click
    
End Sub
```
