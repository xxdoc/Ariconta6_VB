VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form frmInfBalSumSalConso 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   7155
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11895
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7155
   ScaleWidth      =   11895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frameConceptoDer 
      Caption         =   "Opciones"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6375
      Left            =   7110
      TabIndex        =   18
      Top             =   0
      Width           =   4695
      Begin VB.CheckBox chkDesgloseEmpresa 
         Caption         =   "Desglose por empresas"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   47
         Top             =   2880
         Width           =   4155
      End
      Begin VB.Frame Frame2 
         Height          =   2145
         Left            =   120
         TabIndex        =   29
         Top             =   600
         Width           =   4545
         Begin VB.CheckBox Check1 
            Caption         =   "9� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   9
            Left            =   3000
            TabIndex        =   39
            Top             =   960
            Width           =   1455
         End
         Begin VB.CheckBox Check1 
            Caption         =   "8� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   8
            Left            =   1560
            TabIndex        =   38
            Top             =   960
            Width           =   1335
         End
         Begin VB.CheckBox Check1 
            Caption         =   "7� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   7
            Left            =   120
            TabIndex        =   37
            Top             =   960
            Width           =   1425
         End
         Begin VB.CheckBox Check1 
            Caption         =   "6� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   6
            Left            =   3000
            TabIndex        =   36
            Top             =   600
            Width           =   1305
         End
         Begin VB.CheckBox Check1 
            Caption         =   "5� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   5
            Left            =   1560
            TabIndex        =   35
            Top             =   600
            Width           =   1335
         End
         Begin VB.CheckBox Check1 
            Caption         =   "4� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   4
            Left            =   120
            TabIndex        =   34
            Top             =   600
            Width           =   1305
         End
         Begin VB.CheckBox Check1 
            Caption         =   "3� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   3
            Left            =   3000
            TabIndex        =   33
            Top             =   240
            Width           =   1485
         End
         Begin VB.CheckBox Check1 
            Caption         =   "2� nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   2
            Left            =   1560
            TabIndex        =   32
            Top             =   240
            Width           =   1425
         End
         Begin VB.CheckBox Check1 
            Caption         =   "1er nivel"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   1
            Left            =   120
            TabIndex        =   31
            Top             =   240
            Width           =   1335
         End
         Begin VB.ComboBox Combo2 
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
            Left            =   1530
            Style           =   2  'Dropdown List
            TabIndex        =   30
            Top             =   1650
            Visible         =   0   'False
            Width           =   2055
         End
         Begin VB.Label Label1 
            Caption         =   "Remarcar"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   1
            Left            =   360
            TabIndex        =   40
            Top             =   1710
            Visible         =   0   'False
            Width           =   1005
         End
      End
      Begin MSComctlLib.Toolbar ToolbarAyuda 
         Height          =   390
         Left            =   4200
         TabIndex        =   28
         Top             =   240
         Width           =   405
         _ExtentX        =   714
         _ExtentY        =   688
         ButtonWidth     =   609
         ButtonHeight    =   582
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Ayuda"
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   2580
         Left            =   120
         TabIndex        =   45
         Top             =   3660
         Width           =   4425
         _ExtentX        =   7805
         _ExtentY        =   4551
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         HideColumnHeaders=   -1  'True
         Checkboxes      =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
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
      Begin VB.Label Label3 
         Caption         =   "Empresas"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   15
         Left            =   120
         TabIndex        =   46
         Top             =   3360
         Width           =   1110
      End
      Begin VB.Image imgCheck 
         Height          =   240
         Index           =   1
         Left            =   4080
         Picture         =   "frmInfBalSumSalConso.frx":0000
         ToolTipText     =   "Puntear al Debe"
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image imgCheck 
         Height          =   240
         Index           =   0
         Left            =   3600
         Picture         =   "frmInfBalSumSalConso.frx":014A
         ToolTipText     =   "Quitar al Debe"
         Top             =   3360
         Width           =   240
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Selecci�n"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3705
      Left            =   120
      TabIndex        =   17
      Top             =   0
      Width           =   6915
      Begin VB.ComboBox cmbFecha 
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
         Index           =   3
         ItemData        =   "frmInfBalSumSalConso.frx":0294
         Left            =   2850
         List            =   "frmInfBalSumSalConso.frx":0296
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   2670
         Width           =   1215
      End
      Begin VB.ComboBox cmbFecha 
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
         Index           =   2
         ItemData        =   "frmInfBalSumSalConso.frx":0298
         Left            =   2850
         List            =   "frmInfBalSumSalConso.frx":029A
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   2220
         Width           =   1215
      End
      Begin VB.TextBox txtNCta 
         BackColor       =   &H80000018&
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
         Index           =   6
         Left            =   2520
         Locked          =   -1  'True
         TabIndex        =   44
         Top             =   1050
         Width           =   4185
      End
      Begin VB.TextBox txtNCta 
         BackColor       =   &H80000018&
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
         Index           =   7
         Left            =   2520
         Locked          =   -1  'True
         TabIndex        =   43
         Top             =   1470
         Width           =   4185
      End
      Begin VB.ComboBox cmbFecha 
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
         ItemData        =   "frmInfBalSumSalConso.frx":029C
         Left            =   1230
         List            =   "frmInfBalSumSalConso.frx":029E
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   2670
         Width           =   1575
      End
      Begin VB.ComboBox cmbFecha 
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
         ItemData        =   "frmInfBalSumSalConso.frx":02A0
         Left            =   1230
         List            =   "frmInfBalSumSalConso.frx":02A2
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   2220
         Width           =   1575
      End
      Begin VB.TextBox txtCta 
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
         Height          =   360
         Index           =   6
         Left            =   1230
         TabIndex        =   0
         Tag             =   "imgConcepto"
         Top             =   1050
         Width           =   1275
      End
      Begin VB.TextBox txtCta 
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
         Height          =   360
         Index           =   7
         Left            =   1230
         TabIndex        =   1
         Tag             =   "imgConcepto"
         Top             =   1470
         Width           =   1275
      End
      Begin VB.Label Label21 
         Caption         =   "Desde"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   240
         TabIndex        =   48
         Top             =   3240
         Width           =   6450
      End
      Begin VB.Image imgCuentas 
         Height          =   255
         Index           =   6
         Left            =   990
         Top             =   1050
         Width           =   255
      End
      Begin VB.Image imgCuentas 
         Height          =   255
         Index           =   7
         Left            =   990
         Top             =   1500
         Width           =   255
      End
      Begin VB.Label Label3 
         Caption         =   "Hasta"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   27
         Top             =   1440
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Desde"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   240
         TabIndex        =   26
         Top             =   1080
         Width           =   690
      End
      Begin VB.Label Label3 
         Caption         =   "Hasta"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   4
         Left            =   240
         TabIndex        =   25
         Top             =   2640
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Desde"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   5
         Left            =   240
         TabIndex        =   24
         Top             =   2280
         Width           =   690
      End
      Begin VB.Label Label3 
         Caption         =   "Cuenta"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   195
         Index           =   7
         Left            =   240
         TabIndex        =   23
         Top             =   690
         Width           =   960
      End
      Begin VB.Label Label3 
         Caption         =   "Mes / A�o"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   195
         Index           =   8
         Left            =   240
         TabIndex        =   22
         Top             =   1920
         Width           =   1410
      End
   End
   Begin VB.CommandButton cmdCancelar 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
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
      Left            =   10320
      TabIndex        =   8
      Top             =   6570
      Width           =   1215
   End
   Begin VB.CommandButton cmdAccion 
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
      Index           =   1
      Left            =   8730
      TabIndex        =   6
      Top             =   6570
      Width           =   1455
   End
   Begin VB.CommandButton cmdAccion 
      Caption         =   "&Imprimir"
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
      Index           =   0
      Left            =   120
      TabIndex        =   7
      Top             =   6570
      Width           =   1335
   End
   Begin VB.Frame FrameTipoSalida 
      Caption         =   "Tipo de salida"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   120
      TabIndex        =   9
      Top             =   3720
      Width           =   6915
      Begin VB.CommandButton PushButtonImpr 
         Caption         =   "Propiedades"
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
         Left            =   5190
         TabIndex        =   21
         Top             =   720
         Width           =   1515
      End
      Begin VB.CommandButton PushButton2 
         Caption         =   ".."
         Height          =   315
         Index           =   1
         Left            =   6450
         TabIndex        =   20
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton PushButton2 
         Caption         =   ".."
         Height          =   315
         Index           =   0
         Left            =   6450
         TabIndex        =   19
         Top             =   1200
         Width           =   255
      End
      Begin VB.TextBox txtTipoSalida 
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
         Index           =   2
         Left            =   1770
         Locked          =   -1  'True
         TabIndex        =   16
         Top             =   1680
         Width           =   4665
      End
      Begin VB.TextBox txtTipoSalida 
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
         Left            =   1770
         Locked          =   -1  'True
         TabIndex        =   15
         Top             =   1200
         Width           =   4665
      End
      Begin VB.TextBox txtTipoSalida 
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
         Left            =   1770
         Locked          =   -1  'True
         TabIndex        =   14
         Text            =   "Text1"
         Top             =   720
         Width           =   3345
      End
      Begin VB.OptionButton optTipoSal 
         Caption         =   "eMail"
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
         Index           =   3
         Left            =   240
         TabIndex        =   13
         Top             =   2160
         Width           =   975
      End
      Begin VB.OptionButton optTipoSal 
         Caption         =   "PDF"
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
         Index           =   2
         Left            =   240
         TabIndex        =   12
         Top             =   1680
         Width           =   975
      End
      Begin VB.OptionButton optTipoSal 
         Caption         =   "Archivo csv"
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
         Index           =   1
         Left            =   240
         TabIndex        =   11
         Top             =   1200
         Width           =   1515
      End
      Begin VB.OptionButton optTipoSal 
         Caption         =   "Impresora"
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
         Index           =   0
         Left            =   240
         TabIndex        =   10
         Top             =   720
         Value           =   -1  'True
         Width           =   1335
      End
   End
   Begin MSComctlLib.ProgressBar pb9 
      Height          =   285
      Left            =   1830
      TabIndex        =   41
      Top             =   6600
      Visible         =   0   'False
      Width           =   5205
      _ExtentX        =   9181
      _ExtentY        =   503
      _Version        =   393216
      Appearance      =   1
      Max             =   1000
   End
   Begin VB.CommandButton cmdCancelarAccion 
      Caption         =   "CANCEL"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10320
      TabIndex        =   42
      Top             =   6570
      Width           =   1215
   End
End
Attribute VB_Name = "frmInfBalSumSalConso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Const IdPrograma = 315

Public Opcion As Byte
' ***********************************************************************************************************
' ***********************************************************************************************************
' ***********************************************************************************************************
'
'  3 espacios
'       -Los desde hasta,
'       -las opciones / ordenacion
'       -el tipo salida
'
' ***********************************************************************************************************
' ***********************************************************************************************************
' ***********************************************************************************************************
Private WithEvents frmC As frmColCtas
Attribute frmC.VB_VarHelpID = -1

Public Cuenta As String
Public Descripcion As String
Public FecDesde As String
Public FecHasta As String



Private Sql As String
Dim cad As String
Dim RC As String
Dim i As Integer
Dim IndCodigo As Integer
Dim PrimeraVez As String
Dim Rs As ADODB.Recordset

Dim FechaIncioEjercicio As Date
Dim FechaFinEjercicio As Date
Dim PulsadoCancelar As Boolean



Dim HanPulsadoSalir As Boolean

Public Sub InicializarVbles(A�adireElDeEmpresa As Boolean)
    cadFormula = ""
    cadselect = ""
    cadParam = "|"
    numParam = 0
    cadNomRPT = ""
    conSubRPT = False
    cadPDFrpt = ""
    ExportarPDF = False
    vMostrarTree = False
    
    If A�adireElDeEmpresa Then
        cadParam = cadParam & "pEmpresa=""" & vEmpresa.nomempre & """|"
        numParam = numParam + 1
    End If
    
End Sub







Private Sub cmdAccion_Click(Index As Integer)
    
    If Not DatosOK Then Exit Sub
    
    PulsadoCancelar = False
    Me.cmdCancelarAccion.Visible = True
    Me.cmdCancelarAccion.Enabled = True
    
    Me.cmdCancelar.Visible = False
    Me.cmdCancelar.Enabled = False
        
    
    'Exportacion a PDF
    If optTipoSal(3).Value + optTipoSal(2).Value + optTipoSal(1).Value Then
        If Not EliminarDocum(optTipoSal(2).Value) Then Exit Sub
    End If
    
    InicializarVbles True
    
    
    
    
    Me.cmdCancelarAccion.Visible = False
    Me.cmdCancelarAccion.Enabled = False
    
    Me.cmdCancelar.Visible = True
    Me.cmdCancelar.Enabled = True

    
    If Not HacerAccionesConsolidado Then Exit Sub
    
    If Not HayRegParaInforme("tmpbalanceconsolidado", "codusu=" & vUsu.Codigo) Then Exit Sub
    
    If optTipoSal(1).Value Then
        'EXPORTAR A CSV
        AccionesCSV
    
    Else
        'Tanto a pdf,imprimiir, preevisualizar como email van COntral Crystal
    
        If optTipoSal(2).Value Or optTipoSal(3).Value Then
            ExportarPDF = True 'generaremos el pdf
        Else
            ExportarPDF = False
        End If
        SoloImprimir = False
        If Index = 0 Then SoloImprimir = True 'ha pulsado impirmir
        
        AccionesCrystal
    End If
    

    
End Sub

Private Sub cmdCancelar_Click()
    If Me.cmdCancelarAccion.Visible Then Exit Sub
    HanPulsadoSalir = True
    Unload Me
End Sub


Private Sub cmdCancelarAccion_Click()
    PulsadoCancelar = True
End Sub

Private Sub Form_Activate()
Dim CONT As Integer

    If PrimeraVez Then
        PrimeraVez = False
        
    End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    KEYpress KeyAscii
End Sub

Private Sub KEYpress(KeyAscii As Integer)
Dim cerrar As Boolean

    KEYpressGnral KeyAscii, 0, cerrar
    If cerrar Then Unload Me
End Sub



Private Sub Form_Load()
    PrimeraVez = True
    Me.Icon = frmppal.Icon
        
    ' La Ayuda
    With Me.ToolbarAyuda
        .ImageList = frmppal.ImgListComun
        .Buttons(1).Image = 26
    End With
        
        
    'Otras opciones
    Me.Caption = "Balance de Sumas y Saldos CONSOLIDADO"

    For i = 6 To 7
        Me.imgCuentas(i).Picture = frmppal.imgIcoForms.ListImages(1).Picture
    Next i
    
    PrimeraVez = True
     
    CargarComboFecha
     


    'Fecha inicial
    cmbFecha(0).ListIndex = Month(vParam.fechaini) - 1
    cmbFecha(1).ListIndex = Month(vParam.fechafin) - 1
    
    cmbFecha(2).Text = Year(vParam.fechaini)
    cmbFecha(3).Text = Year(vParam.fechafin)
    PosicionarCombo cmbFecha(2), Year(vParam.fechaini)
    PosicionarCombo cmbFecha(3), Year(vParam.fechaini)
    

    PonerDatosPorDefectoImpresion Me, False, Me.Caption 'Siempre tiene que tener el frame con txtTipoSalida
    ponerLabelBotonImpresion cmdAccion(1), cmdAccion(0), 0
    
    

    Label21.Caption = "" 'indicador
    
    cmdCancelarAccion.Enabled = False
    cmdCancelarAccion.Visible = False
    
    
    PonerNiveles
 
    CargarListViewEmpresas
End Sub

Private Sub frmC_DatoSeleccionado(CadenaSeleccion As String)
    txtCta(IndCodigo).Text = RecuperaValor(CadenaSeleccion, 1)
    txtNCta(IndCodigo).Text = RecuperaValor(CadenaSeleccion, 2)
End Sub








Private Sub imgCheck_Click(Index As Integer)
    For i = 1 To ListView1.ListItems.Count
        ListView1(1).ListItems.Checked = Index = 1
    Next i
End Sub

Private Sub imgCuentas_Click(Index As Integer)

    IndCodigo = Index
    
    Set frmC = New frmColCtas
    frmC.DatosADevolverBusqueda = "0|1|"
    frmC.ConfigurarBalances = 3  'NUEVO
    frmC.Show vbModal
    Set frmC = Nothing

    PonFoco txtCta(Index)

End Sub






Private Sub optTipoSal_Click(Index As Integer)
    ponerLabelBotonImpresion cmdAccion(1), cmdAccion(0), Index
End Sub

Private Sub optVarios_KeyPress(Index As Integer, KeyAscii As Integer)
    KEYpress KeyAscii
End Sub


Private Sub PushButton2_Click(Index As Integer)
    'FILTROS
    If Index = 0 Then
        frmppal.cd1.Filter = "*.csv|*.csv"
         
    Else
        frmppal.cd1.Filter = "*.pdf|*.pdf"
    End If
    frmppal.cd1.InitDir = App.Path & "\Exportar" 'PathSalida
    frmppal.cd1.FilterIndex = 1
    frmppal.cd1.ShowSave
    If frmppal.cd1.FileTitle <> "" Then
        If Dir(frmppal.cd1.FileName, vbArchive) <> "" Then
            If MsgBox("El archivo ya existe. Reemplazar?", vbQuestion + vbYesNo) = vbNo Then Exit Sub
        End If
        txtTipoSalida(Index + 1).Text = frmppal.cd1.FileName
    End If
End Sub

Private Sub PushButtonImpr_Click()
    frmppal.cd1.ShowPrinter
    PonerDatosPorDefectoImpresion Me, True
End Sub




Private Sub ToolbarAyuda_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
            LanzaVisorMimeDocumento Me.hwnd, DireccionAyuda & IdPrograma & ".html"
    End Select
End Sub




Private Sub txtCta_GotFocus(Index As Integer)
    ConseguirFoco txtCta(Index), 3
End Sub


Private Sub txtCta_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyAdd Then
        KeyCode = 0

        LanzaFormAyuda "imgCuentas", Index
    End If
End Sub


Private Sub LanzaFormAyuda(Nombre As String, Indice As Integer)
    Select Case Nombre
    Case "imgCuentas"
        imgCuentas_Click Indice
    Case "imgFecha"

    End Select
    
End Sub


Private Sub txtCta_LostFocus(Index As Integer)
Dim cad As String, cadTipo As String 'tipo cliente
Dim RC As String
Dim Hasta As Integer

    txtCta(Index).Text = Trim(txtCta(Index).Text)
    
    'Si se ha abierto otro formulario, es que se ha pinchado en prismaticos y no
    'mostrar mensajes ni hacer nada
'    If Screen.ActiveForm.Name <> Me.Name Then Exit Sub

    txtCta(Index).Text = Trim(txtCta(Index).Text)
    If txtCta(Index).Text = "" Then
        txtNCta(Index).Text = ""
        Exit Sub
    End If
    
    If Not IsNumeric(txtCta(Index).Text) Then
        If InStr(1, txtCta(Index).Text, "+") = 0 Then MsgBox "La cuenta debe ser num�rica: " & txtCta(Index).Text, vbExclamation
        txtCta(Index).Text = ""
        txtNCta(Index).Text = ""
        Exit Sub
    End If



    Select Case Index
        Case 6, 7 'Cuentas
            
            RC = txtCta(Index).Text
            If CuentaCorrectaUltimoNivelSIN(RC, Sql) Then
                txtCta(Index) = RC
                txtNCta(Index).Text = Sql
            Else
                MsgBox Sql, vbExclamation
                txtCta(Index).Text = ""
                txtNCta(Index).Text = ""
                PonFoco txtCta(Index)
            End If
            
            If Index = 0 Then Hasta = 1
            If Hasta >= 1 Then
                txtCta(Hasta).Text = txtCta(Index).Text
                txtNCta(Hasta).Text = txtNCta(Index).Text
            End If
    End Select

End Sub



Private Sub AccionesCSV()
Dim Sql2 As String
Dim Tipo As Byte
    MsgBox "Falta", vbExclamation
    Exit Sub


        
    'LLamos a la funcion
    GeneraFicheroCSV Sql, txtTipoSalida(1).Text
    
End Sub


Private Sub AccionesCrystal()
Dim Tipo As Byte
Dim UltimoNivel As Integer
Dim indRPT As String
Dim nomDocu As String

'

    Sql = ""
    If txtCta(6).Text <> "" Then Sql = Sql & "  Desde " & txtCta(6).Text
    If txtCta(7).Text <> "" Then Sql = Sql & "  hasta " & txtCta(7).Text
    If Sql <> "" Then Sql = "     " & Sql
    Sql = cmbFecha(0).Text & " " & cmbFecha(2).Text & " a " & cmbFecha(1).Text & " " & cmbFecha(3).Text & Sql

    cadParam = cadParam & "Cuenta="" - " & Sql & """|"
    numParam = numParam + 1

    
    'Vemos las empresas
    Sql = "Empresas=""Empresas:"
    CONT = 1
    Do
        If ListView1.ListItems(CONT).Checked Then Sql = Sql & """ + chr(13) + ""        " & ListView1.ListItems(CONT).Text
        CONT = CONT + 1
    Loop Until CONT > ListView1.ListItems.Count
    Sql = Sql & """|"
    cadParam = cadParam & Sql
    numParam = numParam + 1


    
    If Me.chkDesgloseEmpresa.Value = 1 Then
        Sql = "01"
    Else
        Sql = "00"
    End If
    indRPT = "0315-" & Sql
        
    If Not PonerParamRPT(indRPT, nomDocu) Then Exit Sub
    
    cadNomRPT = nomDocu

    cadFormula = "{tmpbalanceconsolidado.codusu}=" & vUsu.Codigo

    ImprimeGeneral
    
    If optTipoSal(1).Value Then CopiarFicheroASalida True, txtTipoSalida(1).Text
    If optTipoSal(2).Value Then CopiarFicheroASalida False, txtTipoSalida(2).Text, False
    If optTipoSal(3).Value Then LanzaProgramaAbrirOutlook 53
        
    If SoloImprimir Or ExportarPDF Then Unload Me
    Screen.MousePointer = vbDefault
End Sub


Private Function MontaSQL() As Boolean
Dim Sql As String
Dim Sql2 As String
Dim RC As String
Dim RC2 As String

    MontaSQL = False
    MontaSQL = True
           
End Function





Private Function DatosOK() As Boolean
    
    DatosOK = False
    
    CONT = 0
    For i = 1 To 9
        If Check1(i).Value = 1 Then CONT = CONT + 1
    Next i
    If CONT = 0 Then
        MsgBox "Seleccione como m�nimo un nivel contable", vbExclamation
        Exit Function
    End If

    cad = ""
    For i = 1 To ListView1.ListItems.Count
        If ListView1.ListItems(i).Checked Then cad = cad & "1"
    Next i
    If cad = "" Then
        MsgBox "Seleccione alguna empresa", vbExclamation
        Exit Function
    End If
     
    DatosOK = True

End Function

Private Sub CargarComboFecha()
Dim J As Integer


    QueCombosFechaCargar "0|1|"
    
    
    For i = 1 To vEmpresa.numnivel - 1
        J = DigitosNivel(i)
        Check1(i).Visible = True
        Check1(i).Caption = "Digitos: " & J
    Next i

    cmbFecha(2).Clear
    cmbFecha(3).Clear
    
    J = Year(vParam.fechafin) + 1 - 2000
    For i = 1 To J
        cmbFecha(2).AddItem "20" & Format(i, "00")
        cmbFecha(3).AddItem "20" & Format(i, "00")
    Next i
    
    'Cargamos le combo de resalte de fechas
    Combo2.Clear
    
    
    Combo2.AddItem "Sin remarcar"
    Combo2.ItemData(Combo2.NewIndex) = 1000
    For i = 1 To vEmpresa.numnivel - 1
        Combo2.AddItem "Nivel " & i
        Combo2.ItemData(Combo2.NewIndex) = i
    Next i
End Sub


Private Sub EmpezarBalanceNuevo2(vConta As Integer, ByRef PB As ProgressBar)
Dim Cade As String
Dim Apertura As Boolean
Dim QuitarSaldos2 As Byte
Dim Agrupa As Boolean
Dim IndiceCombo As Integer
Dim vOpcion As Byte
Dim Resetea6y7 As Boolean
Dim C1 As Long
Dim UltimoNivel As Byte
Dim PreCargarCierre

Dim InicioPeriodo As Date
Dim FinPeriodo As Date
Dim LenPrimerNivelCalculado As Byte
Dim LenNivelCalculado As Byte
Dim Fec As Date
Dim J As Integer


Dim CodMactaEnProceso As String
Dim NomactaEnProceso As String
Dim ColImporte As Collection   ' Para la cuenta que estamos procesando llevar� yyyymm|imported|importeh|


    Screen.MousePointer = vbHourglass
    
    
    

    
    
    'Desde hasta cuentas
    Cade = ""
    If txtCta(6).Text <> "" Then Cade = Cade & " AND ((cuentas.codmacta)>='" & txtCta(6).Text & "')"
    If txtCta(7).Text <> "" Then Cade = Cade & " AND ((cuentas.codmacta)<='" & txtCta(7).Text & "')"
    
    'Fechas
    'Del ejercicio solicitado

    Fec = "01/" & Right("00" & CStr(Me.cmbFecha(0).ListIndex + 1), 2) & "/" & cmbFecha(2).Text
    J = 1
    If Fec > vParam.fechafin Then
        'Siguiente
        FechaIncioEjercicio = vParam.fechaini  ' DateAdd("yyyy", 1, vParam.fechaini)
        FechaFinEjercicio = DateAdd("yyyy", 1, vParam.fechafin)

    Else
    
        FechaIncioEjercicio = vParam.fechaini
    
        While J = 1
            If FechaIncioEjercicio <= Fec Then
                J = 0
            Else
                FechaIncioEjercicio = DateAdd("yyyy", -1, FechaIncioEjercicio)
            End If
        Wend
        FechaFinEjercicio = DateAdd("yyyy", 1, FechaIncioEjercicio)
        FechaFinEjercicio = DateAdd("d", -1, FechaFinEjercicio)
    End If


    Cade = " fechaent between " & DBSet(FechaIncioEjercicio, "F") & " AND " & DBSet(FechaFinEjercicio, "F") & Cade

    
    
    'Nivel del que vamos a calcular los datos
    LenPrimerNivelCalculado = 0
    
        For i = vEmpresa.numnivel - 1 To 1 Step -1
            
           
            If Check1(i).Value = 1 Then LenPrimerNivelCalculado = DigitosNivel(i)
    
            If LenPrimerNivelCalculado > 0 Then Exit For
        Next

   
    '
    'NUEVO *************
    ' Cargaremos de la hlinapu, codmacta,nommacta, mes,an�o ,saldo. Y asi en un solo SELECT tenemos los saldos.
    'Luego para cada cuenta tendremos que hacer los calculos
    
    cad = "SELECT substring(line.codmacta,1," & LenPrimerNivelCalculado
    cad = cad & ") as codmacta,coalesce(nommacta,'ERROR##') nommacta ,   year(fechaent) anyo,month(fechaent) mes,"
    cad = cad & " sum(coalesce(timported,0)) debe, sum(coalesce(timporteh,0)) haber FROM "
    If vConta >= 0 Then cad = cad & "ariconta" & vConta & "."
    cad = cad & "hlinapu"
    cad = cad & " as line LEFT JOIN "
    If vConta >= 0 Then cad = cad & "ariconta" & vConta & "."
    cad = cad & "cuentas ON  "
    cad = cad & "cuentas.codmacta = substring(line.codmacta,1," & LenPrimerNivelCalculado & ")"
    cad = cad & " WHERE " & Cade

    cad = cad & " GROUP BY 1,anyo,mes "
    cad = cad & " ORDER By 1 ,anyo,mes"

    Apertura = True And vConta < 0
    
  
            
    '1.- Sin apertura y sin movimientos
    '2.- Sin apertura y con movimientos
    '3.- Con apertura y sin movimientos
    '4.- Con apertura y con movimientos
    

    
    Set Rs = New ADODB.Recordset
    
    'Comprobamos si hay que quitar el pyg y el cierre
    QuitarSaldos2 = 0   'No hay k kitar
    CONT = 0
    
        CONT = 1  'Ambos
        'Si el mes contiene el cierre, entonces adelante
        If Month(vParam.fechafin) = Me.cmbFecha(1).ListIndex + 1 Then
            'Si estamos en ejercicios cerrados seguro que hay asiento de cierre y p y g
                'Si no lo comprobamos. Concepto=960 y 980
                Agrupa = HayAsientoCierre((Me.cmbFecha(1).ListIndex + 1), CInt(cmbFecha(3).Text))
                If Agrupa Then QuitarSaldos2 = CONT
        End If
   
    
    'Para los balances de ejercicios siguientes existe la opcion
    ' de que si la cuenta esta en el grupo gto o grupo venta, resetear el importe a 0
    
    Resetea6y7 = CDate("01/" & cmbFecha(0).ListIndex + 1 & "/" & cmbFecha(2).Text) > vParam.fechafin
    
    
    
    Rs.Open cad, Conn, adOpenKeyset, adLockPessimistic, adCmdText
    If Rs.EOF Then
        'NO hay registros a mostrar
        If vConta < 0 Then
            'MsgBox "Ningun dato en los valores seleccionados.", vbExclamation
            Screen.MousePointer = vbDefault
            Set Rs = Nothing
            Exit Sub
        End If
        Agrupa = False
        CONT = -1
      
    Else
    
        'Voy a ver si precargamos el RScon los datos para el cierr/pyg apertura
        'Veamos si precargamos los
        Sql = ""
       
            'Esta chequeado ultimo nivel
            'Veamos si tiene seleccionado alguno mas
            Sql = "1"
            For CONT = 1 To 9
                If Check1(CInt(CONT)).Value = 1 Then Sql = Sql & "1"
            Next CONT

        PreCargarCierre = Len(Sql) = 1
    
        'Mostramos el frame de resultados
        CONT = 0
        While Not Rs.EOF
            CONT = CONT + 1
            Rs.MoveNext
        Wend
        PB.Visible = True
        PB.Value = 0
        Me.Refresh
        
        
        'Obtengo el periodo
        InicioPeriodo = "01/" & CStr(cmbFecha(0).ListIndex + 1) & "/" & CInt(cmbFecha(2).Text)
        i = DiasMes(cmbFecha(1).ListIndex + 1, CInt(cmbFecha(3).Text))
        FinPeriodo = i & "/" & CStr(cmbFecha(1).ListIndex + 1) & "/" & CInt(cmbFecha(3))


        'Borramos los temporales
        Sql = "DELETE from tmpbalancesumas where codusu= " & vUsu.Codigo
        Conn.Execute Sql
        
        ' Pondremos el frame a disabled, veremos el boton de cancelar
        ' y dejaremos k lo pulse
        ' Si lo pulsa cancelaremos y no saldremos
        PulsadoCancelar = False
        Me.cmdCancelarAccion.Visible = False
        HanPulsadoSalir = False
        Me.Refresh
        
                                                           ' antes ejercicioscerrados, ahora false
        If PreCargarCierre Then PrecargaPerdidasyGanancias False, FechaIncioEjercicio, FechaFinEjercicio, QuitarSaldos2
        
        
        'Dim t1 As Single
        C1 = 0
        Rs.MoveFirst
        't1 = Timer
        
        CodMactaEnProceso = ""
        
        While Not Rs.EOF
                                                                                                                                       
            If CodMactaEnProceso <> Rs.Fields(0) Then
                                                                                                                                       
                If CodMactaEnProceso <> "" Then
                    CargaBalanceNuevaContabilidad CodMactaEnProceso, NomactaEnProceso, Apertura, InicioPeriodo, FinPeriodo, FechaIncioEjercicio, FechaFinEjercicio, False, QuitarSaldos2, vConta, False, Resetea6y7, CBool(PreCargarCierre), ColImporte
                End If
                CodMactaEnProceso = Rs.Fields(0)
                NomactaEnProceso = Rs.Fields(1)
                Set ColImporte = Nothing
                Set ColImporte = New Collection
                
                
                
            End If
            
            Sql = Rs!Anyo & Format(Rs!Mes, "00") & "|" & Rs!Debe & "|" & Rs!Haber & "|"
            ColImporte.Add Sql
            
            
            PB.Value = Round((C1 / CONT), 3) * 1000
            PB.Refresh
            DoEvents
            If PulsadoCancelar Then Rs.MoveLast
           
            'Siguiente cta
            C1 = C1 + 1
            Rs.MoveNext
        Wend
        
         'El ulimo registro
        If CodMactaEnProceso <> "" Then
            CargaBalanceNuevaContabilidad CodMactaEnProceso, NomactaEnProceso, Apertura, InicioPeriodo, FinPeriodo, FechaIncioEjercicio, FechaFinEjercicio, False, QuitarSaldos2, vConta, False, Resetea6y7, CBool(PreCargarCierre), ColImporte
        End If
        
        
        If PreCargarCierre Then CerrarPrecargaPerdidasyGanancias
        CerrarLeerApertura
        
        'Reestablecemos
        PonleFoco cmdCancelar
        Me.cmdCancelar.Visible = True
        Me.cmdCancelarAccion.Visible = False
        HanPulsadoSalir = True
        If PulsadoCancelar Then
            Rs.Close
            Screen.MousePointer = vbDefault
            PB.Visible = False
            Conn.Execute "DELETE from tmpbalancesumas WHERE codusu = " & vUsu.Codigo
            Exit Sub
        End If
        
    End If
    Rs.Close
   
    
    'Me cargo los que son todo cero
    Sql = "DELETE  from tmpbalancesumas WHERE codusu = " & vUsu.Codigo & " and aperturaD =0 AND "
    Sql = Sql & "aperturaH = 0 And acumAntD = 0 And acumAntH = 0 And acumPerD = 0 And acumPerH = 0"
    Conn.Execute Sql
    
    'Siguientes subniveles, si es ue los ha pedido
    LenNivelCalculado = 0
    For i = LenPrimerNivelCalculado - 1 To 1 Step -1
       
        'Balance normal
        LenNivelCalculado = 0
        If Check1(i).Value = 1 Then LenNivelCalculado = DigitosNivel(i)
        

    
        If LenNivelCalculado <> 0 Then
            Sql = "insert into tmpbalancesumas (codusu,cta,nomcta,aperturaD,aperturaH,acumAntD,acumAntH,acumPerD,acumPerH,TotalD,TotalH) "
            Sql = Sql & " select " & vUsu.Codigo & ",substring(line.cta,1," & LenNivelCalculado & ") as codmacta,coalesce(nommacta,'ERROR##') nommacta,"
            Sql = Sql & " sum(coalesce(aperturad,0)) aperd,  sum(coalesce(aperturah,0)) aperh, sum(coalesce(acumAntD,0)) acumantd, sum(coalesce(acumAntH,0)) acumanth,"
            Sql = Sql & " sum(coalesce(acumperd,0)) acumperd,  sum(coalesce(acumperh,0)) acumperh, sum(coalesce(totalD,0)) totald, sum(coalesce(totalH,0)) totalh from "
            If vConta >= 0 Then Sql = Sql & "ariconta" & vConta & "."
            Sql = Sql & "tmpbalancesumas line LEFT JOIN "
            If vConta >= 0 Then Sql = Sql & "ariconta" & vConta & "."
            Sql = Sql & "cuentas On cuentas.codmacta = substring(line.cta,1," & LenNivelCalculado & ") "
            Sql = Sql & " where line.codusu = " & vUsu.Codigo & " and length(line.cta) = " & LenPrimerNivelCalculado
            Sql = Sql & " group by 1,2 "
            Sql = Sql & " order by 1,2 "
            
            Conn.Execute Sql
            
            LenNivelCalculado = 0
        End If
    Next i
    
    
    
    
    
    
    'Ninguna entrada
    If CONT <= 0 Then Exit Sub
    
    'Realizar agrupacion
    If Agrupa Then
        PB.Value = 0
        Rs.Open "Select count(*) from ctaagrupadas", Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
        CONT = DBLet(Rs.Fields(0), "N")
        Rs.Close
        If CONT > 0 Then
            Sql = "Select ctaagrupadas.codmacta,nommacta from ctaagrupadas,cuentas where ctaagrupadas.codmacta =cuentas.codmacta "
            Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
            i = 0
            While Not Rs.EOF
                If AgrupacionCtasBalance(Rs.Fields(0), Rs.Fields(1)) Then
                    i = i + 1
                    PB.Value = Round((i / CONT), 3) * 1000
                    Rs.MoveNext
                Else
                    Rs.Close
                    Exit Sub
                End If
            Wend
        End If
    End If
    
    
    
    
    'Quitamos progress
    PB.Value = 0
    PB.Visible = False
    Me.Refresh
    
    
    '--------------------
    'Balance consolidado
    If vConta >= 0 Then
        
        Sql = "Select nomempre from Usuarios.empresasariconta where codempre =" & vConta
        Rs.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
        cad = ""
        If Not Rs.EOF Then cad = DBLet(Rs.Fields(0))
        Rs.Close
        If cad = "" Then
            MsgBox "Error leyendo datos empresa: Codempre=" & vConta
            Exit Sub
        End If
        
        Sql = "Select count(*) from tmpbalancesumas where codusu = " & vUsu.Codigo
        Rs.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
        CONT = DBLet(Rs.Fields(0), "N")
        Rs.Close
    
        
        Sql = "Select * from tmpbalancesumas where codusu = " & vUsu.Codigo
        Rs.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
        i = 0
        PB.Value = 0
        Me.Refresh
        Sql = "INSERT INTO tmpbalanceconsolidado (codempre, nomempre, codusu, cta, nomcta, aperturaD, aperturaH, acumAntD, acumAntH, acumPerD, acumPerH, TotalD, TotalH) VALUES ("
        Sql = Sql & vConta & ",'" & cad & "',"
        While Not Rs.EOF
            PB.Value = Round((i / CONT), 3) * 1000
            BACKUP_Tabla Rs, Cade
            Cade = Mid(Cade, 2)
            Cade = Sql & Cade
            Conn.Execute Cade
            'Sig
            Rs.MoveNext
            i = i + 1
        Wend
        Rs.Close
        'Ponemos CONT=0 para k no entre en el if de abajo
        CONT = 0
    End If
    
    Set Rs = Nothing
    
    'Si hay datos los mostramos
    If CONT > 0 Then
        'Las fechas
        Sql = "Fechas= ""Desde " & cmbFecha(0).ListIndex + 1 & "/" & cmbFecha(2).Text & "   hasta "
        Sql = Sql & cmbFecha(1).ListIndex + 1 & "/" & cmbFecha(3).Text & """|"
        'Si tiene desde hasta codcuenta
        cad = ""
        If txtCta(6).Text <> "" Then cad = cad & "Desde " & txtCta(6).Text & " - " & txtNCta(6).Tag
        If txtCta(7).Text <> "" Then
            If cad <> "" Then
                cad = cad & "    h"
            Else
                cad = "H"
            End If
            cad = cad & "asta " & txtCta(7).Text & " - " & txtNCta(7).Tag
        End If
        If cad = "" Then cad = " "
        Sql = Sql & "Cuenta= """ & cad & """|"
        
        'Fecha de impresion
        Sql = Sql & "FechaImp= """ & Now & """|"
        
        
        'Salto
        If Combo2.ListIndex >= 0 Then
            Sql = Sql & "Salto= " & Combo2.ItemData(Combo2.ListIndex) & "|"
            Else
            Sql = Sql & "Salto= 11|"
        End If
        
        'Titulo
      
            cad = "Balance de sumas y saldos"
      
        Sql = Sql & "Titulo= """ & cad & """|"
        
      
        
        
        '------------------------------
        'Numero de niveles
        'Para cada nivel marcado veremos si tiene cuentas en la tmp
        CONT = 0
        UltimoNivel = 0
        For i = 1 To 10
            If Check1(i).Visible Then
'                If Check2(I).Value = 1 Then Cont = Cont + 1
                If Check1(i).Value = 1 Then
                    If i = 10 Then
                        cad = vEmpresa.DigitosUltimoNivel
                    Else
                        cad = CStr(DigitosNivel(i))
                    End If
                    If TieneCuentasEnTmpBalance(cad) Then
                        CONT = CONT + 1
                        UltimoNivel = CByte(cad)
                    End If
                End If
            End If
        Next i
        cad = "numeroniveles= " & CONT & "|"
        Sql = Sql & cad
        'Otro parametro mas
        cad = "vUltimoNivel= " & UltimoNivel & "|"
        Sql = Sql & cad
    End If
    
    
    Screen.MousePointer = vbDefault
End Sub


Private Sub QueCombosFechaCargar(Lista As String)
Dim L As Integer

L = 1
Do
    cad = RecuperaValor(Lista, L)
    If cad <> "" Then
        i = Val(cad)
        With cmbFecha(i)
            .Clear
            For CONT = 1 To 12
                RC = "25/" & CONT & "/2002"
                RC = Format(RC, "mmmm") 'Devuelve el mes
                .AddItem RC
            Next CONT
        End With
    End If
    L = L + 1
Loop Until cad = ""
End Sub


Private Function ComprobarCuentas(Indice1 As Integer, Indice2 As Integer) As Boolean
Dim L1 As Integer
Dim L2 As Integer
    ComprobarCuentas = False
    If txtCta(Indice1).Text <> "" And txtCta(Indice2).Text <> "" Then
        L1 = Len(txtCta(Indice1).Text)
        L2 = Len(txtCta(Indice2).Text)
        If L1 > L2 Then
            L2 = L1
        Else
            L1 = L2
        End If
        If Val(Mid(txtCta(Indice1).Text & "000000000", 1, L1)) > Val(Mid(txtCta(Indice2).Text & "0000000000", 1, L1)) Then
            MsgBox "Cuenta desde mayor que cuenta hasta.", vbExclamation
            Exit Function
        End If
    End If
    ComprobarCuentas = True
End Function

Private Function ComparaFechasCombos(Indice1 As Integer, Indice2 As Integer, InCombo1 As Integer, InCombo2 As Integer) As Boolean
    ComparaFechasCombos = False
    If cmbFecha(2).ListIndex >= 0 And cmbFecha(3).ListIndex >= 0 Then
        If Val(cmbFecha(2).Text) > Val(cmbFecha(3).Text) Then
            MsgBox "Fecha inicio mayor que fecha fin", vbExclamation
            Exit Function
        Else
            If Val(cmbFecha(2).Text) = Val(cmbFecha(3).Text) Then
                If Me.cmbFecha(InCombo1).ListIndex > Me.cmbFecha(InCombo2).ListIndex Then
                    MsgBox "Fecha inicio mayor que fecha fin", vbExclamation
                    Exit Function
                End If
            End If
        End If
    End If
    ComparaFechasCombos = True
End Function


'Siempre k la fecha no este en fecha siguiente
Private Function HayAsientoCierre(Mes As Byte, Anyo As Integer, Optional Contabilidad As String) As Boolean
Dim C As String
    HayAsientoCierre = False
    C = "01/" & CStr(Mes) & "/" & Anyo
    'Si la fecha es menor k la fecha de inicio de ejercicio entonces SI k hay asiento de cierre
    If CDate(C) < vParam.fechaini Then
        HayAsientoCierre = True
    Else
        If CDate(C) > vParam.fechafin Then
            'Seguro k no hay
            Exit Function
        Else
            C = "Select count(*) from " & Contabilidad
            C = C & " hlinapu where (codconce=960 or codconce = 980) and fechaent>='" & Format(vParam.fechaini, FormatoFecha)
            C = C & "' AND fechaent <='" & Format(vParam.fechafin, FormatoFecha) & "'"
            Rs.Open C, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
            If Not Rs.EOF Then
                If Not IsNull(Rs.Fields(0)) Then
                    If Rs.Fields(0) > 0 Then HayAsientoCierre = True
                End If
            End If
            Rs.Close
        End If
    End If
End Function



Private Function TieneCuentasEnTmpBalance(DigitosNivel As String) As Boolean
Dim Rs As ADODB.Recordset
Dim C As String

    Set Rs = New ADODB.Recordset
    TieneCuentasEnTmpBalance = False
    C = Mid("__________", 1, CInt(DigitosNivel))
    C = "Select count(*) from tmpbalancesumas  where cta like '" & C & "'"
    C = C & " AND codusu = " & vUsu.Codigo
    Rs.Open C, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    If Not Rs.EOF Then
        If Not IsNull(Rs.Fields(0)) Then
            If Rs.Fields(0) > 0 Then TieneCuentasEnTmpBalance = True
        End If
    End If
    Rs.Close
End Function

Private Sub PonerNiveles()
Dim i As Integer
Dim J As Integer


    Frame2.Visible = True
    Combo2.Clear
 
    For i = 1 To vEmpresa.numnivel - 1
        J = DigitosNivel(i)
        cad = "Digitos: " & J
        Check1(i).Visible = True
        Me.Check1(i).Caption = cad
        
        Combo2.AddItem "Nivel :   " & i
        Combo2.ItemData(Combo2.NewIndex) = J
    Next i
    For i = vEmpresa.numnivel To 9
        Check1(i).Visible = False
    Next i
    
    
End Sub

Private Sub HacerBalanceInicio()
 Dim F As Date
 
    
        'Numero de niveles
        'Para cada nivel marcado veremos si tiene cuentas en la tmp
        RC = ""
        For i = 1 To 10
            Sql = "0"
            If Check1(i).Visible Then
                If Check1(i).Value = 1 Then Sql = "1"
            End If
            RC = RC & Sql
        Next i
    
        F = "01/ " & Me.cmbFecha(0).ListIndex + 1 & "/" & Me.cmbFecha(2).Text
        
        If F > DateAdd("yyyy", 1, vParam.fechafin) Then
            MsgBox "Ejercicio no abierto"
            Exit Sub
        End If
        
        FechaIncioEjercicio = vParam.fechaini
        i = 1
        Do
            If FechaIncioEjercicio <= F Then
                i = 0
            Else
                FechaIncioEjercicio = DateAdd("yyyy", -1, FechaIncioEjercicio)
            End If
        Loop Until i = 0
        'Borramos los temporales
        Sql = "DELETE from tmpbalancesumas where codusu= " & vUsu.Codigo
        Conn.Execute Sql
    
        'Precargamos el cierre
        PrecargaApertura  'Carga en ur RS la apertura
        
        CONT = 1
        If Not CargaBalanceInicioEjercicio(RC, FechaIncioEjercicio) Then CONT = 0
        CerrarPrecargaPerdidasyGanancias
        If CONT = 0 Then Exit Sub
                
        Sql = "Titulo= ""Balance inicio ejercicio""|"
        Sql = Sql & "NumPag= 0|"
        
        
        '------------------------------
        'Numero de niveles
        'Para cada nivel marcado veremos si tiene cuentas en la tmp
        CONT = 0
        For i = 1 To 10
            If Check1(i).Visible Then
'                If Check2(I).Value = 1 Then Cont = Cont + 1
                If Check1(i).Value = 1 Then
                    If i = 10 Then
                        cad = vEmpresa.DigitosUltimoNivel
                    Else
                        cad = CStr(DigitosNivel(i))
                    End If
                    If TieneCuentasEnTmpBalance(cad) Then CONT = CONT + 1
                End If
            End If
        Next i
        cad = "numeroniveles= " & CONT & "|"
        Sql = Sql & cad
        
        
        'Fecha de impresion
        'Sql = Sql & "FechaImp= """ & txtFecha(7).Text & """|"
        
        
        'Remarcar
        If Combo2.ListIndex >= 0 Then
            Sql = Sql & "Salto= " & Combo2.ItemData(Combo2.ListIndex) & "|"
            Else
            Sql = Sql & "Salto= 11|"
        End If

        
End Sub


Private Sub txtPag2_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KEYdown KeyCode
End Sub

Private Sub txtTipoSalida_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KEYdown KeyCode
End Sub

Private Sub txtTitulo_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KEYdown KeyCode
End Sub



Private Sub CargarListViewEmpresas()
'Muestra la lista Detallada de Facturas que dieron error al contabilizar
'en un ListView
Dim Rs As ADODB.Recordset
Dim Prohibidas As String
Dim IT
Dim Aux As String
    
    On Error GoTo ECargarList

    'Los encabezados
    ListView1.ColumnHeaders.Clear

    ListView1.ColumnHeaders.Add , , "Empresa", 3800
    


    Set Rs = New ADODB.Recordset

    Prohibidas = DevuelveProhibidas
    
    ListView1.ListItems.Clear
    Aux = "Select * from Usuarios.empresasariconta order by codempre"
    
    Rs.Open Aux, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    While Not Rs.EOF
    
        Aux = "|" & Rs!codempre & "|"
        If InStr(1, Prohibidas, Aux) = 0 Then
            Set IT = ListView1.ListItems.Add
            IT.Key = "C" & Rs!codempre
            If vEmpresa.codempre = Rs!codempre Then IT.Checked = True
            IT.Text = Rs!nomempre
            IT.Tag = Rs!codempre
            IT.ToolTipText = Rs!CONTA
        End If
        Rs.MoveNext
        
    Wend
    Rs.Close
    Set Rs = Nothing

ECargarList:
    If Err.Number <> 0 Then
        MuestraError Err.Number, "Cargar Empresas.", Err.Description
    End If
End Sub

Private Function DevuelveProhibidas() As String
Dim i As Integer


    On Error GoTo EDevuelveProhibidas
    
    DevuelveProhibidas = ""

    Set miRsAux = New ADODB.Recordset

    i = vUsu.Codigo Mod 100
    miRsAux.Open "Select * from usuarios.usuarioempresasariconta WHERE codusu =" & i, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
    DevuelveProhibidas = ""
    While Not miRsAux.EOF
        DevuelveProhibidas = DevuelveProhibidas & miRsAux.Fields(1) & "|"
        miRsAux.MoveNext
    Wend
    If DevuelveProhibidas <> "" Then DevuelveProhibidas = "|" & DevuelveProhibidas
    miRsAux.Close
    Exit Function
EDevuelveProhibidas:
    MuestraError Err.Number, "Cargando empresas prohibidas"
    Err.Clear
End Function



Private Function HacerAccionesConsolidado() As Boolean
Dim i As Integer

    '-------------------------------------------------------------------------------------------------------------

     'Comprobar un nivel solicitado
     
    
    i = cmbFecha(0).ListIndex + 1
    CONT = Val(cmbFecha(2).Text)
    If i >= Month(vParam.fechaini) Then
    Else
        CONT = CONT - 1
    End If
    cad = Day(vParam.fechaini) & "/" & Month(vParam.fechaini) & "/" & CONT
    FechaIncioEjercicio = CDate(cad)
    
    i = cmbFecha(1).ListIndex + 1
    CONT = Val(cmbFecha(3).Text)
    If i <= Month(vParam.fechafin) Then
        
    Else
        CONT = CONT + 1
    End If
    cad = Day(vParam.fechafin) & "/" & Month(vParam.fechafin) & "/" & CONT
    FechaFinEjercicio = CDate(cad)

    
    
    
    'Veamos si pertenecen a un mismo a�o
    If Abs(DateDiff("d", FechaFinEjercicio, FechaIncioEjercicio)) > 365 Then
        MsgBox "Las fechas son incorrectas. Abarca mas de un ejercicio", vbExclamation
        Exit Function
    End If
    
    
    'Comprobar que para los niveles se�alados, para la empresa
    If Not ComprobarNivelesEmpresa Then Exit Function
    Screen.MousePointer = vbHourglass
    'Llegados aqui, haremos la entrada
    'Para cade empresa cogeremos los datos
    Label21.Visible = True
    Label21.Caption = "Borrando datos anteriores"
    Label21.Refresh
    Sql = "DELETE FROM tmpbalanceconsolidado where codusu = " & vUsu.Codigo
    Conn.Execute Sql
    
    'El progress
    pb9.Value = 0
    pb9.Visible = True
    PulsadoCancelar = False
    'Para cada empresa seleccionada
    For i = 1 To Me.ListView1.ListItems.Count
        If ListView1.ListItems(i).Checked Then
            pb9.Value = 0
            Label21.Caption = ListView1.ListItems(i).Text
            Me.Refresh
            EmpezarBalanceNuevo2 ListView1.ListItems(i).Tag, pb9
            If PulsadoCancelar Then
                Label21.Caption = ""
                Exit Function
            End If
        End If
    Next i
    
    Set Rs = New ADODB.Recordset
    
    'Hacer rectificado de cuentas a no consolidar
    Label21.Caption = "Exclusion"
    Label21.Refresh
    Sql = "Select count(codmacta) from ctaexclusion"
    Rs.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
    CONT = 0
    If Not Rs.EOF Then CONT = DBLet(Rs.Fields(0), "N")
    Rs.Close
    
    If CONT > 0 Then
        pb9.Value = 0
        pb9.Visible = True
        Me.Refresh
        Sql = "Select codmacta from ctaexclusion"
        Rs.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
        i = 1
        While Not Rs.EOF
            pb9 = CInt((i / CONT) * 1000)
            Sql = "DELETE FROM tmpbalanceconsolidado where codusu = " & vUsu.Codigo
            Sql = Sql & " AND cta = '" & Rs!codmacta & "'"
            Conn.Execute Sql
            espera 0.25
            Rs.MoveNext
            i = i + 1
        Wend
        Rs.Close
    End If
    
    'Vamos acabando antes de mostrar el informe
    Label21.Visible = False
    pb9.Visible = False
    
    'Comprobamos si hay datos
    HacerAccionesConsolidado = True
    
    
    Screen.MousePointer = vbDefault
End Function


Private Function ComprobarNivelesEmpresa() As Boolean
Dim Tablas As String

    
    ComprobarNivelesEmpresa = True
    cad = ""
    For i = 1 To ListView1.ListItems.Count
        If ListView1.ListItems(i).Checked Then cad = cad & "1"
    Next i
    If cad = "1" Then Exit Function
     
   
     
     
    Set Rs = New ADODB.Recordset
    For i = 1 To ListView1.ListItems.Count
        If ListView1.ListItems(i).Checked Then
            Sql = "Select * from ariconta" & ListView1.ListItems(i).Tag & ".empresa"
            Rs.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
            cad = ""
            If Not Rs.EOF Then
                For CONT = 4 To Rs.Fields.Count - 2  'Menos dos pq empieza en 0 y el ultimo nivel no cuenta
                    cad = cad & DBLet(Rs.Fields(CONT), "N")
                Next CONT
            End If
            'Ponemos a 0 el digito correspondiente al ultimo nivel
            CONT = Rs.Fields(3)
            cad = Mid(cad, 1, CONT - 1) & "0" & Mid(cad, CONT + 1)
            
            Rs.Close
            
            If i = 1 Then
                'La primera asignamos cad a rc, para comparar en el futuro
                RC = cad
                Tablas = ListView1.ListItems(i).Text
            Else
                'Comparamos la cadena con RC, si es igual, son iguales los niveles
                
                If RC <> cad Then
                    MsgBox "La empresa " & ListView1.ListItems(i) & " NO tiene los mismos digitos de nivel que la empresa " & Tablas, vbExclamation
                    If vUsu.Nivel > 0 Then
                        ComprobarNivelesEmpresa = False
                        Exit For
                    End If
                End If
            End If
        End If
    Next i
    Set Rs = Nothing
End Function












