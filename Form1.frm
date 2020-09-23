VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00800080&
   ClientHeight    =   930
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10695
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   930
   ScaleWidth      =   10695
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   150
      Left            =   0
      Top             =   240
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public Function ScrollText(strText As String) As String
     strText = (Right$(strText, Len(strText) - 1)) & Left$(strText, 1)
     ScrollText = strText

End Function

Private Sub Form_Load()
   Form1.Caption = "            Welcome   to   my    program.!         My email: trigwc@hotmail.com                      "
End Sub

Private Sub Timer1_Timer()
Form1.Caption = ScrollText(Form1.Caption)
End Sub
