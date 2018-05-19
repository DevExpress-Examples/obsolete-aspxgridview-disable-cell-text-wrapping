<%-- BeginRegion TagPrefix and page properties --%>
<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Grid_ColumnResizing_OverflowHidden_DataItemTemplate" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v7.3" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v7.3" Namespace="DevExpress.Web.ASPxGridView"  TagPrefix="dxwgv" %>

<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Disable cell text wrapping during column resizing operations</title>
</head>
<body>
	<form id="form1" runat="server">

	<dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="AccessDataSource1" KeyFieldName="CustomerID" Width="100%">
		<%-- BeginRegion Grid Columns --%>
		<Columns>
			<dxwgv:GridViewDataColumn FieldName="ContactName" VisibleIndex="0">
			</dxwgv:GridViewDataColumn>
			<dxwgv:GridViewDataColumn FieldName="CompanyName" VisibleIndex="1">
			</dxwgv:GridViewDataColumn>
			<dxwgv:GridViewDataColumn FieldName="City" VisibleIndex="2">
			</dxwgv:GridViewDataColumn>
			<dxwgv:GridViewDataColumn FieldName="Region" VisibleIndex="3">
			</dxwgv:GridViewDataColumn>
			<dxwgv:GridViewDataColumn FieldName="Country" VisibleIndex="4">
			</dxwgv:GridViewDataColumn>
		</Columns>
		<%-- EndRegion --%>
		<SettingsLoadingPanel Mode="ShowOnStatusBar" />
		<SettingsBehavior  ColumnResizeMode="Control"/>
		<Templates>
			<DataItem>
				<div style="height:18px;overflow:hidden;white-space:nowrap;">
				<%#GetCellText(Container.Text)%></div>
			</DataItem>
		</Templates>
	</dxwgv:ASPxGridView>
	<%-- BeginRegion DataSource--%>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
		SelectCommand="SELECT * FROM [Customers]" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Customers] SET [CompanyName] = ?, [ContactName] = ?, [ContactTitle] = ?, [Address] = ?, [City] = ?, [Region] = ?, [PostalCode] = ?, [Country] = ?, [Phone] = ?, [Fax] = ? WHERE [CustomerID] = ?">
	</asp:AccessDataSource>
	<%-- EndRegion --%>
	</form>
</body>
</html>
