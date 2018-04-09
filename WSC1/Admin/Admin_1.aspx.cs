using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSC1.BusinessLayer;

namespace WSC1.Admin
{
    public partial class Admin_1 : System.Web.UI.Page
    {
        // //
        clsBusinessLayer bl = new clsBusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnAdminLogin(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                //
                if (bl.checkAdmin(txtAdminLogin.Text, txtAdminPassword.Text ) == 1)
                {
                    Session["LocalAdmin"] = "Administrator";

                    Response.Redirect("~/Admin/AdminPanel.aspx");

                }
                else
                {
                    lblLoginError.Text = "Username/Password Incorrect";
                }


            } /* end if(IsPostBack) */



        }


    }
}