<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/Customer.Site.Master" AutoEventWireup="true" CodeBehind="EngravingConfirmation.aspx.cs" Inherits="WSC1.Customers.EngravingConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container">
    <br />
 <table class="table-bordered" style="margin: 0 auto; width: 50%;">
        <tr>
            <td colspan="2">
                <h3 class="center-text"> Confirm Order </h3>
                <br />
                <div class="center-text">
                   <h4> <asp:Label ID="lblOrderSuccess" runat="server" CssClass="center-block" ForeColor="Red"></asp:Label> </h4>
                    <h3> <asp:HyperLink ID="lnkPlaceOrder" Visible="false" NavigateUrl="~/Customers/EngravingJob.aspx" runat="server">Click Here To Place Another Order</asp:HyperLink> </h3>
                </div>
            </td>
        </tr>
     
        <tr>
            <td style="padding-right: 5px; width:25%;">
                <h4 class="pull-right"> Selection: </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblPoduct" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>     
        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Text On Item: </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblTextDesc" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>

        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Quantity: </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblQuantity" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>

        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Cost Per Item: </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblCostPerItem" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>

        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Order Total:</h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblTotalCost" runat="server" Text="Label"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td >
                <!-- <a href="javascript:history.go(-1)" class="go-back" >Go Back</a>  -->
                <h4 class="text-center go-back">
                    <asp:HyperLink ID="lnkGoBack" Visible="true" CssClass="go-back" NavigateUrl="javascript:history.go(-1)" runat="server">Go Back</asp:HyperLink>
                </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong >
                    <asp:Button ID="btnSubmitOrder" CssClass="btn btn-primary" runat="server" Text="Submit Order" OnClick="btnSubmitOrder_Click" />
                </strong>
            </td>
        </tr>
     
    </table>
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    
    
    
</div>




</asp:Content>
