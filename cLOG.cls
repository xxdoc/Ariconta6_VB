VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "cLOG"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit

'ACCIONES DISPONIBLES
'
'
'
'       1.- Modificar asiento
'       2.- Eliminar asiento
'       3.- Modificar Linea de asiento
'       4.- Eliminar Linea de asiento

'       5,6,7,8      FRACLI
'       9,10,11,12   FRAPRO

'       13.- Generar amortizacion
'       14.- Deshacer amortizacion

'       15.- Liquidacion de IVA
'       16.- Deshacer Liquidacion

'       17.- proceso cierre [RENUMERAR]
'       18.- proceso cierre [CIERRE]
'       19.- proceso cierre [DESHACER]

'       20.- Traspaso de cuentas en apuntes"
'       21.- Renumerar registro Proveedor
'       22.- Aumentar d�gitos contables

'       23.- Eliminar cobros
'       24.- Eliminar pagos

'       25.- Modificacion de contadores

'       26.- Compensaciones
'       27.- Eliminar remesa y vtos

'       28.- Generar Asiento contabilizacion de factura cliente
'       29.- Generar Asiento contabilizacion de factura proveedor

'       30. Modificar datos desde traspaso primir semestree SII

'       31.  Volver a generar fichero banco. Guardara datos anteriores

'       32.   VARIOS.  Multiproposito. Empezar con corchete

Private Const AccionesRegistradas = 31
Private mvarDatosDescripcion As String

Dim SQL As String


Public Property Let DatosDescripcion(ByVal vData As String)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignaci�n.
'Syntax: X.Nivel = 5
    mvarDatosDescripcion = vData
End Property


Public Property Get DatosDescripcion() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignaci�n.
'Syntax: Debug.Print X.Nivel
    DatosDescripcion = mvarDatosDescripcion
End Property



Public Function Insertar(Accion As Byte, ByRef ElUsuario As Usuario, Descripcion As String) As Boolean


    On Error GoTo EI
    Insertar = False
    
    SQL = "insert into `slog` (`fecha`,`accion`,`usuario`,`pc`,`descripcion`) values ( "
    SQL = SQL & " now()," & Accion & " ,'" & DevNombreSQL(ElUsuario.Login) & "','"
    SQL = SQL & DevNombreSQL(ElUsuario.PC) & "',"
    If Descripcion = "" Then
        SQL = SQL & "NULL)"
    Else
        SQL = SQL & DBSet(Descripcion, "T") & ")"
    End If
    Conn.Execute SQL
    
    
    Insertar = True
    Exit Function
EI:
    MuestraError Err.Number, "Registro LOG de acciones"

End Function

Private Function DimeAccion(N As Integer) As String
Dim H As Integer
Dim C As String

    If N <= 12 Then
        'las 9 primeras son mantenimientos basicos
        H = N Mod 2
        If H = 1 Then
            C = "Modificar"
        ElseIf H = 0 Then
            C = "Eliminar"
        End If
        
        If ((N - 1) Mod 4) >= 2 Then
            C = C & " L�nea"
        End If
        
        H = (N - 1) \ 4
        If H = 0 Then
            C = C & " Asiento"
        ElseIf H = 1 Then
            C = C & " Factura Cliente"
        Else
            C = C & " Factura Proveedor"
        End If
            
    Else
        'Aqui iran yendo resto acciones
        Select Case N
            Case 13
                C = "Generar Amortizaci�n"
            Case 14
                C = "Deshacer Amortizaci�n"
            Case 15
                C = "Liquidaci�n IVA"
            Case 16
                C = "Eliminar Liquidacion"
            Case 17
                C = "Proceso Cierre [RENUMERAR]"
            Case 18
                C = "Proceso Cierre [CIERRE]"
            Case 19
                C = "Proceso Cierre [DESHACER]"
            Case 20
                C = "Traspaso de cuentas en apuntes"
            Case 21
                C = "Renumerar registro Proveedor"
            Case 22
                C = "Aumentar d�gitos contables"
            Case 23
                C = "Eliminar cobros"
            Case 24
                C = "Eliminar pagos"
            Case 25
                C = "Modificacion de contadores"
            Case 26
                C = "Compensaciones"
            Case 27
                C = "Eliminar remesa y vtos"
            Case 28
                C = "Generar asiento Fra.Cliente"
            Case 29
                C = "Generar asiento Fra.Proveedor"
                
            Case 30
                C = "Modif. 1er semestree SII"
                
            Case 31
                C = "Volver gen. fichero XML banco"

        End Select
        
        
    End If
    DimeAccion = C
End Function


Public Function DevuelveAcciones(ByRef ListaAcciones As Collection) As Boolean
Dim i As Integer

 On Error GoTo EDevuelveAcciones
    For i = 1 To AccionesRegistradas
        SQL = i & "|" & DimeAccion(i) & "|"
        ListaAcciones.Add SQL
    Next i
    
    DevuelveAcciones = True
    
    Exit Function
EDevuelveAcciones:
    MuestraError Err.Number
End Function



Public Sub VolcarAFichero2()
Dim F As Date
Dim Rs As ADODB.Recordset




    On Error GoTo EVolcar

    

    Set Rs = New ADODB.Recordset
    F = Now   'Por si acaso esta el reloj mal
    Rs.Open "select curdate()", Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    If Not Rs.EOF Then F = DBLet(Rs.Fields(0), "F")
    Rs.Close
    
    
    
    
    'Ya tengo la fecha.
    F = DateAdd("yyyy", -1, F)  'Le quito 1 a�o
    F = CDate("01/" & Month(F) & "/" & Year(F))   'Pongo el primer dia del mes anterior
    'Le quito un dia
    F = DateAdd("d", -1, F)
    
    
    SQL = "Select * from slog where fecha < '" & Format(F, "yyyy-mm-dd") & "' "
'    SQL = "INSERT INTO slog_old " & SQL
'    Conn.Execute SQL
    Conn.Execute "DELETE from slog where fecha <'" & Format(F, "yyyy-mm-dd") & "'"
        
    
    
    Set Rs = Nothing
    
    
    Exit Sub
EVolcar:
    SQL = "Error volcado datos acciones: " & vbCrLf & Err.Description
    SQL = SQL & vbCrLf & vbCrLf & "El programa continuar�." & vbCrLf & vbCrLf & "Avise a soporte t�cnico."
    MsgBox SQL, vbExclamation
    Err.Clear
    Set Rs = Nothing
End Sub





'Dos metodos sobre la variable mvarDatosDescripcion
' Inicializar y a�adir texto
Public Sub InicializarDatosDesc()
    mvarDatosDescripcion = ""
End Sub


Public Sub AnyadeTextoDatosDes(T As String)
    
    If mvarDatosDescripcion <> "" Then mvarDatosDescripcion = mvarDatosDescripcion & ":"
    mvarDatosDescripcion = mvarDatosDescripcion & T
End Sub
