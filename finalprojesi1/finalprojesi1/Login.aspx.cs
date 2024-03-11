using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using finalprojesi1.Classes;
using System.Data;


namespace finalprojesi1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("Select*from TableUser where UserMail=@pmail and UserPassword=@ppass", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandLogin.Parameters.AddWithValue("@pmail",tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", tboxPassword.Text);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (tboxMail.Text == "yagiz.uzunalioglu@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Session["UserMail"] = "yagiz.uzunalioglu@gmail.com";
                    Response.Redirect("adminpanel.aspx");
                }
                else
                {

                    Session["IsUserOnline"] = true;
                    Session["UserMail"] = dt.Rows[0].ToString();
                    Response.Redirect("ListPersonel.aspx");
                }
            }
            else
            {
                Response.Write("Hatalı giriş");
            }






        }
    }
}