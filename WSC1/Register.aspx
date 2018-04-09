<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WSC1.Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Your Header here</h4>
                    </div>
                    <div class="modal-body">
                        You have successfully registered for an account, please login on the next screen.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" runat="server" id="btncls">
                            Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
     </div>

    <div class="container text-center">
        <asp:Label ID="lblUsrExists" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="Large"></asp:Label>
    </div>

<div class="container">
    <h3 class="center-text">Register For an Account</h3>
<div class="row">
        <div class="col-md-4"></div>
    <div class="col-md-4">
    
    <div class="form-group">
        <label for="email" class="control-label">First Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**Required" ControlToValidate="firstNm" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
            <div class="cols-sm-12">
			    <div class="input-group">
				    <span class="input-group-addon center-text"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
				    <asp:TextBox ID="firstNm" CssClass="form-control" runat="server"></asp:TextBox>
			    </div>
            </div>
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**Required" ControlToValidate="lastNm" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
				    <asp:TextBox ID="lastNm" CssClass="form-control" runat="server"></asp:TextBox>
			    </div>
	        </div> 
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">Email Address</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**Required" ControlToValidate="email" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;
            <div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
				    <asp:TextBox ID="email" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
			    </div>
	        </div> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="  **Enter a Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**Required" ControlToValidate="password" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
				    <asp:TextBox ID="password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
			    </div>
	        </div> 
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">Confirm Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="**Required" ControlToValidate="confirmpass" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i></span>
				    <asp:TextBox ID="confirmpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
			    </div>
	            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpass" ErrorMessage="Both passwords must match" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
	        </div> 
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">Street Address</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="**Required" ControlToValidate="streetaddress" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-home" aria-hidden="true"></i></span>
				    <asp:TextBox ID="streetaddress" CssClass="form-control" runat="server"></asp:TextBox>
			    </div>
	        </div> 
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">City</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="**Required" ControlToValidate="city" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i></span>
				    <asp:TextBox ID="city" CssClass="form-control" runat="server"></asp:TextBox>
			    </div>
	        </div> 
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">State </label> <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="**Required" ControlToValidate="state" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i></span>
				    <asp:TextBox ID="state" CssClass="form-control" runat="server"></asp:TextBox>
			    </div>
	        </div> 
    </div><!-- end .form-group -->

    <div class="form-group">
        <label for="email" class="cols-sm-2 control-label">Zip</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="**Required" ControlToValidate="zipcode" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="cols-sm-10">
			    <div class="input-group">
				    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i></span>
				    <asp:TextBox ID="zipcode" CssClass="form-control" runat="server"></asp:TextBox>
			    </div>
	        </div> 
    </div><!-- end .form-group -->
        <asp:Label ID="lblStatus" Visible="false" runat="server" Text="success"></asp:Label>
        <asp:Button ID="submit" runat="server" Text="Register" CssClass="btn btn-success" OnClick="btnSubmit" />


    </div>
    <div class="col-md-4"></div>
</div>
    </div>
</asp:Content>
