using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel.Design;

// Troelsen, A. and Japiske, P., n.d. C# 6.0 And The .NET 4.6 Framework. 7th ed. New York: Apress Media.
//W3schools.com. 2020. C# Tutorial (C Sharp). [online] Available at: <https://www.w3schools.com/cs/default.asp> [Accessed 10 October 2020].
//ProgrammingKnowledge, 2013. WPF Tutorial. [video] Available at: <https://www.youtube.com/channel/UCs6nmQViDpUw0nuIx9c_WvA> [Accessed 10 October 2020].

namespace FinanceWeb
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog = Finances; Integrated Security = True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            //THIS WILL REGISTER THE PERSON
            string query = "INSERT INTO FINANCES(USERNAME,PASSWORD) VALUES('" + this.txtUser.Text + "','" + this.txtPass.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblCreate.Visible = true;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //THIS WILL TAKE THE PERSON TO THE LOGIN PAGE
            Response.Redirect("Login.aspx", true);
        }
    }
}