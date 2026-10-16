Option Compare Database

'Declare Function GetUserName Lib "advapi32.dll" _
    'Alias "GetUserNameA" ( _
        'ByVal lpBuffer As String, _
        'nSize As Long _
    ') As Long

Function CurrentUserName() As String
    'Dim sBuffer As String * 25, lReturn As Long
    'lReturn = GetUserName(sBuffer, 25)
    Dim wshNet As Object
    Set wshNet = CreateObject("WScript.Network")
    CurrentUserName = wshNet.username 'Left$(sBuffer, InStr(sBuffer, Chr(0)) - 1)
    'Forms!Switchboard!Current_User_Name = CurrentUserName
End Function

Sub GetCurrentUserName()
    Dim sUserName As String
    sUserName = CurrentUserName
    If Len(sUserName) Then
        Debug.Print "User Not Logged on."
    End If
    
End Sub

Function IsLoaded(ByVal strFormName As String) As Integer
 ' Returns True if the specified form is open in Form view or Datasheet view.
    
    Const conObjStateClosed = 0
    Const conDesignView = 0
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> conObjStateClosed Then
        If Forms(strFormName).CurrentView <> conDesignView Then
            IsLoaded = True
        End If
    End If
    
End Function

Function IsLoadedRpt(ByVal strReportName As String) As Integer
 ' Returns True if the specified Report is open in Form view or Datasheet view.
    
    Const conObjStateClosed = 0
    Const conDesignView = 0
    
    If SysCmd(acSysCmdGetObjectState, acReport, strReportName) <> conObjStateClosed Then
        If Forms(strReportName).CurrentView <> conDesignView Then
            IsLoadedRpt = True
        End If
    End If
    IsLoadedRpt = True
End Function

Function Update_Source_Performance()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Nmis_Source_Performance_Update_AT"
    DoCmd.SetWarnings True
    
    MsgBox "Update Complete"
    
End Function
