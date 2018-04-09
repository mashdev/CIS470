<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_1.aspx.cs" Inherits="WSC1.Admin.Admin_1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="login-box">
    
    <div class="main-login main-center">

        <div>
            <p class="center-text"> <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Administrator Login" Font-Size="X-Large"></asp:Label> </p>
        </div>    	

	<asp:Label ID="lblLoginError" runat="server" ForeColor="Red" CssClass="center-text" Font-Bold="True"></asp:Label>
        
        <div class="form-group">
            <label for="email" class="cols-sm-2 control-label">Admin Login</label> 
		<div class="cols-sm-10">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
				<asp:TextBox ID="txtAdminLogin" runat="server"></asp:TextBox>
			</div>
		</div> 

        </div> <!-- end .form-group -->

	<div class="form-group">
		<label for="email" class="cols-sm-2 control-label">Admin Password</label>
			<div class="cols-sm-10">
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
					<asp:TextBox ID="txtAdminPassword" runat="server" TextMode="Password"></asp:TextBox>
				</div>
		        </div>
	</div> <!-- end .form-group -->

	<div class="form-group ">
		<asp:Button ID="Button1" OnClick="btnAdminLogin" runat="server" Text="Login" />
	</div>

    </div> <!-- .main-login main-center -->

</div> <!-- end .login-box -->

</asp:Content>
