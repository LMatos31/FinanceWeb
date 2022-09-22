using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

// Troelsen, A. and Japiske, P., n.d. C# 6.0 And The .NET 4.6 Framework. 7th ed. New York: Apress Media.
//W3schools.com. 2020. C# Tutorial (C Sharp). [online] Available at: <https://www.w3schools.com/cs/default.asp> [Accessed 10 October 2020].
//ProgrammingKnowledge, 2013. WPF Tutorial. [video] Available at: <https://www.youtube.com/channel/UCs6nmQViDpUw0nuIx9c_WvA> [Accessed 10 October 2020].

namespace FinanceWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog = Finances; Integrated Security = True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // THIS WILL LOGIN INTO THE WEBSITE
            lblError.Visible = false;
            if (txtUser.Text == "")
            {
                lblError.Visible = true;
            }
            else
                if (txtPassword.Text == "")
            {
                lblError.Visible = true;
            }
            else
            {
                SqlDataReader data;
                string query = ("SELECT * from FINANCES WHERE Username = '" + txtUser.Text + "' AND Password = '" + txtPassword.Text + "'");
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    
                    Session["User"] = txtUser.Text;
                    string session = Session["User"].ToString();
                    data = cmd.ExecuteReader();
                    if (data.Read())
                    {
                        Response.Redirect("Data.aspx");
                    }
                    else
                    {
                        lblError.Visible = true;
                    }
                    con.Close();
                }
            }
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            //THIS WILL TAKE THE PERSON TO THE REGISTER PAGE
            Response.Redirect("Register.aspx", true);
        }
    }
}