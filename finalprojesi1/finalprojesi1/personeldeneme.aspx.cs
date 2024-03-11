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
    public partial class personeldeneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)

            {
                
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            SqlCommand commandEkle = new SqlCommand("Insert into TableFallow (Name, StartTime,FinishTime, Date, Task ) values (@pisim, @pbasla, @pbitis, @pgun,@pgorev)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandEkle.Parameters.AddWithValue("@pisim", TboxIsim.Text);
            commandEkle.Parameters.AddWithValue("@pbasla", TboxBaslangic.Text);
            commandEkle.Parameters.AddWithValue("@pbitis", TboxBitis.Text);
            commandEkle.Parameters.AddWithValue("@pgun", TboxTarih.Text);
            commandEkle.Parameters.AddWithValue("@pgorev", TboxGorev.Text);

            commandEkle.ExecuteNonQuery();
        }
    }
}