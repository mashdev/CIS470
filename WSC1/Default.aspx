<%@ Page Title="WSC CO." Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WSC1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container title-bar-adj">
    <div class="jumbotron bg-color-jumbotron">
        <h1 class="center-text">William Specialty Co.</h1>
            <p class="lead center-text">Your Go-To shop for custom printing and engraving services.</p>
            <p class="center-text"><a href="Register.aspx" class="btn btn-primary btn-lg">Get Started &raquo;</a></p>
                <img class="img-responsive" src="/Content/Images/mast-head.png" />
    </div>


    <br />

    <div class="row">
      <div class="col-sm-6 col-md-4">
          <a href="/Customers/PrintJob.aspx" class="hyperlink-format">
        <div class="thumbnail center-all">
            <img class="img-responsive darken-on-hover" src="/Content/Images/printing.png" />
          </a>
              <h3>Printing</h3>
            <p>Printing services offered for multiple types of paper stock, black & white, and color printing</p>
        </div>
        
      </div> <%--end row--%>

      <div class="col-sm-6 col-md-4">
          <a href="#" class="hyperlink-format">
        <div class="thumbnail center-all">
            <img class="img-responsive darken-on-hover" src="/Content/Images/engraving.png" />
            </a>
            <h3>Engraving</h3>
            <p>Engraving services provided on a variety of media available in our catalog.</p>
            
          </div>
        
      </div>

      <div class="col-sm-6 col-md-4">
          <a href="#" class="hyperlink-format">
        <div class="thumbnail center-all">
            <img class="img-responsive darken-on-hover" src="/Content/Images/create.png" />
            </a>
            <h3>Be Creative</h3>
            <p>Since we offer a large variety of options for what you need, the sky is the limit to your creativity!</p>
            
          </div>
        
      </div>

    </div>
    

</asp:Content>
