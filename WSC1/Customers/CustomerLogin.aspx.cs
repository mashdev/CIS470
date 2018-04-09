using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Customers
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                try
                {
                    if (Request.QueryString["status"].ToString() == "success")
                    {
                        lblRegistrationSuccess.Visible = true;
                    }
                    else if (Request.QueryString["status"].ToString() == null)
                    {
                        lblRegistrationSuccess.Visible = false;
                    }
                }
                catch (Exception exc)
                {
                    Response.Write("error occurred" + exc);
                }
            }

        }

        protected void btmSubmit_Click(object sender, EventArgs e)
        {
            // instantiate clsDataLayer object for access to methods //
            clsDataLayer c = new clsDataLayer();
            // check if form is posting back to Register page //
            if (IsPostBack)
            {
                lblRegistrationSuccess.Visible = true;
            }
            else
            {

                lblRegistrationSuccess.Visible = false;
            } /* end if (IsPostBack) */


          

            if (c.customerLogin(txtEmail.Text, txtPassword.Text))
            {
                
                int sessionID = c.getSessionID(txtEmail.Text);
                Session["CustomerID"] = sessionID;
                Response.Redirect("~/Customers/CustomerPortal.aspx");
            }

            {
                // //   
                lblLoginError.Text = "Incorrect username/password";

            }



        } /* end btmSubmit_Click() */
    }
}