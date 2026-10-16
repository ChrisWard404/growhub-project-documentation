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