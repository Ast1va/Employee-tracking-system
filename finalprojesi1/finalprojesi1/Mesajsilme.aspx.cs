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
    public partial class Mesajsilme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32( Request.QueryString["id"]);

            SqlCommand commandDelete = new SqlCommand("Delete from TableContac where ContacID=@pid",SqlConnectionClass.connection );

            SqlConnectionClass.CheckConnection();

            commandDelete.Parameters.AddWithValue("@pid", selectedID);

            commandDelete.ExecuteNonQuery();

            Response.Redirect("mesajlar.aspx");
        }
    }
}