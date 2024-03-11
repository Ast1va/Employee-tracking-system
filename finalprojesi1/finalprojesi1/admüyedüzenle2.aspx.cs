using finalprojesi1.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace finalprojesi1
{
    public partial class admüyedüzenle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
            if (Session["IsUserAdmin"] != null && Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string userMail = GridView1.DataKeys[e.RowIndex].Value.ToString();
            TextBox txtUserPassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtUserPassword");
            string newUserPassword = txtUserPassword.Text;

            UpdateUserInDatabase(userMail, newUserPassword);

            GridView1.EditIndex = -1; 
            BindGridView(); 
        }

        private void BindGridView()
        {
            SqlCommand commandAdm = new SqlCommand("SELECT UserMail, UserPassword FROM TableUser", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            SqlDataAdapter dataAdapter = new SqlDataAdapter(commandAdm);
            DataTable dataTable = new DataTable();

            dataAdapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        private void UpdateUserInDatabase(string userMail, string newUserPassword)
        {
            SqlCommand commandUpdate = new SqlCommand("UPDATE TableUser SET UserPassword = @UserPassword WHERE UserMail = @UserMail", SqlConnectionClass.connection);
            commandUpdate.Parameters.AddWithValue("@UserPassword", newUserPassword);
            commandUpdate.Parameters.AddWithValue("@UserMail", userMail);

            SqlConnectionClass.CheckConnection();

            commandUpdate.ExecuteNonQuery();
        }
    }
}
