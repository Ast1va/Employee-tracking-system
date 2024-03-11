using finalprojesi1.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalprojesi1
{
    public partial class admüyegör : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandAdm = new SqlCommand("Select * from TableUser", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            SqlDataReader dr = commandAdm.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }
    }
}   //Eklenmedi