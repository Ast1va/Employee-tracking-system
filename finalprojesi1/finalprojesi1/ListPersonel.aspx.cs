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
    public partial class ListPersonel : System.Web.UI.Page
    {
        public SqlConnection Sqlconnectionclass { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandTime = new SqlCommand("Select * from TableFallow", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            SqlDataReader dr =commandTime.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();


        }
    }
}