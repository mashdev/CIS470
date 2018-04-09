<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/Customer.Site.Master" AutoEventWireup="true" CodeBehind="PrintConfirmation.aspx.cs" Inherits="WSC1.Customers.PrintConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container" >

    <br />
    <table class="table-bordered" style="margin: 0 auto; width: 80%;">
        <tr>
            <td colspan="2">
                <h3 class="center-text"> Confirm Order </h3>
                
                <div class="center-text">
                    <h4><asp:Label ID="lblUploadSuccess" runat="server" CssClass="center-block" ForeColor="Red"></asp:Label> </h4>
                    <h3> <asp:HyperLink ID="lnkPlaceOrder" Visible="false" NavigateUrl="~/Customers/PrintJob.aspx" runat="server">Click Here To Place Another Order</asp:HyperLink> </h3>
                </div>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right">Selection:</h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblPaperType" runat="server" BackColor=""></asp:Label> 
                </strong>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Quantity: </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblQty" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>

        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Price Per Page: </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    $<asp:Label ID="lblPricePerPage" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>

        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Order Total: </h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    $<asp:Label ID="lblOrderTotal" runat="server" Text="Label"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Description:</h4>
            </td>
            <td style="padding-left: 10px;">
                <strong>
                    <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 5px;">
                <h4 class="pull-right"> Upload File:</h4>
            </td>
            <td>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only .PDF, DOC, DOCX. TXT files allowed" ControlToValidate="FileUpload1" ForeColor="Red" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf|.txt)$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="File Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                 <h4 class="text-center go-back">
                    <asp:HyperLink ID="lnkGoBack" Visible="true" CssClass="go-back" NavigateUrl="javascript:history.go(-1)" runat="server">Go Back</asp:HyperLink>
                </h4>
            </td>
            <td>
                <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Purchase" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
   
    </div>

    

    




</asp:Content>
