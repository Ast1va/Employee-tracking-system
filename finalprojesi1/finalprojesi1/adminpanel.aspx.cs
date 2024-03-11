using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalprojesi1
{
    public partial class admindeneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsUserAdmin"] != null && Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}  