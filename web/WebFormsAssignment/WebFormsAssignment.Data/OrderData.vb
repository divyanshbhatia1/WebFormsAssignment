Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class OrderData

	Public Shared Function GetOrders(connectionString As String) As List(Of OrderModel)

		Using conn As New SqlConnection(connectionString)
			conn.Open()
			Using adaptor As New SqlDataAdapter("SELECT C.Id AS CustomerId, C.Name, C.Address, O.Id As OrderId, O.Number, O.Date, O.Description, O.Amount FROM Orders O INNER JOIN Customers C ON C.Id = O.CustomerId", conn)
				Dim data As New DataTable
				adaptor.Fill(data)

				Dim orders As New List(Of OrderModel)

				For Each dr As DataRow In data.Rows
					Dim order As New OrderModel With {
						.CustomerId = Convert.ToInt32(dr.Item("CustomerId")),
						.CustomerName = dr.Item("Name").ToString(),
						.CustomerAddress = dr.Item("Address").ToString(),
						.OrderId = Convert.ToInt32(dr.Item("OrderId")),
						.OrderNumber = dr.Item("Number").ToString(),
						.OrderDate = Date.Parse(dr.Item("Date")),
						.OrderDescription = dr.Item("Description").ToString(),
						.OrderAmount = Convert.ToInt32(dr.Item("Amount"))
					}
					orders.Add(order)
				Next

				Return orders
			End Using
		End Using
	End Function


End Class
