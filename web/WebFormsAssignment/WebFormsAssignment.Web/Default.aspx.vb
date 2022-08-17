Imports System.Web.Configuration
Imports WebFormsAssignment.Data

Public Class _Default
	Inherits Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
		If Not Page.IsPostBack Then
			ReloadData()
		End If
	End Sub

	Private Sub ReloadData()
		Dim orders = OrderData.GetOrders(WebConfigurationManager.ConnectionStrings("DbConnectionString").ConnectionString)
		gvOrders.DataSource = orders
		gvOrders.DataBind()
	End Sub

	Protected Sub btnRefresh_Click(sender As Object, e As EventArgs)
		ReloadData()
	End Sub
End Class