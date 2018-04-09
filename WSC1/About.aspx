<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WSC1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <img class="img-responsive" src="Content/Images/AboutUs.png" style="width: 100%;" />
        </div>
    </div>
</div>
<div class="container">
    <h2><%: Title %>.</h2>
    <h3>About Williams Specialty Company</h3>

    <div class="row">
        <div class="col-md-8 about-text-size">
            <p>WSC is a small organization that prides itself in providing great customer service and quality products that you can depend on.</p>
            <p> We specialize in printing jobs where we give you the flexibility to upload documents in specific formats and allow you to pick the size, color type of paper stock and quantity.</p>
            <p>
                With our state of the art equipment we can go above and beyond in providing a product that will be sure to impress as well as keeping
                you in budget due to our competitive pricing in the market.
            </p>
        </div>
         <div class="col-xs-6 col-md-4">
            <a href="#" class="thumbnail">
              <img src="Content/Images/color-printers.jpg" " alt="..." />
            </a>
          </div>
    </div>

    <div class="row">
         <div class="col-xs-6 col-md-4">
            <a href="#" class="thumbnail">
              <img src="Content/Images/engraver.jpg" " alt="..." />
            </a>
          </div>
        <div class="col-md-8 about-text-size">
        
            <p>WSC is a small organization that prides itself in providing great customer service and quality products that you can depend on.</p>
            <p> We specialize in printing jobs where we give you the flexibility to upload documents in specific formats and allow you to pick the size, color type of paper stock and quantity.</p>
            <p>
                With our state of the art equipment we can go above and beyond in providing a product that will be sure to impress as well as keeping
                you in budget due to our competitive pricing in the market.
            </p>
        </div>

    </div>
</div>

    
    

    </div>


</asp:Content>
