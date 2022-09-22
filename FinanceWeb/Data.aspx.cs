using System;
using System.Collections.Generic;
using System.Data;
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
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //THIS WILL INSERT THE DATA INTO THE FINANCE DATABASE
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog = Finances; Integrated Security = True;");
            con.Open();
            string query = "INSERT INTO FINANCES(GROSS_MONTHLY_INCOME,MONTHLY_TAX_DEDUCTED,GROCERIES,WATER_AND_LIGHT,TRAVEL_COSTS,TELEPHONE,OTHER_EXPENSES,MONTHLY_HOME_RENTAL,HOME_PURCHASE_PRICE,HOME_TOTAL_DEPOSIT,HOME_INTEREST_RATE,HOME_NUMBER_OF_MONTHS,VEHICLE_MAKE_AND_MODEL,VEHICLE_PURCHASE_PRICE,VEHICLE_TOTAL_DEPOSIT,VEHICLE_INTEREST_RATE,VEHICLE_INSURANCE_PREMIUM) VALUES('" + this.txtIncome.Text + "','" + this.txtTax.Text + "','" + this.txtGroc.Text + "','" + this.txtWL.Text + "','" + this.txtTravel.Text + "','" + this.txtCell.Text + "','" + this.txtOther.Text + "','" + this.txtRent.Text + "','" + this.txtHPP.Text + "','" + this.txtHTD.Text + "','" + this.txtHIR.Text + "','" + this.txtMonths.Text + "','" + this.txtMM.Text + "','" + this.txtVPP.Text + "','" + this.txtVTD.Text + "','" + this.txtVIR.Text + "','" + this.txtInsurance.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            // THIS WILL DISPLAY THE FINANCES
            dtgFinance.DataSource = LoadFinances();
            dtgFinance.DataBind();
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            // THIS WILL REDIRECT THE PERSON BACK TO THE LOGIN PAGE
            Session.Clear();
            Session.Abandon();
            Session.Timeout = 1;
            Session.RemoveAll();
            Response.AppendHeader("Refresh", "5;url=Login.aspx");
            Response.Redirect("Login.aspx", true);
        }
        private DataTable LoadFinances()
        {
            //THIS WILL LOAD THE DATA TO THE DATA TABLE
            DataTable report = new DataTable();
            string query = ("SELECT[GROSS_MONTHLY_INCOME],[MONTHLY_TAX_DEDUCTED],[GROCERIES],[WATER_AND_LIGHT],[TRAVEL_COSTS],[TELEPHONE],[OTHER_EXPENSES],[MONTHLY_HOME_RENTAL],[HOME_PURCHASE_PRICE],[HOME_TOTAL_DEPOSIT],[HOME_INTEREST_RATE],[HOME_NUMBER_OF_MONTHS],[VEHICLE_MAKE_AND_MODEL],[VEHICLE_PURCHASE_PRICE],[VEHICLE_TOTAL_DEPOSIT],[VEHICLE_INTEREST_RATE],[VEHICLE_INSURANCE_PREMIUM],[TOTAL_AMOUNT]FROM[Finances].[dbo].[FINANCES]");
            using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog = Finances; Integrated Security = True;"))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader read = cmd.ExecuteReader();
                    report.Load(read);
                    con.Close();
                }
            }
            return report;
        }

        protected void btnChart_Click(object sender, EventArgs e)
        {
            //THIS WILL TAKE THE PERSON TO THE CHART PAGE
            Response.Redirect("Chart.aspx", true);
        }
    }
}