using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC1.Admin
{
    public partial class AdminLoginMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if session is not set redirect back to login//
            if(Session["LocalAdmin"] == null)
            {
                Response.Redirect("~/Admin/Admin_1.aspx");
            }




        } /* end Page_Load */


    } /* end partial class AdminLoginMaster*/

} /* namespace WSC1.Admin */