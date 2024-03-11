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
    public partial class İletişimsayfası : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("Insert into TableContac (ContacMessage, ContacMail, ContacName) values (@pmsg, @pmail, @pname)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@pmsg", tboxMessage.Text);
            commandAdd.Parameters.AddWithValue("@pmail", tboxMail.Text);  
            commandAdd.Parameters.AddWithValue("@pname", tboxName.Text);  

            commandAdd.ExecuteNonQuery();

        }
    }
}