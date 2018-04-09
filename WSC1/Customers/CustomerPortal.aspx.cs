using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Customers
{
    public partial class CustomerPortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // instantiate objects for method access //
            clsDataLayer c = new clsDataLayer();
            clsCustomers p = new clsCustomers();

            if (Session["CustomerID"] == null)
            {
                Response.Redirect("~/Customers/CustomerLogin.aspx");
                
            } /* end if() */

            bool creditCardAdded;
            creditCardAdded = p.checkCCInfoAdded( Convert.ToInt32(Session["CustomerID"]) );

            if (!creditCardAdded)
            {
                lblAddCCInfo.Text = "Please click on Account Details below and enter a credit card";
            }

            if(Page.IsPostBack)
            {
                lblAddCCInfo.Visible = false;
            }

        } /* end Page_Load() */



        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            clsDataLayer c = new clsDataLayer();
            c.signOut();
            Response.Redirect("/Default.aspx");
        }
    }
}