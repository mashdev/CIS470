<%@ Page Title="Member Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WSC1.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />  
    
    <div class="login-box">
    
    <div class="main-login main-center">
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

        </div><!-- end .form-group -->

	    <div class="form-group">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
		    <br />
            <label for="email" class="cols-sm-2 control-label">Password</label>
                
		        <div class="cols-sm-10">
			        <div class="input-group">
				        <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
				        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
			        </div>
                        
		        </div>
	    </div> <!-- end .form-group -->

        <div class="form-group ">
			<asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btnSubmit_Click" />
		</div>

    </div> <!-- .main-login main-center -->

</div> <!-- end .login-box -->

<br />
<br />

</asp:Content>
