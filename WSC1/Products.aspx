<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WSC1.Products" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <img class="img-responsive" src="Content/Images/About-Image.jpg" />
        </div>
    </div>

    <h3 class="center-text">Services Offered By Us:</h3>

<div class="row">
    <div class="col-md-4 col-md-offset-2">
        <a href="/Customers/PrintJob.aspx">
            <div class="thumbnail">
                <div class="caption center-text">
                    <h3>Printing Services</h3>
                </div>
                <img class="img-responsive" src="Content/Images/printer-service.jpg" />

            </div>
        </a>
    </div>
    <div class="col-md-4">   
        <a href="/Customers/EngravingJob.aspx">
            <div class="thumbnail">
                <div class="caption center-text">
                    <h3>Engraving Services</h3>
                </div>
                <img class="img-responsive" src="Content/Images/engraving_services.jpg" />

            </div>
        </a>
    </div>
</div> <!-- end .row<> -->
    
</div> <%--end container--%>
    
        






</asp:Content>


