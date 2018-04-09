<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/Customer.Site.Master" AutoEventWireup="true" CodeBehind="EngravingJob.aspx.cs" Inherits="WSC1.Customers.EngravingJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <h1 class="center-text">Choose a Product</h1>
    <h4 class="center-text"> <asp:Label ID="lblCCInfo" runat="server" Text="Please enter your credit information before proceeding" ForeColor="Red" Visible="False"></asp:Label> </h4>
    <h4 class="center-text">
        <asp:HyperLink ID="lnkCCInfo" runat="server" NavigateUrl="~/Customers/CustomerPortal.aspx" Visible="False">Click here to add your credit card</asp:HyperLink>
    </h4>
    <br />
    <asp:Label ID="lblUploadSuccess" runat="server" Text=""></asp:Label>
    <br />

    
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h3>Choose a product</h3>

            <asp:DropDownList ID="ddlProductsList" runat="server" AutoPostBack="True" DataSourceID="ProductsSqlDataSource" DataTextField="Name" DataValueField="ProductID" CssClass="form-control"></asp:DropDownList>

            <asp:SqlDataSource ID="ProductsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WSC-DB-ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([ProductID] &gt;= @ProductID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="200" Name="ProductID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <asp:Image ID="Image1" runat="server" />
            
            <br />
            <strong> Cost for each trophy: <asp:Label ID="lblItemCost" runat="server" Text=""></asp:Label> </strong>
            <br />
            <asp:RequiredFieldValidator InitialValue="0" ID="Req_ID" Display="Dynamic" ValidationGroup="g1" runat="server" ControlToValidate="ddlProductsList" Text="Please Choose a Color Type" ErrorMessage="ErrorMessage" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlProductsList"></asp:RequiredFieldValidator>
        </div> 
    </div>

    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h3>Choose your quantity</h3>
            <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Number Quantity" ControlToValidate="txtQuantity" ValidationExpression="\d+" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>

            <br />            
        </div> 
    </div>
    
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h3>Text to engrave into product</h3>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="80px" TextMode="MultiLine"></asp:TextBox>
            
            <br />
            <asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnUpload_Click" />
            <%--<asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnUpload_Click" />--%>
        </div> 
    </div>

    <br />
    <br />








</asp:Content>
