# Form: NMIS_ACCESS_USER_NURSERY subform

**Caption:** NMIS_ACCESS_SET_USER_NURSERY subform  
**Record source:**

```sql
SELECT NMIS_ACCESS_USER_NURSERY.User_Nursery, NMIS_ACCESS_USER_NURSERY.User_Nursery_Code, NMIS_ACCESS_USER_NURSERY.Set_As_User, NMIS_ACCESS_USER_NURSERY.Nursery_Associate_Code, NMIS_ACCESS_USER_NURSERY.ID_Offset, NMIS_ACCESS_USER_NURSERY.Field_Index_Increment_Default, NMIS_ACCESS_USER_NURSERY.Default1, NMIS_ACCESS_USER_NURSERY.Default2, NMIS_ACCESS_USER_NURSERY.Default3, NMIS_ACCESS_USER_NURSERY.Default4, NMIS_ACCESS_USER_NURSERY.Nursery_Owned_Code, IIf([Nursery_Associate_Code]="050357","cm",IIf([Nursery_Associate_Code]="010410","IN",IIf([Nursery_Associate_Code]="040207","in",IIf([Nursery_Associate_Code]="061019","I","")))) AS Default_Ht_Spec_Unit, NMIS_ACCESS_USER_NURSERY.Default4N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Set_As_User)=Yes));
```

**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`  
**Embedded in:** `Form:Switchboard`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | User_Nursery_Code |  | User_Nursery_Code |  |  | 2.44, 0.04, 0.75, 0.16 |
| TextBox | Nursery_Associate_Code |  | Nursery_Associate_Code |  |  | 2.03, 0.04, 0.58, 0.00 |
| TextBox | User_Nursery |  | User_Nursery |  |  | 0.04, 0.02, 1.95, 0.21 |
| TextBox | Field_Index_Increment_Default |  | Field_Index_Increment_Default |  |  | 1.73, 0.04, 0.54, 0.00 |
| TextBox | Default1 |  | Default1 |  |  | 3.90, 0.04, 0.46, 0.00 |
| TextBox | Default2 |  | Default2 |  |  | 4.40, 0.04, 0.46, 0.00 |
| TextBox | Default3 |  | Default3 |  |  | 4.94, 0.04, 0.46, 0.00 |
| TextBox | Default4 |  | Default4 |  |  | 5.46, 0.04, 0.46, 0.00 |
| TextBox | Nursery_Owned_Code |  | Nursery_Owned_Code |  |  | 3.35, 0.04, 0.46, 0.00 |
| TextBox | Default_Ht_Spec_Unit |  | Default_Ht_Spec_Unit |  |  | 8.25, 0.04, 0.00, 0.00 |
| TextBox | ID_Offset |  | ID_Offset |  |  | 7.17, 0.04, 0.00, 0.00 |
| TextBox | Default4N |  | Default4N |  |  | 6.01, 0.03, 0.46, 0.00 |
