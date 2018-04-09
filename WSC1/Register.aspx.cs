using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


        } /* end Page_Load */

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //  // pending delete
        //} /* end btnSubmit_Click */

        protected void btnSubmit(object sender, EventArgs e)
        {
            // instantiate clsDataLayerObject for access to methods//
            clsDataLayer c = new clsDataLayer();

            // check if form is posting back to Register page //
            /* if (IsPostBack)
            {
            }  end IsPostBack */


            if (c.checkCustomerExists(email.Text) == 1 )

                {
                    lblUsrExists.Text = "Email address already exists, try a different address";
                    //Response.Write("Email address already exists");
                    //Response.Redirect("Register.aspx");
                }

                else
                {

                // try-catch takes query insert and then responds with success or failure //
                
                try
                    {
                        c.createCustomer(firstNm.Text, lastNm.Text, email.Text, streetaddress.Text, city.Text, state.Text, zipcode.Text, password.Text);
                        Session["LoggedInUser"] = c.getSessionID(email.Text);
                        Response.Redirect("RegistrationSuccessful.aspx");
                }

                    catch (Exception ex)
                    {
                        // show error message if database insert is unsuccessful //
                        Response.Write("Error occurred: " + ex.ToString());

                    }
                /* end catch (Exception ex) */

                } /* end else statement*/


            
        }

    } /* public partial class Register : System.Web.UI.Page */

} /* end namespace WSC1*/