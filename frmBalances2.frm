VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmBalances 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Configurador de balances"
   ClientHeight    =   8445
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11820
   Icon            =   "frmBalances2.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8445
   ScaleWidth      =   11820
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frameActivo 
      Height          =   6075
      Left            =   270
      TabIndex        =   6
      Top             =   1290
      Width           =   11235
      Begin VB.TextBox Text3 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   9690
         TabIndex        =   35
         Text            =   "Text2"
         Top             =   5640
         Width           =   1395
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   5115
         Left            =   8580
         TabIndex        =   12
         Top             =   300
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   9022
         LabelEdit       =   1
         LabelWrap       =   0   'False
         HideSelection   =   -1  'True
         _Version        =   393217
         Icons           =   "ImageList1"
         SmallIcons      =   "ImageList1"
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   0
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3000
         TabIndex        =   11
         Text            =   "Text2"
         Top             =   5610
         Width           =   5415
      End
      Begin VB.TextBox Text1 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   360
         Left            =   990
         Locked          =   -1  'True
         TabIndex        =   9
         Text            =   "Text1"
         Top             =   5595
         Width           =   735
      End
      Begin MSComctlLib.TreeView TreeView1 
         Height          =   5115
         Left            =   120
         TabIndex        =   7
         Top             =   300
         Width           =   8455
         _ExtentX        =   14923
         _ExtentY        =   9022
         _Version        =   393217
         HideSelection   =   0   'False
         LabelEdit       =   1
         Style           =   7
         FullRowSelect   =   -1  'True
         ImageList       =   "ImageList1"
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label1 
         Caption         =   "Con.Oficial"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   2
         Left            =   8610
         TabIndex        =   36
         Top             =   5700
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Texto"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   1
         Left            =   2250
         TabIndex        =   10
         Top             =   5700
         Width           =   675
      End
      Begin VB.Label Label1 
         Caption         =   "C�digo"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   180
         TabIndex        =   8
         Top             =   5700
         Width           =   735
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Salir"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10350
      TabIndex        =   20
      Top             =   7740
      Width           =   1215
   End
   Begin VB.Frame FrameBotones 
      Height          =   735
      Left            =   150
      TabIndex        =   13
      Top             =   150
      Width           =   4785
      Begin MSComctlLib.Toolbar Toolbar1 
         Height          =   330
         Left            =   210
         TabIndex        =   39
         Top             =   210
         Width           =   4335
         _ExtentX        =   7646
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         AllowCustomize  =   0   'False
         Style           =   1
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   11
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Agregar nodo"
               Object.Tag             =   "2"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Agregar nodo hijo"
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Modificar nodo"
               Object.Tag             =   "2"
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Eliminar nodo"
               Object.Tag             =   "2"
               Object.Width           =   1e-4
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Subir"
            EndProperty
            BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Bajar"
            EndProperty
            BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Agregar cuenta"
            EndProperty
            BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Agregar cuenta"
            EndProperty
            BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Eliminar cuenta"
            EndProperty
         EndProperty
      End
      Begin VB.CommandButton cmdUpDown 
         Height          =   375
         Index           =   1
         Left            =   2760
         Picture         =   "frmBalances2.frx":000C
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "Bajar"
         Top             =   180
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton cmdUpDown 
         Height          =   375
         Index           =   0
         Left            =   2280
         Picture         =   "frmBalances2.frx":0596
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "Subir "
         Top             =   180
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Index           =   6
         Left            =   3720
         Picture         =   "frmBalances2.frx":0B20
         Style           =   1  'Graphical
         TabIndex        =   33
         ToolTipText     =   "Agregar cuenta"
         Top             =   180
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Index           =   5
         Left            =   4140
         Picture         =   "frmBalances2.frx":10AA
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Eliminar cuenta"
         Top             =   180
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Index           =   4
         Left            =   3300
         Picture         =   "frmBalances2.frx":1634
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Agregar cuenta"
         Top             =   180
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Index           =   3
         Left            =   1740
         Picture         =   "frmBalances2.frx":1BBE
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Eliminar nodo"
         Top             =   180
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Index           =   2
         Left            =   1290
         Picture         =   "frmBalances2.frx":2148
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Modificar nodo"
         Top             =   180
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Index           =   1
         Left            =   810
         Picture         =   "frmBalances2.frx":26D2
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Agregar nodo hijo"
         Top             =   180
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Index           =   0
         Left            =   330
         Picture         =   "frmBalances2.frx":2C5C
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Agregar nodo"
         Top             =   180
         Visible         =   0   'False
         Width           =   375
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6675
      Left            =   120
      TabIndex        =   0
      Top             =   930
      Width           =   11520
      _ExtentX        =   20320
      _ExtentY        =   11774
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "General"
      TabPicture(0)   =   "frmBalances2.frx":31E6
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label2(0)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label2(1)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label2(2)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label3(0)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label3(1)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Label3(2)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Label3(3)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "Label3(4)"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "Label3(5)"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "Label3(6)"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "txtBal(0)"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "txtBal(1)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "txtBal(2)"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "Check1"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "Check2"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "cmdGuardar"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "Check3"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).ControlCount=   17
      TabCaption(1)   =   "Activo"
      TabPicture(1)   =   "frmBalances2.frx":3202
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Pasivo"
      TabPicture(2)   =   "frmBalances2.frx":321E
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      TabCaption(3)   =   "Resumen Plan Contable"
      TabPicture(3)   =   "frmBalances2.frx":323A
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "TreeView2"
      Tab(3).ControlCount=   1
      Begin MSComctlLib.TreeView TreeView2 
         Height          =   5895
         Left            =   -74700
         TabIndex        =   34
         Top             =   540
         Width           =   10935
         _ExtentX        =   19288
         _ExtentY        =   10398
         _Version        =   393217
         Indentation     =   1411
         Style           =   7
         FullRowSelect   =   -1  'True
         ImageList       =   "ImageList1"
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Predeterminado"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5880
         TabIndex        =   32
         Top             =   4740
         Width           =   2355
      End
      Begin VB.CommandButton cmdGuardar 
         Caption         =   "Guardar cambios"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7050
         TabIndex        =   5
         Top             =   5550
         Width           =   2535
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Balance de p�rdidas y ganancias"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5910
         TabIndex        =   4
         Top             =   1620
         Width           =   4125
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Aparecen descripci�n cuentas"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1890
         TabIndex        =   3
         Top             =   4740
         Width           =   3615
      End
      Begin VB.TextBox txtBal 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Index           =   2
         Left            =   3120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   2
         Text            =   "frmBalances2.frx":3256
         Top             =   2700
         Width           =   6525
      End
      Begin VB.TextBox txtBal 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Index           =   1
         Left            =   3120
         TabIndex        =   1
         Text            =   "Text3"
         Top             =   2160
         Width           =   6525
      End
      Begin VB.TextBox txtBal 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Index           =   0
         Left            =   3120
         Locked          =   -1  'True
         TabIndex        =   21
         Text            =   "Text3"
         Top             =   1620
         Width           =   1215
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   6
         Left            =   4200
         TabIndex        =   31
         Top             =   660
         Width           =   435
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "C"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   5
         Left            =   3590
         TabIndex        =   30
         Top             =   660
         Width           =   435
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "N"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   4
         Left            =   2980
         TabIndex        =   29
         Top             =   660
         Width           =   435
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "A"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   3
         Left            =   2370
         TabIndex        =   28
         Top             =   660
         Width           =   435
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "L"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   2
         Left            =   1760
         TabIndex        =   27
         Top             =   660
         Width           =   435
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "A"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   1
         Left            =   1150
         TabIndex        =   26
         Top             =   660
         Width           =   435
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "B"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   0
         Left            =   540
         TabIndex        =   25
         Top             =   660
         Width           =   435
      End
      Begin VB.Label Label2 
         Caption         =   "Descripci�n"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   2
         Left            =   1830
         TabIndex        =   24
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "Nombre"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   1
         Left            =   1830
         TabIndex        =   23
         Top             =   2220
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "N�mero"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   1830
         TabIndex        =   22
         Top             =   1680
         Width           =   735
      End
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   7800
      Top             =   6360
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":325E
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":94F8
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":9F0A
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":A224
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":AC36
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":B1D0
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":10842
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmBalances2.frx":15EB4
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H0070532E&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   5895
      Left            =   540
      Top             =   1080
      Width           =   1995
   End
   Begin VB.Menu menuListview 
      Caption         =   "List"
      Visible         =   0   'False
      Begin VB.Menu mnInsertarNuevaCuenta 
         Caption         =   "Insertar cuenta"
         Begin VB.Menu mnInsertarSaldo 
            Caption         =   "Saldo"
         End
         Begin VB.Menu mnInsertarHaber 
            Caption         =   "Haber"
         End
         Begin VB.Menu mnInsertDebe 
            Caption         =   "Debe"
         End
      End
      Begin VB.Menu mnEliminarCuena 
         Caption         =   "Eliminar"
      End
   End
   Begin VB.Menu menuTree 
      Caption         =   "Tree"
      Visible         =   0   'False
      Begin VB.Menu mnNuevo 
         Caption         =   "Nuevo"
         Begin VB.Menu mnNuevoGrupo 
            Caption         =   "Elto. del grupo"
         End
         Begin VB.Menu mnInsertarSubGrupo 
            Caption         =   "Sub grupo"
         End
      End
      Begin VB.Menu mnEliminarGrupo 
         Caption         =   "Eliminar"
      End
      Begin VB.Menu mnDescLin 
         Caption         =   "Descripcion linea"
      End
      Begin VB.Menu mnbarra7 
         Caption         =   "-"
      End
      Begin VB.Menu mnModificarTexto 
         Caption         =   "Modificar texto asociado"
      End
      Begin VB.Menu mnbarra3 
         Caption         =   "-"
      End
      Begin VB.Menu mnArriba 
         Caption         =   "Hacia arriba"
      End
      Begin VB.Menu mnAbajo 
         Caption         =   "Hacia abajo"
      End
   End
End
Attribute VB_Name = "frmBalances"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public numBalance As Integer

Dim PrimeraVez As Boolean
Dim Sql As String
Dim Rs As Recordset
Dim NodoArbol As Node
Dim i As Integer
Dim Devolucion As String
Dim Clave As String



Private Sub OpcionesTAB()
Dim B As Boolean

    Me.frameActivo.Visible = Me.SSTab1.Tab = 1 Or Me.SSTab1.Tab = 2
    FrameBotones.Visible = frameActivo.Visible
    'Sin NumRegElim=0 entonces el balance ya existe
    'Si no es el numero k habra k asignarle
    B = (NumRegElim = 0)
    SSTab1.TabVisible(1) = B
    If B Then
        If Check2.Value = 1 Then
            'Si es perdidas i ganacias entonces , en el nuevo Plan solo hay una columna
            If vParam.NuevoPlanContable Then
                SSTab1.TabVisible(2) = False
            Else
                SSTab1.TabVisible(2) = True
            End If
        Else
            'Si es balance situacion
            SSTab1.TabVisible(2) = True
        End If
    Else
        SSTab1.TabVisible(2) = False
    End If
End Sub


Private Sub Check2_Click()
    PonerTextosTab
End Sub

Private Sub cmdGuardar_Click()
On Error GoTo EGuarda

    'If Val(txtBal(0).Text) > 50 Then
    '    MsgBox "No se puede guardar", vbExclamation
    '    Exit Sub
    'End If

    txtBal(1).Text = Trim(txtBal(1).Text)
    txtBal(2).Text = Trim(txtBal(2).Text)
    If txtBal(1).Text = "" Then
        MsgBox "Nombre del balance no puede estar en blanco"
        Exit Sub
    End If
    
    If NumRegElim = 0 Then
    
        'Si esta como predeterminado
        
        If Check3.Value Then
            Sql = "UPDATE balances set predeterminado=0 where perdidas =" & Abs(CInt(Check2.Value))
            Conn.Execute Sql
        End If
        'Es modificar
        Sql = "UPDATE balances SET nombalan='" & txtBal(1).Text & "', Descripcion = "
        If txtBal(2).Text = "" Then
            Clave = "NULL"
        Else
            Clave = "'" & txtBal(2).Text & "'"
        End If
        Sql = Sql & Clave & ", Aparece =" & Abs(CInt(check1.Value))
        Sql = Sql & ", perdidas =" & Abs(CInt(Check2.Value))
        Sql = Sql & ", predeterminado =" & Abs(CInt(Check3.Value))
        Sql = Sql & " WHERE numbalan =" & numBalance
        
        
        
    Else
        'Si no ha marcado predeterminado, y no existe ningun balance del tipo PREDETERMINADO, lo pongo a true
        If Check3.Value = 0 Then
            If Not ExistePredeterminado Then Check3.Value = 1
        End If
        'Es nuevo
        Sql = "INSERT INTO balances (numbalan, nombalan, Descripcion, Aparece, perdidas, Predeterminado) VALUES ("
        Sql = Sql & NumRegElim & ",'" & txtBal(1).Text & "',"
        If txtBal(2).Text = "" Then
            Clave = "NULL"
        Else
            Clave = "'" & txtBal(2).Text & "'"
        End If
        Sql = Sql & Clave & "," & Abs(CInt(check1.Value)) & ","
        Sql = Sql & Abs(CInt(Check2.Value)) & "," & Abs(CInt(Check3.Value)) & ")"
    End If
    Conn.Execute Sql
    
    
    'AHora ponemos si se ha seleccionado como predetrminado, el resto lo ponemos como NO predeterminado
    If Check3.Value Then
        'Ha puesto perdeterminado. Entonces vamos a poner todos los demas
        'Balances del tipo de este
        Sql = "UPDATE balances SET predeterminado=0  WHERE Perdidas = " & Abs(CInt(Check2.Value))
        Sql = Sql & " AND numbalan <> "
        If NumRegElim > 0 Then
            Sql = Sql & NumRegElim
        Else
            Sql = Sql & numBalance
        End If
        Conn.Execute Sql
    End If
    
    
    'Si llega aqui es k ha sido con exito
    'entonces
    If NumRegElim > 0 Then
        numBalance = NumRegElim
        NumRegElim = 0
        OpcionesTAB
        Me.Refresh
    End If
    Exit Sub
EGuarda:
    MuestraError Err.Number, "Guardar encabezado balance"
End Sub

Private Sub cmdUpDown_Click(Index As Integer)
Dim LetraActivo As String
Dim N As Node
    
    If TreeView1.Nodes.Count = 0 Then Exit Sub
    If TreeView1.SelectedItem Is Nothing Then Exit Sub
    'Subir
    If Index = 0 Then
        'El primer hijo
        If TreeView1.SelectedItem.Previous Is Nothing Then
            MsgBox "Ya es el primero", vbExclamation
            Exit Sub
        End If
    Else
        
        If TreeView1.SelectedItem.Next Is Nothing Then
            MsgBox "Ya es el ultimo", vbExclamation
            Exit Sub
        End If
    End If

    Set Rs = New ADODB.Recordset
    
    
    LetraActivo = SSTab1.Tag
    
    
    
    
    'CAMBIAR ORDEN
    '------------------------------------------
    
    Sql = "SELECT * from balances_texto WHERE numbalan= " & numBalance
    Sql = Sql & " AND Pasivo = '" & LetraActivo & "' AND codigo = "
    Clave = ""
    If Index = 0 Then
        'Anterior
         Clave = Mid(TreeView1.SelectedItem.Previous.Key, 2)
    Else
         Clave = Mid(TreeView1.SelectedItem.Next.Key, 2)
    End If
    Sql = Sql & Clave
    Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    If Rs.EOF Then
        MsgBox "Error leyendo NODO: " & Clave, vbExclamation
        Rs.Close
        Exit Sub
    End If
    
    NumRegElim = Rs!Orden  'TEngo el nodo destino
    Rs.Close
    
    
    
    Sql = "SELECT * from balances_texto WHERE numbalan= " & numBalance
    Sql = Sql & " AND Pasivo = '" & LetraActivo & "' AND codigo = "
    Sql = Sql & Mid(TreeView1.SelectedItem.Key, 2)
    Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    If Rs.EOF Then
        MsgBox "Error leyendo NODO: " & TreeView1.SelectedItem.Key, vbExclamation
        Rs.Close
        Exit Sub
    End If
    
    i = Rs!Orden   'En I tengo el nodo que se mueve
    Rs.Close
    
    If i = NumRegElim Then
        MsgBox "TIENEN EL MISMO ORDEN. Consulte a soporte tecnico", vbExclamation
    End If
    
    'Updateamos los nodos
    Sql = "UPDATE balances_texto SeT orden = " & i
    Sql = Sql & " Where NumBalan = " & numBalance
    Sql = Sql & " AND Pasivo = '" & LetraActivo & "' AND codigo = "
    Clave = ""
    If Index = 0 Then
        'Anterior
         Clave = Mid(TreeView1.SelectedItem.Previous.Key, 2)
    Else
         Clave = Mid(TreeView1.SelectedItem.Next.Key, 2)
    End If
    Sql = Sql & Clave
    Conn.Execute Sql
    
    
    Sql = "UPDATE balances_texto SeT orden = " & NumRegElim
    Sql = Sql & " Where NumBalan = " & numBalance
    Sql = Sql & " AND Pasivo = '" & LetraActivo & "' AND codigo = "
    Sql = Sql & Mid(TreeView1.SelectedItem.Key, 2)
    Conn.Execute Sql
    
    
    'Recargamos el nodo
    CadenaDesdeOtroForm = TreeView1.SelectedItem.Key
    
    If TreeView1.SelectedItem.Parent Is Nothing Then
        'Cargamos otravez todo
        CargaTree LetraActivo

        
        
    Else
        NumRegElim = Mid(TreeView1.SelectedItem.Parent.Key, 2)
        Set NodoArbol = TreeView1.SelectedItem.FirstSibling
        While Not (NodoArbol Is Nothing)
                
            Set N = NodoArbol.Next
            TreeView1.Nodes.Remove NodoArbol.Index
            Set NodoArbol = N
            
        Wend
                'En numregelim tenemos el codigo del padre de los que estamos moviendo
        Clave = NumRegElim & "|"
        Sql = "SELECT * from balances_texto WHERE numbalan= " & numBalance
        Sql = Sql & " AND Pasivo = '" & LetraActivo & "' AND Padre "
        While Clave <> ""
            i = InStr(1, Clave, "|")
            If i = 0 Then Clave = ""
            If i > 0 Then
                Devolucion = Mid(Clave, 1, i - 1)
                Clave = Mid(Clave, i + 1)
                Rs.Open Sql & " = " & Devolucion & " ORDER BY orden", Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
                Devolucion = LetraActivo & Devolucion
                While Not Rs.EOF
                    Clave = Clave & Rs!Codigo & "|"
                    Set N = Me.TreeView1.Nodes.Add(Devolucion, tvwChild, LetraActivo & Rs!Codigo, Rs!deslinea)
                    If Rs!Tipo = 1 Then
                         N.Tag = DBLet(Rs!Formula) & "||"
                         N.Image = 3
                    Else
                         N.Tag = DBLet(Rs!texlinea) & "|" & DBLet(Rs!LibroCD) & "|"
                         N.Image = 2
                    End If
                    Rs.MoveNext
                Wend
                Rs.Close
            End If
            'Si llevamos muchos nodos refrescamos
            i = TreeView1.Nodes.Count Mod 25
            If i = 0 Then TreeView1.Refresh
        Wend
    
    End If
    
    
    'Dejamos seleccionado el que estaba
    For i = 1 To TreeView1.Nodes.Count
        If TreeView1.Nodes(i).Key = CadenaDesdeOtroForm Then
            Set TreeView1.SelectedItem = TreeView1.Nodes(i)
            TreeView1.SelectedItem.EnsureVisible
            TreeView1.SelectedItem.Expanded = True
            Exit For
        End If
    Next i
    CargaListview
    CadenaDesdeOtroForm = ""
    NumRegElim = 0
    
End Sub

Private Sub Command1_Click(Index As Integer)
Dim Tipo As String

    


    Screen.MousePointer = vbHourglass
    Select Case Index
    Case 0
        'Nuevo nodo desde el nivel del nodo seleccionado
        NuevoNodoNivel
    Case 1
        'Nodo hijo al nivel seleccionado
        'Nuevo nodo SUBNIVEL
        NuevoNodSub
    Case 2
        'Modificar valores del nodo
        ModificaNodo
    Case 3
        'Eliminar el nodo
        EliminarNODO
        
    Case 4, 6
        InsertarModificarCuenta (Index = 4)
    Case 5
        EliminarCta
    End Select
    Screen.MousePointer = vbDefault
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub


Private Sub Form_Activate()
    If PrimeraVez Then
        PrimeraVez = False
        Me.Refresh
        'Cargamos el arbol de cuentas
        Screen.MousePointer = vbHourglass
        CargaPLAN
    End If
    Screen.MousePointer = vbDefault
End Sub

Private Sub Form_Load()

    Me.Icon = frmppal.Icon

    ' Botonera Principal
    With Me.Toolbar1
        .HotImageList = frmppal.imgListComun_OM
        .DisabledImageList = frmppal.imgListComun_BN
        .ImageList = frmppal.ImgListComun
        .Buttons(1).Image = 3
        .Buttons(2).Image = 35
        .Buttons(3).Image = 4
        .Buttons(4).Image = 5
        .Buttons(6).Image = 50
        .Buttons(7).Image = 49
        .Buttons(9).Image = 52
        .Buttons(10).Image = 51
        .Buttons(11).Image = 53
    End With




    Screen.MousePointer = vbHourglass
    PrimeraVez = True
    Me.SSTab1.Tab = 0
    Limpiar Me
    PonerDatosBalance
    OpcionesTAB
    
    'Alguna cosilla mas
    'Si es nuevo plan contable, las cuentas entran todas con saldo, con lo cual
    'el boton de modificar cuentas no estara. Estara a�adir y eliminar
    Command1(6).Visible = Not vParam.NuevoPlanContable
    Toolbar1.Buttons(10).Enabled = Not vParam.NuevoPlanContable
    Toolbar1.Buttons(10).Visible = Not vParam.NuevoPlanContable
    
End Sub




Private Sub ListView1_DblClick()
    Command1_Click 6
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
Dim LEtra As String

    OpcionesTAB
    Select Case SSTab1.Tab
    Case 1
        LEtra = "A"
    Case 2
        LEtra = "B"
    Case Else
        LEtra = ""
    End Select
    SSTab1.Tag = LEtra
    If LEtra <> "" Then
        If PreviousTab <> SSTab1.Tab Then CargaTree LEtra
    End If
    
End Sub


Private Sub CargaTree(LetraActivo As String)
Dim Nod As Node

    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Sql = "SELECT * from balances_texto WHERE numbalan= " & numBalance
    Sql = Sql & " AND Pasivo = '" & LetraActivo & "' AND Padre "
    TreeView1.Nodes.Clear
    Set Rs = New ADODB.Recordset
    Rs.Open Sql & " is null ORDER BY Orden", Conn, adOpenKeyset, adLockPessimistic, adCmdText
    If Rs.EOF Then
        Rs.Close
        GoTo cerrar
    End If
    
    'Las raices
    
    Clave = ""
    While Not Rs.EOF
        Clave = Clave & Rs!Codigo & "|"
        Set Nod = Me.TreeView1.Nodes.Add(, , LetraActivo & Rs!Codigo, Rs!deslinea)
        Nod.Image = 1
        Nod.Tag = DBLet(Rs!texlinea) & "|" & DBLet(Rs!LibroCD) & "|"
        Rs.MoveNext
    Wend
    Rs.Close
    
    
    While Clave <> ""
        i = InStr(1, Clave, "|")
        If i = 0 Then Clave = ""
        If i > 0 Then
            Devolucion = Mid(Clave, 1, i - 1)
            Clave = Mid(Clave, i + 1)
            Rs.Open Sql & " = " & Devolucion & " ORDER BY orden", Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
            Devolucion = LetraActivo & Devolucion
            While Not Rs.EOF
                Clave = Clave & Rs!Codigo & "|"
                Set Nod = Me.TreeView1.Nodes.Add(Devolucion, tvwChild, LetraActivo & Rs!Codigo, Rs!deslinea)
                If Rs!Tipo = 1 Then
                     Nod.Tag = DBLet(Rs!Formula) & "||"
                     Nod.Image = 3
                Else
                     Nod.Tag = DBLet(Rs!texlinea) & "|" & DBLet(Rs!LibroCD) & "|"
                     Nod.Image = 2
                End If
                Rs.MoveNext
            Wend
            Rs.Close
        End If
        'Si llevamos muchos nodos refrescamos
        i = TreeView1.Nodes.Count Mod 25
        If i = 0 Then TreeView1.Refresh
    Wend
    
    
    
    If Not (Nod Is Nothing) Then
        Nod.EnsureVisible
    End If
    CargaListview
cerrar:
    If Err.Number Then MuestraError Err.Number
    Set Rs = Nothing
End Sub



Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
                Command1_Click (0)
        Case 2
                Command1_Click (1)
        Case 3
                Command1_Click (2)
        Case 4
                Command1_Click (3)
        Case 6
                cmdUpDown_Click (0)
        Case 7
                cmdUpDown_Click (1)
        Case 9
                Command1_Click (4)
        Case 10
                Command1_Click (6)
        Case 11
                Command1_Click (5)
        Case Else
    End Select
End Sub

Private Sub TreeView1_DblClick()
    If TreeView1.SelectedItem Is Nothing Then Exit Sub
    If TreeView1.SelectedItem.Children > 0 Then
       ' NO hacemos nada
    Else
        ModificaNodo
    End If
End Sub

Private Sub TreeView1_NodeClick(ByVal Node As MSComctlLib.Node)
    Text1.Text = Node.Key
    Text2.Text = RecuperaValor(Node.Tag, 1)
    Text3.Text = RecuperaValor(Node.Tag, 2)
    CargaListview
End Sub

Private Sub NuevoNodoNivel()
Dim Nod As Node
Dim Sig As Integer
Dim Actual As String

    
    If TreeView1.SelectedItem Is Nothing Then
        Clave = ""
    Else
        Actual = Mid(TreeView1.SelectedItem.Key, 2)
        If TreeView1.SelectedItem.Parent Is Nothing Then
            Clave = ""
        Else
            Clave = Mid(TreeView1.SelectedItem.Parent.Key, 2)
        End If
    End If
    Sig = DevuelveSiguiente(Clave)  'Obtiene el siguiente y lo guarda en I

    'Ahora insertamos el nodo
    If Clave = "" Then
        Set Nod = TreeView1.Nodes.Add(, , SSTab1.Tag & Sig, "Nodo nuevo")
        Nod.Image = 1
    Else
        Set Nod = TreeView1.Nodes.Add(SSTab1.Tag & Actual, tvwLast, SSTab1.Tag & Sig, "Nodo nuevo")
        Nod.Image = 2
    End If
    Nod.EnsureVisible
    Set TreeView1.SelectedItem = Nod
    'Numbal,pasivo,codigo,padre,orden
    Clave = numBalance & "|" & SSTab1.Tag & "|" & Sig & "|" & Clave & "|" & i & "|"
    InsertarNodo Nod, False
    Me.Refresh
End Sub



Private Function DevuelveSiguiente(Padre As String) As Integer
    Set Rs = New ADODB.Recordset
    Sql = ") From balances_texto where numbalan=" & numBalance & " AND pasivo = '"
    If SSTab1.Tab = 1 Then
        Sql = Sql & "A'"
    Else
        Sql = Sql & "B'"
    End If
    Rs.Open "Select max(codigo" & Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    i = 0
    If Not Rs.EOF Then
        i = DBLet(Rs.Fields(0), "N")
    End If
    Rs.Close
    DevuelveSiguiente = i + 1
    
    'Ahora comprobamos dentro del bloque k orden tiene
    If Padre <> "" Then
        Sql = Sql & " AND Padre =" & Padre
    Else
        Sql = Sql & " AND Padre is null"
    End If
    Rs.Open "Select max(orden" & Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    i = 0
    If Not Rs.EOF Then
        i = DBLet(Rs.Fields(0), "N")
    End If
    i = i + 1
    Set Rs = Nothing
    
    
    
End Function


Private Sub NuevoNodSub()
Dim Nod As Node
Dim Sig As Integer
Dim Actual As String

    If TreeView1.SelectedItem Is Nothing Then
        MsgBox "Seleccione un nodo donde insertar el subnivel", vbExclamation
        Exit Sub
    End If
    
    Clave = Mid(TreeView1.SelectedItem.Key, 2)
    Sig = DevuelveSiguiente(Clave)  'Obtiene el siguiente y lo guarda en I, Y el orden
    
    Set Nod = TreeView1.Nodes.Add(SSTab1.Tag & Clave, tvwChild, SSTab1.Tag & Sig, "Nodo nuevo")
    Nod.Image = 2
    Nod.EnsureVisible
    Set TreeView1.SelectedItem = Nod
    
    Clave = numBalance & "|" & SSTab1.Tag & "|" & Sig & "|" & Clave & "|" & i & "|"
    InsertarNodo Nod, False
    Me.Refresh
End Sub


Private Sub InsertarNodo(ByRef Nod As Node, Modificar As Boolean)
    CadenaDesdeOtroForm = ""
    If Not Modificar Then Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    ListView1.ListItems.Clear
    frmMensajes.Parametros = Clave
    frmMensajes.Opcion = 7 + Abs(CInt(Modificar))
    frmMensajes.Show vbModal
    If CadenaDesdeOtroForm = "" Then
        'Ha cancelado
        If Not Modificar Then TreeView1.Nodes.Remove Nod.Key
        If Not TreeView1.SelectedItem Is Nothing Then TreeView1_NodeClick TreeView1.SelectedItem
    Else
        'Ha insertado
        'Devuelve el texto, el texto auxiliar, y si es formula o no
        Nod.Text = RecuperaValor(CadenaDesdeOtroForm, 1)
        Nod.Tag = RecuperaValor(CadenaDesdeOtroForm, 2) & "|" & RecuperaValor(CadenaDesdeOtroForm, 4) & "|"
        Text2.Text = RecuperaValor(Nod.Tag, 1)
        Text3.Text = RecuperaValor(Nod.Tag, 2)
        
        Clave = RecuperaValor(CadenaDesdeOtroForm, 3) 'Si es formula
        If Clave = "1" Then
            i = 3  'Icono suma
        Else
            'Si es padre habra k ver k icono le corresponde
            If Nod.Parent Is Nothing Then
                i = 1   'Icono raiz
            Else
                i = 2   'Icono noraml
            End If
        End If
        Nod.Image = i
    End If
End Sub
    

Private Sub EliminarNODO()
    If TreeView1.SelectedItem Is Nothing Then
        MsgBox "Seleccione un nodo para eliminar", vbExclamation
        Exit Sub
    End If
    
    
    If TreeView1.SelectedItem.Children > 0 Then
        MsgBox "Debe elmininar primero los nodos hijo", vbExclamation
        Exit Sub
    End If
    
    'Deberiamos comprobar si el nodo es parte de una formula
    
    
    'preguntamos
    Sql = "Seguro que desea eliminar el nodo: " & TreeView1.SelectedItem.Text & "?"
    If MsgBox(Sql, vbQuestion + vbYesNoCancel) <> vbYes Then Exit Sub
    
    
    
    'Comun para borrar
    Clave = " numbalan = " & numBalance & " AND Pasivo ='" & SSTab1.Tag & "' AND Codigo = " & Mid(TreeView1.SelectedItem.Key, 2)
    Sql = "Delete from balances_ctas where " & Clave
    Conn.Execute Sql
    Sql = "Delete from balances_texto where " & Clave
    Conn.Execute Sql
    
    'Updateamos los ordenes
    TreeView1.Nodes.Remove TreeView1.SelectedItem.Index
    
End Sub




Private Sub ModificaNodo()

    If TreeView1.SelectedItem Is Nothing Then
        MsgBox "Seleccione un nodo para modificar", vbExclamation
        Exit Sub
    End If

    Set Rs = New ADODB.Recordset
    Clave = " numbalan = " & numBalance & " AND Pasivo ='" & SSTab1.Tag & "' AND Codigo = " & Mid(TreeView1.SelectedItem.Key, 2)
    Sql = "Select * from balances_texto where " & Clave
    Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    If Rs.EOF Then
        MsgBox "Se ha generado un error leyendo el codigo : " & Clave, vbExclamation
        Rs.Close
        Exit Sub
    End If
    
    Clave = ""
    For i = 0 To Rs.Fields.Count - 1
        Clave = Clave & DBLet(Rs.Fields(i)) & "|"
    Next i
    Rs.Close
    Set Rs = Nothing
    
    'Ya tengo todos los valores aqui, en Clave
    'Si tiene cuentas no va a poder generar formula
    InsertarNodo TreeView1.SelectedItem, True
               
End Sub



Private Sub InsertarModificarCuenta(Insertar As Boolean)
Dim Resta As Byte
    On Error GoTo EInsertarEliminarCuenta
    
    
    If TreeView1.SelectedItem Is Nothing Then
        MsgBox "Seleccione un nodo donde insertar la cuenta", vbExclamation
        Exit Sub
    End If
    
    'Si el nodo es de formula, NO, no puede inserart cuentas
    If TreeView1.SelectedItem.Image = 3 Then
        MsgBox "El nodo es un campo de formula.", vbExclamation
        Exit Sub
    End If
    
    If Not Insertar Then
        If ListView1.SelectedItem Is Nothing Then
            MsgBox "Seleccione una cuenta para modificar", vbExclamation
            Exit Sub
        End If
    End If
    
    
    CadenaDesdeOtroForm = ""
    Sql = TreeView1.SelectedItem.Text & "|"
    If Insertar Then
        i = 9
    Else
        Select Case ListView1.SelectedItem.Icon
        Case 5
            i = 1  'Debe en el siguiente form
        Case 6
            i = 2   'Haber
        Case Else
            i = 0   'Saldo
        End Select
                
        'Cuenta , debe haber
        Sql = Sql & ListView1.SelectedItem.Text & "|" & i & "|"
        
        
        'Si es resta
        Sql = Sql & ListView1.SelectedItem.Tag & "|"
        
        'Para la opcion del formulario
        i = 10
    End If
    frmMensajes.Opcion = i
    frmMensajes.Parametros = Sql
    frmMensajes.Show vbModal
    If CadenaDesdeOtroForm <> "" Then
        Devolucion = RecuperaValor(CadenaDesdeOtroForm, 1)
        Clave = RecuperaValor(CadenaDesdeOtroForm, 2)
        Sql = RecuperaValor(CadenaDesdeOtroForm, 3)
        Resta = CByte(Sql)
        If Insertar Then
            If Not CompruebaCuenta(Devolucion, Clave, Sql = "1") Then Exit Sub
        End If
        InsertaModiCtaSQL Clave, Insertar, Resta
        CargaListview
    End If
    
    
    Exit Sub
EInsertarEliminarCuenta:
    MuestraError Err.Number, "Insertar eliminar cuenta"
End Sub


Private Sub InsertaModiCtaSQL(ByRef Tipo As String, Insertar As Boolean, Resta As Byte)
    On Error Resume Next
    
    If Insertar Then
        Sql = "INSERT INTO balances_ctas (NumBalan, Pasivo, codigo, codmacta, tipsaldo,Resta ) VALUES ("
        Sql = Sql & numBalance & ",'" & SSTab1.Tag & "'," & Mid(TreeView1.SelectedItem.Key, 2)
        Sql = Sql & ",'" & Devolucion & "','" & Tipo & "'," & Resta & ")"
        Conn.Execute Sql
        'Updateamos el registro para indicar k tiene cuentas
        Sql = "UPDATE balances_texto Set TienenCtas=1 WHERE numbalan=" & numBalance & " AND Pasivo ='" & SSTab1.Tag
        Sql = Sql & "' AND codigo =" & Mid(TreeView1.SelectedItem.Key, 2)
        Conn.Execute Sql
        
    Else
        'MODIFICAR
        Sql = "UPDATE balances_ctas SET tipsaldo = '" & Tipo & "' ,Resta = " & Resta
        Sql = Sql & " WHERE numbalan ="
        Sql = Sql & numBalance & " AND pasivo = '" & SSTab1.Tag & "' AND codigo = " & Mid(TreeView1.SelectedItem.Key, 2)
        Sql = Sql & " AND codmacta = '" & Devolucion & "'"
        Conn.Execute Sql
    End If
    If Err.Number <> 0 Then
        MuestraError Err.Number, "Insertando cuenta"
    End If
End Sub


'LA cuenta viene empipamada
Private Function CompruebaCuenta(ByRef Cta As String, LEtra As String, Resta As Boolean) As Boolean
Dim C1 As String

    Sql = "Select * from balances_ctas WHERE numbalan= " & numBalance
    Sql = Sql & " AND codmacta='" & Cta & "'"
    
    Set Rs = New ADODB.Recordset
    Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    Sql = ""
    While Not Rs.EOF
    
    
        If Rs!Resta = Abs(Resta) Then
        
            If LEtra = Rs!TipSaldo Then
                C1 = "pasivo = '" & Rs!Pasivo & "' AND numbalan = " & numBalance & " AND codigo "
                C1 = DevuelveDesdeBD("deslinea", "balances_texto", C1, Rs!Codigo)
                C1 = Rs!Pasivo & " - " & Rs!Codigo & " - " & Rs!TipSaldo & ": " & C1
                Sql = Sql & C1 & vbCrLf
            End If
            
            
        Else
            
        End If
        Rs.MoveNext
    Wend
    Rs.Close
    Set Rs = Nothing
    If Sql <> "" Then
        Sql = "La cuenta ya est� en los registros: " & vbCrLf & Sql & vbCrLf & "Desea continuar igualmente?"
        If MsgBox(Sql, vbQuestion + vbYesNoCancel) = vbYes Then
            CompruebaCuenta = True
        Else
            CompruebaCuenta = False
        End If
    Else
        CompruebaCuenta = True
    End If
        
End Function



Private Sub CargaListview()
Dim ItmX As ListItem
    ListView1.ListItems.Clear
    If TreeView1.SelectedItem Is Nothing Then Exit Sub

'Comun

    Sql = "Select * from balances_ctas WHERE numbalan= " & numBalance
    Sql = Sql & " AND Pasivo = '" & Me.SSTab1.Tag & "' AND codigo = " & Mid(TreeView1.SelectedItem.Key, 2)
    Sql = Sql & " ORDER BY codmacta"
    Set Rs = New ADODB.Recordset
    Rs.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
    While Not Rs.EOF
        Set ItmX = ListView1.ListItems.Add(, , Rs!codmacta)   ' Autor.
        Select Case Rs!TipSaldo
        Case "D"
             ItmX.Icon = 5
        Case "H"
             ItmX.Icon = 6
        Case Else
             ItmX.Icon = 7
        End Select
        ItmX.Tag = Abs(Rs!Resta)
        If ItmX.Tag = 1 Then ItmX.ForeColor = vbRed
        Rs.MoveNext
    Wend
    Rs.Close
    Set Rs = Nothing
    
End Sub



Private Sub PonerDatosBalance()
    
    If NumRegElim = 0 Then
        'El balance ya existe
        'Ponemos los datos
        Set Rs = New ADODB.Recordset
        Rs.Open "Select * from balances where numbalan=" & numBalance, Conn, adOpenDynamic, adLockPessimistic, adCmdText
        If Rs.EOF Then
            MsgBox "Error leyendo los datos del balance: " & numBalance, vbExclamation
        Else
            txtBal(1).Text = Rs!NomBalan
            txtBal(2).Text = DBLet(Rs!Descripcion)
            check1.Value = Rs!Aparece
            Check2.Value = Rs!perdidas
            Check3.Value = Rs!predeterminado
            Check3.Tag = Rs!predeterminado
            txtBal(0).Text = numBalance
        End If
        Rs.Close
        Set Rs = Nothing
        Caption = "Configurador de Balances  - " & txtBal(1).Text
        
        
        'Los text
        
        
    Else
        'Balance nuevo
        txtBal(0).Text = NumRegElim
        txtBal(1).Text = ""
        txtBal(2).Text = ""
        Caption = Caption & "     (NUEVO)"
        Check3.Value = 0
    End If
    PonerTextosTab
End Sub

Private Sub PonerTextosTab()
    If Check2.Value Then
        If vParam.NuevoPlanContable Then
            Me.SSTab1.TabCaption(1) = "P y G"
        Else
            Me.SSTab1.TabCaption(1) = "Debe"
            Me.SSTab1.TabCaption(2) = "Haber"
        End If
    Else
        If vParam.NuevoPlanContable Then
            Me.SSTab1.TabCaption(2) = "Patrimonio neto y pasivo"
        Else
            Me.SSTab1.TabCaption(2) = "Pasivo"
        End If
        Me.SSTab1.TabCaption(1) = "Activo"
    End If
End Sub

Private Sub EliminarCta()
    If TreeView1.SelectedItem Is Nothing Then Exit Sub
    If ListView1.SelectedItem Is Nothing Then Exit Sub
    
    Sql = "Desea eliminar de la linea la cuenta: " & ListView1.SelectedItem.Text & " ?"
    If MsgBox(Sql, vbQuestion + vbYesNoCancel) <> vbYes Then Exit Sub
    Clave = " numbalan = " & numBalance & " AND Pasivo ='" & SSTab1.Tag & "' AND Codigo = " & Mid(TreeView1.SelectedItem.Key, 2)
    Sql = "DELETE FROM balances_ctas WHERE codmacta ='" & ListView1.SelectedItem.Text & "' AND "
    Sql = Sql & Clave
    Conn.Execute Sql
    
    ListView1.ListItems.Remove ListView1.SelectedItem.Index
    'Si no kedan mas cuentas
    If ListView1.ListItems.Count = 0 Then
        'Updateamos el registro para indicar k tiene cuentas
        Sql = "UPDATE balances_texto Set TienenCtas=0 WHERE numbalan=" & numBalance & " AND Pasivo = '" & SSTab1.Tag
        Sql = Sql & "' AND codigo =" & Mid(TreeView1.SelectedItem.Key, 2)
        Conn.Execute Sql
    End If
End Sub
    



Private Function ExistePredeterminado() As Boolean
    
On Error GoTo EExiste
    Set Rs = New ADODB.Recordset
    ExistePredeterminado = False
    Sql = "Select * from balances where perdidas = " & Abs(Check2.Value)
    Sql = Sql & " AND predeterminado = 1"
    Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    If Not Rs.EOF Then ExistePredeterminado = True
    Rs.Close
    
EExiste:
    If Err.Number <> 0 Then Err.Clear
    Set Rs = Nothing
End Function

Private Sub CargaPLAN()
Dim J As Integer
Dim N As Integer
    
    On Error GoTo ECargaPlan
    Set Rs = New ADODB.Recordset
    For i = 1 To vEmpresa.numnivel - 1
        J = DigitosNivel(i)
        Devolucion = Mid("__________", 1, J)
        Sql = "Select codmacta,nommacta from Cuentas where codmacta like '" & Devolucion & "'"
        Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
        If i = vEmpresa.numnivel - 1 Then
            N = 3
        Else
            N = 2
        End If
        While Not Rs.EOF
            Clave = Rs!codmacta & " - " & Rs!Nommacta
            If J > 1 Then
                N = DigitosNivel(i - 1)
                Devolucion = "C" & Mid(Rs!codmacta, 1, N)
                Set NodoArbol = Me.TreeView2.Nodes.Add(Devolucion, tvwChild, "C" & Rs!codmacta, Clave)
                If J < 4 Then
                    NodoArbol.Image = 2
                Else
                    NodoArbol.Image = 4
                End If
            Else
                Set NodoArbol = Me.TreeView2.Nodes.Add(, , "C" & Rs!codmacta, Clave)
                NodoArbol.Image = 1
            End If
            'Todos los subnodos de segundo nivel los vamos a mostrar
            If i = 2 Then NodoArbol.EnsureVisible
            
            Rs.MoveNext
        Wend
        Rs.Close
    Next i
    Set Rs = Nothing
    'Que muestre la primera cuenta
    If TreeView2.Nodes.Count > 0 Then TreeView2.Nodes(1).EnsureVisible
    Exit Sub
ECargaPlan:
    MuestraError Err.Number, "Cargando plan: " & Rs!codmacta
End Sub
