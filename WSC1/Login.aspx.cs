using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using WSC1.Customers;

namespace WSC1
{
    public partial class Login : System.Web.UI.Page
    {

        clsCustomers c = new clsCustomers();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // check if form is posting back to Register page //
            if (IsPostBack)
            {
                if(c.checkEmailAddrs(txtEmail.Text, txtPassword.Text) == 1)
                {
                    Response.Redirect("Manager.aspx");
                }
                else
                {
                    // //   
                    lblLoginError.Text = "Incorrect username/password";
                }


            } /* end if (IsPostBack) */

        } /* end btnSubmit_Click */

    } /* public partial class Login : System.Web.UI.Page */

} /* namespace WSC1 */