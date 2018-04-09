using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Customers
{
    public partial class PrintConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // get access to methods from class //
            clsCustomers c = new clsCustomers();

            // get the ID number of the print selection type
            int printType = Convert.ToInt32(Request.QueryString["printType"]);

            // set Selection label to product name //
            string selectionName = c.getDdlProductName(printType);
            lblPaperType.Text = selectionName;

            // set Quantity label to amount ordered //
            lblQty.Text = Request.QueryString["qty"];

            // set Order Total to calculated price //
            decimal pricePage;
            pricePage = c.getDdlProductCost(printType);
            lblPricePerPage.Text = pricePage.ToString();

            // calculate order total //
            decimal sumTotal;
            int paperQty = Convert.ToInt32(lblQty.Text);
            sumTotal = pricePage * paperQty;
            lblOrderTotal.Text = sumTotal.ToString();


            // set Description label to customer text //
            lblDesc.Text = Request.QueryString["desc"];

            

        } /* end Page_Load() */

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            

            if (FileUpload1.HasFile)
            {
                try
                {
                    // get access to methods from class //
                    clsCustomers c = new clsCustomers();

                    // get customer ID and convert to INT //
                    int custID = Convert.ToInt32(Session["customerID"]);

                    // get the file name in to filename variable and get file extension //
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    string extension = Path.GetExtension(filename);

                    // get current date/time/second //
                    string getCurrentDate = DateTime.Now.ToString("_yyy-MM-dd-h-mm-tt");

                    // set order status to pending for order //
                    string status = "pending";
                    
                    // submit order to Orders table //
                    c.submitOrder(custID, status);

                    int orderNumber;

                    // method to access customer's newly placed order //
                    orderNumber = c.getOrderedID(custID);

                    // variable to store the product's ID //
                    int proID = Convert.ToInt32(Request.QueryString["printType"]);

                    // get product name by its ID //
                    string proName = c.getDdlProductName(proID);

                    // calculate the grand total // 
                    int ttlAmtItems = Convert.ToInt32(Request.QueryString["qty"]);
                    decimal gTotal;
                    decimal costPerItem = Convert.ToDecimal(lblPricePerPage.Text);
                    gTotal = ttlAmtItems * costPerItem;
                    
                    // get customer quantity //
                    int custQty = ttlAmtItems;

                    // get the customer input text //
                    string description = lblDesc.Text;

                    string fullFileNameAndDate = filename + getCurrentDate + extension;

                    // save the selected file to the specified folder //
                    FileUpload1.SaveAs(Server.MapPath("PrintJobUploads/") + fullFileNameAndDate);


                    // insert order to orderDetails table //
                    c.submitOrderDetails(orderNumber, custID, proID, proName, ttlAmtItems, costPerItem, gTotal, description, fullFileNameAndDate);
                    

                    // get file name for input to database //
                    lblUploadSuccess.Text = "File has been successfully uploaded to: " + filename + getCurrentDate + extension;


                    // inform customer that order was submitted and return confirmation and confirmation number (order number) //
                    lblUploadSuccess.Text = "Order successfully submitted, confirmation number: " + orderNumber.ToString();

                    btnSubmit.Visible = false;
                    lnkGoBack.Visible = false;
                    lnkPlaceOrder.Visible = true;
                    FileUpload1.Visible = false;

                } /* end try{} */

                catch (Exception ex)
                {
                    lblUploadSuccess.Text = "Error occurred: " + ex.ToString();
                } /* end catch{} */

                
            } /* end if statement */
        }
    }
}