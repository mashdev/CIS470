<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/Customer.Site.Master" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="WSC1.Customers.CustomerLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="login-box">

        <div class="main-center">
            <h2 class="center-text">Customer Login</h2>
        </div>

        <div class="main-login main-center">
        <div class="center-text">
            <asp:Label ID="lblRegistrationSuccess" runat="server" Visible="false" Text="Registration Successful, Please Log In." Font-Size="Large" ForeColor="Red"></asp:Label>
        </div>
            <asp:Label ID="lblLoginError" runat="server" ForeColor="Red" CssClass="center-text" Font-Bold="True"></asp:Label>

            <div class="form-group">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage=" **Please Use a Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <label for="email" class="cols-sm-2 control-label">Email</label>

                <div class="cols-sm-10">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Address is Required" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!-- end .form-group -->

            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="email" class="cols-sm-2 control-label">Password</label>

                <div class="cols-sm-10">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
                        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <br />
                    <asp:Button ID="btmSubmit" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btmSubmit_Click" />
                </div>
                <br />
                Don't have an account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Click Here!</asp:HyperLink>
                <br />
                <asp:HyperLink ID="lnkAdminLogin" NavigateUrl="~/Admin/Admin_1.aspx" runat="server">admin login</asp:HyperLink>
            </div>
            <!-- end .form-group -->

        </div>
        <!-- .main-login main-center -->

    </div>
    <!-- end .login-box -->


</asp:Content>
