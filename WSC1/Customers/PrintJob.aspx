<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/Customer.Site.Master" AutoEventWireup="true" CodeBehind="PrintJob.aspx.cs" Inherits="WSC1.Customers.PrintJob" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <img class="" src="../Content/Images/upload-print-job.jpg" style="width:100%" />
        </div>
    </div>
    
</div>

<div class="container">
    <h1 class="center-text">Send a File</h1>
    <h4 class="center-text"> <asp:Label ID="lblCCInfo" runat="server" Text="Please enter your credit information before proceeding" ForeColor="Red" Visible="False"></asp:Label> </h4>
    <h4 class="center-text">
        <asp:HyperLink ID="lnkCCInfo" runat="server" NavigateUrl="~/Customers/CustomerPortal.aspx" Visible="False">Click here to add your credit card</asp:HyperLink>
    </h4>
    <br />
    <asp:Label ID="lblUploadSuccess" runat="server" Text=""></asp:Label>
    <br />

    
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h3>Choose a color type</h3>
            <asp:DropDownList ID="ddlPrintType" runat="server" AutoPostBack="True" DataSourceID="ddlPrintJobSqlDataSource" DataTextField="Name" DataValueField="ProductID" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="ddlPrintJobSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WSC-DB-ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([CategoryID] = @CategoryID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="100" Name="CategoryID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:RequiredFieldValidator InitialValue="0" ID="Req_ID" Display="Dynamic" ValidationGroup="g1" runat="server" ControlToValidate="ddlPrintType" Text="Please Choose a Color Type" ErrorMessage="ErrorMessage" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlPrintType"></asp:RequiredFieldValidator>
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
            <h3>List special request(s) - optional</h3>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="80px" TextMode="MultiLine"></asp:TextBox>
            
            <br />
            
            <asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Next" OnClick="btnUpload_Click" />
        </div> 
    </div>

    <br />
    <br />

</div> <!-- end .container<> -->
    

</asp:Content>
