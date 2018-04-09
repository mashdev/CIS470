using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Customers
{
    public partial class StartOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["CustomerLoggedIn"] == null)
            {
                Response.Redirect("Customers/CustomerLogin.aspx");
            }
            else
            {
                Response.Write("Welcome Shopper!");
            }
        }
    }
}