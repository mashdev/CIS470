<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLoginMaster.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="WSC1.Admin.AdminPanel" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="gvSqlDataSource">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" ReadOnly="True" SortExpression="fullname" />
                <asp:BoundField DataField="customeraddress" HeaderText="customeraddress" ReadOnly="True" SortExpression="customeraddress" />
                <asp:BoundField DataField="productQty" HeaderText="productQty" SortExpression="productQty" />
                <asp:BoundField DataField="productType" HeaderText="productType" SortExpression="productType" />
                <asp:BoundField DataField="sumTotal" HeaderText="sumTotal" SortExpression="sumTotal" />
                <asp:BoundField DataField="customerText" HeaderText="customerText" SortExpression="customerText" />
                <asp:BoundField DataField="orderStatus" HeaderText="orderStatus" SortExpression="orderStatus" />
            </Columns>
        </asp:GridView>



<asp:SqlDataSource ID="gvSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WSC-DB-ConnectionString %>" SelectCommand="select CONCAT(u.firstname,' ', u.lastname) as fullname, CONCAT(u.streetaddress, ' ', u.city, ', ', u.[state], ' ', u.zip) as customeraddress,
od.productQty, od.productType, od.sumTotal, od.customerText, o.orderStatus

From Users as u

Inner Join orderDetails od
on od.customerID = u.Id

Inner Join Orders o
on od.orderID = o.orderID

Where o.orderStatus = 'pending'">

</asp:SqlDataSource>



    </div>
    <div class ="container">
        
    </div>


</asp:Content>
