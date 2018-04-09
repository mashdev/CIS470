using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Customers
{
    public partial class EngravingConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // instantiate object for access to methods //
            clsCustomers c = new clsCustomers();

            // variable to store the product's ID //
            int itemName = Convert.ToInt32(Request.QueryString["productType"]);

            // pass the product ID to database to get product name //
            string item = c.getDdlProductName(itemName);

            // retrive and set name of product to label //
            lblPoduct.Text = item;

            // get url parameters and assign them to corresponding labels //
            lblQuantity.Text = Request.QueryString["qty"];
            lblTextDesc.Text = Request.QueryString["desc"];
            lblCostPerItem.Text = Request.QueryString["itemCost"];

            // convert url parameters to allow for multiplying total cost //
            int ttlAmtItems = Convert.ToInt32(Request.QueryString["qty"]);
            decimal costPerItem = Convert.ToDecimal(Request.QueryString["itemCost"]);

            // set cost of item * quantity to label //
            lblTotalCost.Text = (ttlAmtItems * costPerItem).ToString();

            
            //get the file path and name
            //string file = FileUpload1.PostedFile.FileName;
            
        }

        protected void btnSubmitOrder_Click(object sender, EventArgs e)
        {
            // instantiate object for access to methods //
            clsCustomers c = new clsCustomers();

            try
            {
                // First enter into orders table //
                // get customerID
                int custID = Convert.ToInt32(Session["customerID"]);

                // set order status to pending for order //
                string status = "pending";

                // submit order to Orders table //
                c.submitOrder(custID, status);

                // 2. get order ID and submit order details
                // variable to store current order ID of order
                int orderNumber;

                // method to access customer's newly placed order //
                orderNumber = c.getOrderedID(custID);

                // convert product ID to int //
                //int itemID = Convert.ToInt32(lblPoduct.Text);

                // variable to store the product's ID //
                int proID = Convert.ToInt32(Request.QueryString["productType"]);

                // get product name by its ID //
                string proName = c.getDdlProductName(proID);

                // get customer quantity //
                int custQty = Convert.ToInt32(lblQuantity.Text);

                // calculate grand total //
                decimal gTotal;
                int ttlAmtItems = Convert.ToInt32(lblQuantity.Text);
                decimal costPerItem = Convert.ToDecimal(lblCostPerItem.Text);
                gTotal = ttlAmtItems * costPerItem;
                
                // get/set customer text //
                string description = lblTextDesc.Text;

                string fileUploadNm = " ";


                c.submitOrderDetails(orderNumber, custID, proID, proName, custQty, costPerItem, gTotal, description, fileUploadNm);

                // inform customer that order was submitted and return confirmation and confirmation number (order number) //
                lblOrderSuccess.Text = "Order successfully submitted, confirmation number: " + orderNumber.ToString();

                //
                btnSubmitOrder.Visible = false;
                lnkGoBack.Visible = false;
                lnkPlaceOrder.Visible = true;

                // 3.  

            }
            catch (Exception ex)
            {
                string error = "Error occurred please try again later.. " + ex.ToString();
                lblError.Text = error;
                //error + ex.ToString();
            }



        } /* btnSubmitOrder_Click() */

    }
}