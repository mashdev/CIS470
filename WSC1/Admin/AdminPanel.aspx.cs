using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSC1.BusinessLayer;

namespace WSC1.Admin
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if(Session["LocalAdmin"].ToString() != "LocalAdministrator")
            // verify that the session is not null // 
            // otherwise redirect back to login //
            if (Session["LocalAdmin"] == null)
            {
                Response.Redirect("~/Admin/Admin_1.aspx");
            }



        } /* end Page_Load() */

        protected void btnSubmitCategory_Click(object sender, EventArgs e)
        {
            /*
            clsBusinessLayer c = new clsBusinessLayer
            {
                CategoryName = txtCategoryNm.Text
            };

            c.addCategory();
            txtCategoryNm.Text = string.Empty;
            Response.Redirect("~/Admin/AdminPanel.aspx");
            */
        }
    } /* end AdminPanel{} */
}