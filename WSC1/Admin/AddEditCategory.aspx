<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLoginMaster.Master" AutoEventWireup="true" CodeBehind="AddEditCategory.aspx.cs" Inherits="WSC1.Admin.AddEditCategory" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <table class="table">
      <tr>
          <td colspan="2">
              <h2> Add New Category</h2>
          </td>
      </tr>
        <tr>
            <td>
                Category Name
            </td>
            <td>
                <asp:TextBox ID="txtCategoryNm" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:Button ID="btnSubmitCategory" runat="server" Text="Submit" OnClick="btnSubmitCategory_Click" />
            </td>
        </tr>

       
    </table>

</asp:Content>
