<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebFormsAssignment.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<h2>Orders</h2>

	<div class="text-right">
		<asp:Button runat="server" ID="btnRefresh" OnClick="btnRefresh_Click" Text="Refresh" CssClass="btn btn-secondary" />
	</div>
	 
	<asp:GridView runat="server" ID="gvOrders" AutoGenerateColumns="false" CssClass="table table-striped">
		<Columns>
			<asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
			<asp:BoundField DataField="CustomerAddress" HeaderText="Customer Address" />
			<asp:BoundField DataField="OrderNumber" HeaderText="Order number" />
			<asp:BoundField DataField="OrderDate" HeaderText="Order date" />
			<asp:BoundField DataField="OrderDescription" HeaderText="Order Description" />
			<asp:BoundField DataField="OrderAmount" HeaderText="Order amount" />
		</Columns>
	</asp:GridView>

	<style>
		table tbody tr:first-child {
			color: white;
			background-color: #222 !important;
			border: 1px solid black;
		}
	</style>

</asp:Content>
