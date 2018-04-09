using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Customers
{
    public partial class EngravingJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsCustomers c = new clsCustomers();

            // bool placeholder to check if user is registered //
            bool checkCC;

            if (Session["customerID"] == null)
            {
                // redirect if account hasn't been created // 
                Response.Redirect("~/Register.aspx");

            } /* end if{} */
            else
            {
                // grab the ID inside the session and pass it for verification //
                checkCC = c.checkCCInfoAdded(Convert.ToInt32(Session["customerID"]));

                if (checkCC)
                {
                    // if credit card info is registered enable upload button //
                    btnUpload.Visible = true;
                    lnkCCInfo.Visible = false;
                }
                else
                {
                    // disable upload button if credit is not registered
                    btnUpload.Visible = false;
                    lblCCInfo.Visible = true;
                    lnkCCInfo.Visible = true;
                }

            } /* end else{} */



            if (Page.IsPostBack)
            {
                // instantiate object for access to methods //
                //clsCustomers c = new clsCustomers();

                // Update cost of item on selection //
                int ddlPid = Convert.ToInt32(ddlProductsList.SelectedValue);
                
                //lblPoduct.Text = item;
                lblItemCost.Text = c.getDdlProductCost(ddlPid).ToString();

                //  //
                string urlString = c.getImageUrl(ddlPid);
                
                string imagePath = urlString;

                Image1.ImageUrl = imagePath;
            } /* end (Page.IsPostBack) */

            
        } /* end Page_Load() */

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // instantiate object for access to methods //
            clsCustomers c = new clsCustomers();


            // build url to with parameters set as the customer options //

            Response.Redirect("EngravingConfirmation.aspx?productType=" + ddlProductsList.SelectedValue + "&qty=" + txtQuantity.Text + "&desc=" + TextBox1.Text + "&itemCost=" + lblItemCost.Text);
        }
    }
}