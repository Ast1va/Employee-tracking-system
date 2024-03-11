using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using finalprojesi1.Classes;

namespace finalprojesi1
{
    public partial class mesajlar : System.Web.UI.Page
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

            SqlCommand commandList = new SqlCommand("Select* from TableContac", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }

       
    }
}