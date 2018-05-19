Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class Grid_ColumnResizing_OverflowHidden_DataItemTemplate
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Function GetCellText(ByVal text As String) As String
		If String.IsNullOrEmpty(text) Then
			Return "&nbsp;"
		Else
			Return text
		End If
	End Function
End Class
