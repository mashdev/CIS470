<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/Customer.Site.Master" AutoEventWireup="true" CodeBehind="CustomerPortal.aspx.cs" Inherits="WSC1.Customers.CustomerPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Label ID="lblAddCCInfo" runat="server" Visible="True" Font-Bold="True" ForeColor="Red"></asp:Label>
        <p> </p>
    </div>
    <div class="container">

      
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
            <asp:HyperLink  ID="lnkCustomerDetail" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-controls="collapseOne" runat="server">
                Site Services
            </asp:HyperLink>    
          
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">

        <div class="row">
            <div class="col-sm-2">
                <a href="PrintJob.aspx">
                <div class="thumbnail">
                    <img src="../Content/Images/Print-Icon.png" />
                    <div class="caption">
                        <strong class="center-text"> Printing Services </strong>
                    </div>
                </div>
                </a>
            </div>
            <div class="col-sm-2">
                <a href="EngravingJob.aspx">
                <div class="thumbnail">
                    <img src="../Content/Images/Engraving-Icon.png" />
                    <div class="caption">
                        <strong class="center-text"> Engraving Services </strong>
                    </div>
                </div>
                </a>
            </div>


            <br />

            <br />



        </div> <!-- end .row -->

      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        
        <asp:HyperLink  ID="lnkCurrentOrders" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" runat="server">
                Order History
            </asp:HyperLink>  

      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        Orders
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="orderID" HeaderText="orderID" SortExpression="orderID" />
                    <asp:BoundField DataField="productType" HeaderText="productType" SortExpression="productType" />
                    <asp:BoundField DataField="productQty" HeaderText="productQty" SortExpression="productQty" />
                    <asp:BoundField DataField="productCost" HeaderText="productCost" SortExpression="productCost" />
                    <asp:BoundField DataField="sumTotal" HeaderText="sumTotal" SortExpression="sumTotal" />
                    <asp:BoundField DataField="customerText" HeaderText="customerText" SortExpression="customerText" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WSC-DB-ConnectionString %>" SelectCommand="SELECT [orderID], [productType], [productQty], [productCost], [sumTotal], [customerText] FROM [orderDetails] WHERE ([customerID] = @customerID)">
                <SelectParameters>
                    <asp:SessionParameter Name="customerID" SessionField="CustomerID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>


      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <asp:HyperLink  ID="lnkOrderHistory" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" runat="server">
             Account Details
            </asp:HyperLink>           
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        
          <asp:FormView ID="fvCustomerData" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="FVSqlDataSource1" BorderStyle="Solid" CellSpacing="2" CssClass="table" Font-Bold="True" HorizontalAlign="Center" Width="80%" >
            
                <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                <fieldset>
                    
                <table class="table add-div-border" style="width: 100%;">
                    <tr>
                        <td class="pull-right">
                            First Name:
                        </td>
                        <td>
                            <asp:TextBox ID="firstnameTextBox" CssClass="input-group" runat="server" Text='<%# Bind("firstname") %>' />
                        </td>
                    </tr>
                <tr>
                    <td class="pull-right">
                        Last Name:
                    </td>
                    <td>
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Email Address:
                    </td>
                    <td>
                        <asp:TextBox ID="emailaddressTextBox" runat="server" Text='<%# Bind("emailaddress") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Street Address:
                    </td>
                    <td>
                        <asp:TextBox ID="streetaddressTextBox" runat="server" Text='<%# Bind("streetaddress") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        City:
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        State:
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Zip:
                    </td>
                    <td>
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="memberpassTextBox" runat="server" Text='<%# Bind("memberpass") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Credit Card Type:
                    </td>
                    <td>
                        <asp:TextBox ID="cc_typeTextBox" runat="server" Text='<%# Bind("cc_type") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Credit Card Number:
                    </td>
                    <td>
                        <asp:TextBox ID="cc_account_numTextBox" runat="server" Text='<%# Bind("cc_account_num") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Credit Card Expiration Date (MM/YY) :
                    </td>
                    <td>
                        <asp:TextBox ID="cc_expire_dateTextBox" runat="server" Text='<%# Bind("cc_expire_date") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <asp:LinkButton ID="UpdateButton" CssClass="pull-left" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        <asp:LinkButton ID="UpdateCancelButton" CssClass="pull-right" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>
            
            </EditItemTemplate>
            
                <EditRowStyle CssClass="table" />
            
                <HeaderStyle BackColor="#FFFF66" Font-Bold="False" />
            
            <InsertItemTemplate>
            <table class="table" style="width: 100%;">    
                <tr>
                    <td class="pull-right">
                        First Name:
                    </td>
                    <td>
                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                    </td>

                </tr>
                <tr>
                    <td class="pull-right">
                        Last Name:
                    </td>
                    <td>
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Email Address:
                    </td>
                    <td>
                        <asp:TextBox ID="emailaddressTextBox" runat="server" Text='<%# Bind("emailaddress") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Street Address:
                    </td>
                    <td>
                        <asp:TextBox ID="streetaddressTextBox" runat="server" Text='<%# Bind("streetaddress") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        City:
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        State:
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Zip:
                    </td>
                    <td>
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="memberpassTextBox" runat="server" Text='<%# Bind("memberpass") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        <asp:Label ID="ccType" runat="server" Text="**Required**"></asp:Label>
                        Credit Card Type
                    </td>
                    <td>
                        <asp:TextBox ID="cc_typeTextBox" runat="server" Text='<%# Bind("cc_type") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        <asp:Label ID="ccNumber" runat="server" Text="**Required**"></asp:Label>
                        Credit Card Number:
                    </td>
                    <td>
                        <asp:TextBox ID="cc_account_numTextBox" runat="server" Text='<%# Bind("cc_account_num") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        <asp:Label ID="ccExpiration" runat="server" Text="**Required**"></asp:Label>
                        Expiration Date:
                    </td>
                    <td>
                        <asp:TextBox ID="cc_expire_dateTextBox" runat="server" Text='<%# Bind("cc_expire_date") %>' />
                    </td>
                </tr>                
               </table> 
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
             
            <ItemTemplate>
                <%--Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' /> --%>
            <table class="table">
                <tr>
                    <td class="pull-right">
                        First Name:
                    </td>
                    <td>
                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Last Name:
                    </td>
                    <td>
                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Email Address:
                    </td>
                    <td>
                        <asp:Label ID="emailaddressLabel" runat="server" Text='<%# Bind("emailaddress") %>' />
                    </td>
                </tr>                                
                <tr>
                    <td class="pull-right">
                        Street Address:
                    </td>
                    <td>
                        <asp:Label ID="streetaddressLabel" runat="server" Text='<%# Bind("streetaddress") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        City:
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        State:
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Zip:
                    </td>
                    <td>
                        <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Password:
                    </td>
                    <td>
                        <asp:Label ID="memberpassLabel" runat="server" Text='<%# Bind("memberpass") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Credit Card Type:
                    </td>
                    <td>
                        <asp:Label ID="cc_typeLabel" runat="server" Text='<%# Bind("cc_type") %>' />
                    </td>
                </tr>                
                <tr>
                    <td class="pull-right">
                        Credit Card Number:
                    </td>
                    <td>
                        <asp:Label ID="cc_account_numLabel" runat="server" Text='<%# Bind("cc_account_num") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="pull-right">
                        Credit Card Expiration Date:
                    </td>
                    <td>
                        <asp:Label ID="cc_expire_dateLabel" runat="server" Text='<%# Bind("cc_expire_date") %>' />
                    </td>
                </tr>                                
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </td>
                </tr>
          </table>      
               <%-- &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />--%>
            </ItemTemplate>

        

        </asp:FormView>
        
        <asp:SqlDataSource ID="FVSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WSC-DB-ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([firstname], [lastname], [emailaddress], [streetaddress], [city], [state], [zip], [memberpass], [cc_type], [cc_account_num], [cc_expire_date]) VALUES (@firstname, @lastname, @emailaddress, @streetaddress, @city, @state, @zip, @memberpass, @cc_type, @cc_account_num, @cc_expire_date)" SelectCommand="SELECT [Id], [firstname], [lastname], [emailaddress], [streetaddress], [city], [state], [zip], [memberpass], [cc_type], [cc_account_num], [cc_expire_date] FROM [Users] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Users] SET [firstname] = @firstname, [lastname] = @lastname, [emailaddress] = @emailaddress, [streetaddress] = @streetaddress, [city] = @city, [state] = @state, [zip] = @zip, [memberpass] = @memberpass, [cc_type] = @cc_type, [cc_account_num] = @cc_account_num, [cc_expire_date] = @cc_expire_date WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="emailaddress" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="zip" Type="Int32" />
                <asp:Parameter Name="memberpass" Type="String" />
                <asp:Parameter Name="cc_type" Type="String" />
                <asp:Parameter Name="cc_account_num" Type="Int32" />
                <asp:Parameter Name="cc_expire_date" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Id" SessionField="customerID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="emailaddress" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="zip" Type="Int32" />
                <asp:Parameter Name="memberpass" Type="String" />
                <asp:Parameter Name="cc_type" Type="String" />
                <asp:Parameter Name="cc_account_num" Type="String" />
                <asp:Parameter Name="cc_expire_date" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>


      </div>
    </div>
  </div>
</div>

    



</div> <!-- end .container -->

</asp:Content>
