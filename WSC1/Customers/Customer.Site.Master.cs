using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Customers
{
    public partial class Customer_Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // verify that the session is not null // 
            // otherwise redirect back to login //
            if (Session["CustomerID"] == null)
            {
                // hide logout button if not logged in //
                btnLogOut.Visible = false;
                lnkProfile.Visible = false;
                // return user back to login page//
                //Response.Redirect("~/Customers/CustomerLogin.aspx");
            }
            else
            {
                btnLogOut.Visible = true;
                lnkProfile.Visible = true;
            }


        }

        // btn click method to destroy user sessions //
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            // instantiate clsDataLayer object //
            clsDataLayer c = new clsDataLayer();

            // run the signOut method to clear sessions //
            c.signOut();

            //remove the logout button from navbar
            btnLogOut.Visible = false;
            lnkProfile.Visible = false;

            // redirect back to login page //
            Response.Redirect("~/Default.aspx");

        }







    }
}