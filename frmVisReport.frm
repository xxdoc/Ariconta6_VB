VERSION 5.00
Object = "{8767A745-088E-4CA6-8594-073D6D2DE57A}#9.2#0"; "crviewer9.dll"
Begin VB.Form frmVisReport 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Visor de informes"
   ClientHeight    =   4260
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   15315
   Icon            =   "frmVisReport.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4260
   ScaleWidth      =   15315
   ShowInTaskbar   =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.Frame FrameCopia 
      BackColor       =   &H00F0F0F0&
      BorderStyle     =   0  'None
      Height          =   375
      Left            =   5280
      TabIndex        =   1
      Top             =   0
      Width           =   3975
      Begin VB.VScrollBar VScroll1 
         Height          =   375
         Left            =   1200
         Min             =   1
         TabIndex        =   5
         Tag             =   "15000"
         Top             =   0
         Value           =   15000
         Width           =   255
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   2
         Left            =   3360
         TabIndex        =   4
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   1
         Left            =   2160
         TabIndex        =   3
         Text            =   "1"
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   600
         TabIndex        =   2
         Text            =   "1"
         Top             =   0
         Width           =   375
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00C0C0C0&
         X1              =   1100
         X2              =   1100
         Y1              =   0
         Y2              =   480
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Hasta"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   2
         Left            =   2760
         TabIndex        =   8
         Top             =   30
         Width           =   480
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Desde"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   1
         Left            =   1560
         TabIndex        =   7
         Top             =   30
         Width           =   540
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Copias"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   0
         TabIndex        =   6
         Top             =   30
         Width           =   585
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   120
      Top             =   3480
   End
   Begin CRVIEWER9LibCtl.CRViewer9 CRViewer1 
      Height          =   3015
      Left            =   480
      TabIndex        =   0
      Top             =   1320
      Width           =   9975
      lastProp        =   600
      _cx             =   17595
      _cy             =   5318
      DisplayGroupTree=   -1  'True
      DisplayToolbar  =   -1  'True
      EnableGroupTree =   -1  'True
      EnableNavigationControls=   -1  'True
      EnableStopButton=   -1  'True
      EnablePrintButton=   -1  'True
      EnableZoomControl=   -1  'True
      EnableCloseButton=   -1  'True
      EnableProgressControl=   0   'False
      EnableSearchControl=   -1  'True
      EnableRefreshButton=   -1  'True
      EnableDrillDown =   -1  'True
      EnableAnimationControl=   -1  'True
      EnableSelectExpertButton=   0   'False
      EnableToolbar   =   -1  'True
      DisplayBorder   =   -1  'True
      DisplayTabs     =   -1  'True
      DisplayBackgroundEdge=   -1  'True
      SelectionFormula=   ""
      EnablePopupMenu =   0   'False
      EnableExportButton=   -1  'True
      EnableSearchExpertButton=   0   'False
      EnableHelpButton=   0   'False
      LaunchHTTPHyperlinksInNewBrowser=   -1  'True
      EnableLogonPrompts=   -1  'True
   End
End
Attribute VB_Name = "frmVisReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'COmentariio

Public Informe As String
'Public SubInformeConta As String 'SubInforme con conexion a la contabilidad. Conectar a las
                            'tablas de la BDatos correspondiente a la empresa: conta1, conta2, etc.
Public ConSubInforme As Boolean 'Si tiene subinforme ejecta la funcion AbrirSubInforme para enlazar esta a la BD correspondiente
Public InfConta As Boolean 'Enlazar a la Contabilidas
Public FicheroPDF As String


'estas varriables las trae del formulario de impresion
Public FormulaSeleccion As String
Public SoloImprimir As Boolean
Public OtrosParametros As String   ' El grupo acaba en |                            ' param1=valor1|param2=valor2|
Public NumeroParametros As Integer   'Cuantos parametros hay.  EMPRESA(EMP) no es parametro. Es fijo en todos los informes
Public MostrarTree As Boolean
Public Opcion As Integer
Public ExportarPDF As Boolean
Public EstaImpreso As Boolean
Public SubInformeConta As String

Public NumCopias2 As Integer ' (RAFA/ALZIRA 31082006) controla el n�mero de copias en un informe de impresion autom�tica


Dim mapp As CRAXDRT.Application
Dim mrpt As CRAXDRT.Report
Dim smrpt As CRAXDRT.Report

'Dim Argumentos() As String
Dim PrimeraVez As Boolean







Private Sub CRViewer1_ExportButtonClicked(UseDefault As Boolean)
    mrpt.Export True
End Sub

Private Sub CRViewer1_PrintButtonClicked(UseDefault As Boolean)
Dim Inicial As Integer

    On Error GoTo ePrintButtonClicked
        
    'Me.Frame1.Visible = Not Me.Frame1.Visible
      UseDefault = False
      If mrpt.PrinterSetupEx(Me.hwnd) = 0 Then
         
         'ok
         EstaImpreso = True
        
         
         If Text1(2).Text = "" Then
            mrpt.PrintOut False, CInt(Me.Text1(0).Text), , CInt(Val(Me.Text1(1).Text))
         Else
            mrpt.PrintOut False, CInt(Me.Text1(0).Text), , CInt(Val(Me.Text1(1).Text)), CInt(Val(Me.Text1(2).Text))
         End If
         
     
     End If
    
    Exit Sub

ePrintButtonClicked:
    MuestraError Err.Number, Err.Description
End Sub

Private Function PuedoCerrar(SegundoIncial As Single) As Boolean
Dim C As Integer
    PuedoCerrar = False
    If Not mrpt Is Nothing Then
        C = mrpt.PrintingStatus.Progress
        Debug.Print Now & " e:" & C
    Else
        C = 1
    End If
    
    If C = 2 Then
        DoEvents
        If Timer - SegundoIncial < 20 Then
            Screen.MousePointer = vbHourglass
            espera 1
            'If Timer - SegundoIncial > 5 Then
        Else
            PuedoCerrar = True
        End If
    Else
        PuedoCerrar = True
    End If
End Function


Private Sub CRViewer1_SearchButtonClicked(ByVal searchText As String, UseDefault As Boolean)
    UseDefault = True
    
End Sub



Private Sub Form_Activate()
Dim Incio As Single
Dim Fin As Boolean
    If PrimeraVez Then
    
    
        PrimeraVez = False
        
        
        If SoloImprimir Or Me.ExportarPDF Then
           
        
            Screen.MousePointer = vbHourglass
            If SoloImprimir Then
                Incio = Timer
                Do
                    Fin = PuedoCerrar(Incio)
                Loop Until Fin
                Set mrpt = Nothing
                Set mapp = Nothing
            End If
            Unload Me
        Else
           
            
        End If
    End If
    Screen.MousePointer = vbDefault
End Sub

Private Sub Form_Load()
Dim i As Integer
Dim J As Integer
Dim NomImpre As String

    On Error GoTo Err_Carga
    
    'Icono del formulario
    Me.Icon = frmppal.Icon
    
    

    
    
    
    

    Screen.MousePointer = vbHourglass
    Set mapp = CreateObject("CrystalRuntime.Application")
    Set mrpt = mapp.OpenReport(Informe)
       
    If NumCopias2 = 0 Then NumCopias2 = 1
    Text1(0).Text = NumCopias2
       
    For i = 1 To mrpt.Database.Tables.Count
        
      'En esta linea redireccionamos el ODBC. Si fuera lento podriamos estudiar No redirecciona si ODBC=Ariconta
      'Esto solo se ejcuta la primera vez
      If i = 1 Then mrpt.Database.Tables(i).ConnectBufferString = "DSN=" & vControl.ODBC & ";;User ID=root;;UseDSNProperties=0"
        
      If mrpt.Database.Tables(i).ConnectionProperties.Item("DSN") = vControl.ODBC Then
            mrpt.Database.Tables(i).SetLogOnInfo vControl.ODBC, "ariconta" & vEmpresa.codempre
            If InStr(1, mrpt.Database.Tables(i).Name, "_cmd") = 0 And InStr(1, mrpt.Database.Tables(i).Name, "_alias") = 0 Then
                    mrpt.Database.Tables(i).Location = "ariconta" & vEmpresa.codempre & "." & mrpt.Database.Tables(i).Name
            Else
                If InStr(1, mrpt.Database.Tables(i).Name, "_alias") <> 0 Then
                    mrpt.Database.Tables(i).Location = "ariconta" & vEmpresa.codempre & "." & Mid(mrpt.Database.Tables(i).Name, 1, InStr(1, mrpt.Database.Tables(i).Name, "_") - 1) ', "")
                End If
            End If
      End If
    Next i
    


    'If ConSubInforme Then AbrirSubreport
    AbrirSubreport
    
    PrimeraVez = True
    
    CargaArgumentos
    
    
    mrpt.RecordSelectionFormula = FormulaSeleccion
'    mrpt.RecordSortFields

    If Opcion = 100 Then ' informe de evolucion mensual por socio
        mrpt.FormulaFields.GetItemByName ("pOrden")
        mrpt.RecordSortFields.Item(1).SortDirection = crDescendingOrder
    End If
  
    
    'Si es a mail
    If Me.ExportarPDF Then
        Exportar
        Exit Sub
    End If
    
     'lOS MARGENES
'    PonerMargen
    CRViewer1.EnableGroupTree = MostrarTree
    CRViewer1.DisplayGroupTree = MostrarTree
    

    If FicheroPDF <> "" Then
        mrpt.ExportOptions.DestinationType = crEDTDiskFile
        mrpt.ExportOptions.DiskFileName = FicheroPDF
        mrpt.ExportOptions.FormatType = crEFTPortableDocFormat
        mrpt.ExportOptions.PDFExportAllPages = True
        mrpt.Export False
        Exit Sub
    End If
    
    
    
    EstaImpreso = False
    
    CRViewer1.ReportSource = mrpt
   
   
    If SoloImprimir Then
'        mrpt.PrinterName
'        Debug.Print mrpt.PrinterName
        If NumCopias2 = 0 Then '(RAFA/ALZIRA 31082006) si se ha solicitado n�mero de copias se imprime ese n�mero
            mrpt.PrintOut False
        Else
            mrpt.PrintOut False, NumCopias2
        End If
        EstaImpreso = True
    Else
        CRViewer1.ViewReport
    End If
    
   
    
    Exit Sub
    
Err_Carga:
    MsgBox "Error: " & Err.Number & vbCrLf & Err.Description & vbCrLf & Informe, vbCritical
    Set mapp = Nothing
    Set mrpt = Nothing
    Set smrpt = Nothing
End Sub

Private Sub Form_Resize()
On Error Resume Next
    CRViewer1.top = 60
    CRViewer1.Left = 0
    CRViewer1.Height = ScaleHeight
    CRViewer1.Width = ScaleWidth
        
    FrameCopia.top = 90
    FrameCopia.Left = CRViewer1.Width - CRViewer1.Left - 1800 - FrameCopia.Width
    
    If Err.Number <> 0 Then Err.Clear
End Sub

Private Sub CargaArgumentos()
Dim Parametro As String
Dim i As Integer
    'El primer parametro es el nombre de la empresa para todas las empresas
    ' Por lo tanto concaatenaremos con otros parametros
    ' Y sumaremos uno
    'Luego iremos recogiendo para cada formula su valor y viendo si esta en
    ' La cadena de parametros
    'Si esta asignaremos su valor
    
'    OtrosParametros = "|Emp= """ & vEmpresa.nomempre & """|" & OtrosParametros
Select Case NumeroParametros
Case 0
    '====Comenta: LAura
    'Solo se vacian los campos de formula que empiezan con "p" ya que estas
    'formulas se corresponden con paso de parametros al Report
    For i = 1 To mrpt.FormulaFields.Count
        If Left(Mid(mrpt.FormulaFields(i).Name, 3), 1) = "p" Then
            mrpt.FormulaFields(i).Text = """"""
        End If
    Next i
    '====
Case 1
    
    For i = 1 To mrpt.FormulaFields.Count
        Parametro = mrpt.FormulaFields(i).Name
        Parametro = Mid(Parametro, 3)  'Quitamos el {@
        Parametro = Mid(Parametro, 1, Len(Parametro) - 1) ' el } del final
        'Debug.Print Parametro
        If DevuelveValor(Parametro) Then
            mrpt.FormulaFields(i).Text = Parametro
        Else
'            mrpt.FormulaFields(I).Text = """"""
        End If
    Next i
    
Case Else
    NumeroParametros = NumeroParametros + 1
    
    For i = 1 To mrpt.FormulaFields.Count
        Parametro = mrpt.FormulaFields(i).Name
        Parametro = Mid(Parametro, 3)  'Quitamos el {@
        Parametro = Mid(Parametro, 1, Len(Parametro) - 1) ' el } del final
        If DevuelveValor(Parametro) Then
            mrpt.FormulaFields(i).Text = Parametro
        End If
    Next i
'    mrpt.RecordSelectionFormula
End Select
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set mrpt = Nothing
    Set mapp = Nothing
    Set smrpt = Nothing
    NumCopias2 = 0 ' (RAFA/ALZIRA 31082006) por si acaso
End Sub


Private Function DevuelveValor(ByRef Valor As String) As Boolean
Dim i As Long
Dim J As Long

    Valor = "|" & Valor & "="
    DevuelveValor = False
    i = InStr(1, OtrosParametros, Valor, vbTextCompare)
    If i > 0 Then
        i = i + Len(Valor)
        J = InStr(i, OtrosParametros, "|")
        If J > 0 Then
            Valor = Mid(OtrosParametros, i, J - i)
            If Valor = "" Then
                Valor = " "
            Else
                If InStr(1, Valor, "chr(13)") = 0 Then CompruebaComillas Valor
            End If
            DevuelveValor = True
        End If
    End If
End Function


Private Sub CompruebaComillas(ByRef Valor1 As String)
Dim Aux As String
Dim J As Integer
Dim i As Integer

    If Mid(Valor1, 1, 1) = Chr(34) Then
        'Tiene comillas. Con lo cual tengo k poner las dobles
        Aux = Mid(Valor1, 2, Len(Valor1) - 2)
        i = -1
        Do
            J = i + 2
            i = InStr(J, Aux, """")
            If i > 0 Then
              Aux = Mid(Aux, 1, i - 1) & """" & Mid(Aux, i)
            End If
        Loop Until i = 0
        Aux = """" & Aux & """"
        Valor1 = Aux
    End If
End Sub

Private Sub Exportar()
    mrpt.ExportOptions.DiskFileName = App.Path & "\docum.pdf"
    mrpt.ExportOptions.DestinationType = crEDTDiskFile
    mrpt.ExportOptions.PDFExportAllPages = True
    mrpt.ExportOptions.FormatType = crEFTPortableDocFormat
    mrpt.Export False
    'Si ha generado bien entonces
    CadenaDesdeOtroForm = "OK"
End Sub

Private Sub PonerMargen()
Dim Cad As String
Dim i As Integer
    On Error GoTo EPon
    Cad = Dir(App.Path & "\*.mrg")
    If Cad <> "" Then
        i = InStr(1, Cad, ".")
        If i > 0 Then
            Cad = Mid(Cad, 1, i - 1)
            If IsNumeric(Cad) Then
                If Val(Cad) > 4000 Then Cad = "4000"
                If Val(Cad) > 0 Then
                    mrpt.BottomMargin = mrpt.BottomMargin + Val(Cad)
                End If
            End If
        End If
    End If
    
    Exit Sub
EPon:
    Err.Clear
End Sub






Private Sub AbrirSubreport()
'Para cada subReport que encuentre en el Informe pone las tablas del subReport
'apuntando a la BD correspondiente
Dim crxSection As CRAXDRT.Section
Dim crxObject As Object
Dim crxSubreportObject As CRAXDRT.SubreportObject
Dim i As Byte

    For Each crxSection In mrpt.Sections
        For Each crxObject In crxSection.ReportObjects
             If TypeOf crxObject Is SubreportObject Then
                Set crxSubreportObject = crxObject
                Set smrpt = mrpt.OpenSubreport(crxSubreportObject.SubreportName)
                For i = 1 To smrpt.Database.Tables.Count 'para cada tabla
                    '------ A�ade Laura: 09/06/2005
                    
                    If smrpt.Database.Tables(i).ConnectionProperties.Item("DSN") = vControl.ODBC Then
                        smrpt.Database.Tables(i).SetLogOnInfo vControl.ODBC, "ariconta" & vEmpresa.codempre
                        If (InStr(1, smrpt.Database.Tables(i).Name, "_cmd") = 0) And (InStr(1, smrpt.Database.Tables(i).Name, "_alias") = 0) Then
                           smrpt.Database.Tables(i).Location = "ariconta" & vEmpresa.codempre & "." & smrpt.Database.Tables(i).Name
                        Else
                            If InStr(1, smrpt.Database.Tables(i).Name, "_alias") <> 0 Then
                            '    smrpt.Database.Tables(i).Location = vEmpresa.BDAriagro & "." & Replace(smrpt.Database.Tables(i).Name, "_alias", "")
                                smrpt.Database.Tables(i).Location = "ariconta" & vEmpresa.codempre & "." & Mid(smrpt.Database.Tables(i).Name, 1, InStr(1, smrpt.Database.Tables(i).Name, "_") - 1) ', "")
                            End If
                        End If
                    ElseIf smrpt.Database.Tables(i).ConnectionProperties.Item("DSN") = "vUsuarios" Then
                        smrpt.Database.Tables(i).SetLogOnInfo "vUsuarios", "usuarios"
                        If (InStr(1, smrpt.Database.Tables(i).Name, "_") = 0) Then
                           smrpt.Database.Tables(i).Location = "usuarios" & "." & smrpt.Database.Tables(i).Name
                        End If
                    End If
                    '------
                Next i
             End If
        Next crxObject
    Next crxSection

    Set crxSubreportObject = Nothing
End Sub



Private Function RedireccionamosTabla(tabla As String) As Boolean
    'If (InStr(1, smrpt.Database.Tables(i).Name, "_") = 0) Then
    If InStr(1, tabla, "_") = 0 Then
        RedireccionamosTabla = True
    Else
        If Mid(tabla, 1, 3) = "tel" Then
            'tablas telefonia
            RedireccionamosTabla = True
        Else
            'resto
            RedireccionamosTabla = False
        End If
    End If
    
    
End Function





Private Function CopiarFichero(Fichero As String) As Boolean
    On Error Resume Next
    FileCopy Fichero, mrpt.ExportOptions.DiskFileName
    If Err.Number <> 0 Then
        MuestraError Err.Number, , Err.Description
        CopiarFichero = False
    Else
        CopiarFichero = True
    End If
End Function




Private Sub Text1_GotFocus(Index As Integer)
     ConseguirFoco Text1(Index), 3
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
    'Si pulsa ESC
    Dim cerrar As Boolean

    KEYpressGnral KeyAscii, 2, cerrar
    If cerrar Then Unload Me
End Sub

Private Sub Text1_LostFocus(Index As Integer)
Dim Resetear As Boolean

    Text1(Index).Text = Trim(Text1(Index).Text)
    Resetear = False
    If Not PonerFormatoEntero(Text1(Index)) Then
        Resetear = True
        
    Else
        Text1(Index).Text = Abs(Text1(Index).Text) 'por si acaso
        If Index = 2 Then
            
        Else
            'NUmero de copias / Pagina inicio
            If Val(Text1(Index).Text) = 0 Then Resetear = True
        End If
    End If
    If Resetear Then
        If Index = 2 Then
            Text1(Index).Text = ""
        ElseIf Index = 1 Then
            Text1(Index).Text = "1"
        Else
            
            VScroll1.Value = 15000
            VScroll1.Tag = 15000
            Text1(0).Text = NumCopias2
        End If
    Else
        'OK. Veamos que pagina final NO es mayor que inicio
        If Text1(2).Text <> "" Then
            If Val(Val(Me.Text1(1).Text)) > Val(Val(Me.Text1(2).Text)) Then Me.Text1(2).Text = Me.Text1(1).Text
        End If
    End If
End Sub

Private Sub SubirBajar(mas As Boolean)
Dim i As Integer
    
    If Not IsNumeric(Text1(0).Text) Then
        i = 1
    Else
        i = CInt(Val(Text1(0).Text))
    End If
    If mas Then
        i = i + 1
    Else
        i = i - 1
        If i < 1 Then i = 1
    End If
    Text1(0).Text = i
End Sub

'Private Sub UpDown1_DownClick()
'    SubirBajar False
'End Sub
'
'Private Sub UpDown1_UpClick()
'    SubirBajar True
'End Sub

Private Sub VScroll1_Change()
Dim Diferencia As Integer
    Diferencia = VScroll1.Tag - VScroll1.Value
    VScroll1.Tag = VScroll1.Value
    If Diferencia < 0 Then
        SubirBajar False
    Else
    
        SubirBajar True
    End If
End Sub






Private Sub HubicarDesdeHasta()

End Sub
