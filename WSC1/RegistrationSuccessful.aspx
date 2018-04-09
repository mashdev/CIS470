<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationSuccessful.aspx.cs" Inherits="WSC1.RegistrationSuccessful" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">

    <h2 class="center-text">
        You have successfully registered!
    </h2>

    <h2 class="center-text">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customers/CustomerLogin.aspx">Click here to log into your account.</asp:HyperLink>
    </h2>
</div>
</asp:Content>
