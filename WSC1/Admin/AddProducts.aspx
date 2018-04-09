<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLoginMaster.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="WSC1.Admin.AddProducts" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
<div class="container">
    <table class="table">
        <tr>
            <td>
                Product Name
            </td>
            <td>
                <asp:TextBox ID="txtProductNm" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Category
            </td>
            <td>
                <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Product Description
            </td>
            <td>
                <textarea id="txtAreaDescription" cols="20" rows="2"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                Product Image
            </td>
            <td>
                <input id="ifImageUpload" type="file" />
            </td>
        </tr>
        <tr>
            <td>
                Price
            </td>
            <td>
                <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                -
            </td>
            <td>
                <asp:Button ID="btnSubmitProduct" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</div>


</asp:Content>
