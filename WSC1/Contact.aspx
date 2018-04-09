<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WSC1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    
    <div class="row">
        <div class="col-md-12">
            <img class="img-responsive" src="Content/Images/contact-us-phone2.png" />
        </div>
    </div>
    

    <h2><%: Title %></h2>
    <h3>Have a question? Contact us!</h3>
    
    <address>
        500 N. Creative Dr.<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        602-555-9700
    </address>
    
    <h4>Want to send an email instead? We'll reply within 24 hours!</h4>
    <strong>Email Address:</strong>   <a href="mailto:Support@wsc.com">Support@WSC.com</a><br />

</div>

</asp:Content>
