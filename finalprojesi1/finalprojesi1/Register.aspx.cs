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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand commandRegister = new SqlCommand("Insert into TableUser(UserMail, UserPassword) values (@pmail, @ppass)", SqlConnectionClass.connection );

            SqlConnectionClass.CheckConnection();

         

            commandRegister.Parameters.AddWithValue("@pmail",tboxMail.Text);
            commandRegister.Parameters.AddWithValue("@ppass", tboxPassword.Text);

            commandRegister.ExecuteNonQuery();
            
        }
    }
}