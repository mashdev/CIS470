<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="WSC1.Manager" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="sqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:WSC-DB-ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" Width="298px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlDataSourceUsers">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="emailaddress" HeaderText="emailaddress" SortExpression="emailaddress" />
            <asp:BoundField DataField="streetaddress" HeaderText="streetaddress" SortExpression="streetaddress" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="zip" HeaderText="zipcode" SortExpression="zip" />
            <asp:BoundField DataField="memberpass" HeaderText="memberpass" SortExpression="memberpass" />
            <asp:BoundField DataField="assignedgroup" HeaderText="assignedgroup" SortExpression="assignedgroup" />
        </Columns>
</asp:GridView>

</asp:Content>