using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSC1.BusinessLayer;
using System.Data.SqlClient;
using System.Data;

namespace WSC1.Admin
{
    public partial class AddEditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitCategory_Click(object sender, EventArgs e)
        {
            clsBusinessLayer c = new clsBusinessLayer
            {
                CategoryName = txtCategoryNm.Text
            };

            c.addCategory();
            txtCategoryNm.Text = string.Empty;
            Response.Redirect("~/Admin/AddProducts.aspx");

        } /* btnSubmitCategory_Click() */

    } /* end partial class AddEditCategory */

    } /* namespace WSC1.Admin */