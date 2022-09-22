using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

// Troelsen, A. and Japiske, P., n.d. C# 6.0 And The .NET 4.6 Framework. 7th ed. New York: Apress Media.
//W3schools.com. 2020. C# Tutorial (C Sharp). [online] Available at: <https://www.w3schools.com/cs/default.asp> [Accessed 10 October 2020].
//ProgrammingKnowledge, 2013. WPF Tutorial. [video] Available at: <https://www.youtube.com/channel/UCs6nmQViDpUw0nuIx9c_WvA> [Accessed 10 October 2020].

namespace FinanceWeb
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            //THIS WILL LOAD THE DATA ONTO THE CHART
            LoadData();
            cTotal.DataBind();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //THIS WILL TAKE THE PERSON TO THE DATA PAGE
            Response.Redirect("Data.aspx", true);
        }

        void LoadData()
        {
            //THIS WILL LOAD ALL THE DATA TO THE CHART
            DataTable dt = new DataTable();
            string query = ("SELECT[GROSS_MONTHLY_INCOME],[MONTHLY_TAX_DEDUCTED],[GROCERIES],[WATER_AND_LIGHT],[TRAVEL_COSTS],[TELEPHONE],[OTHER_EXPENSES]FROM[Finances].[dbo].[FINANCES]");
            using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog = Finances; Integrated Security = True;"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);    
                con.Close();
            }
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            cTotal.Series[0].Points.DataBindXY(x, y);
            cTotal.Series[0].ChartType = SeriesChartType.Bar;
        }
    }
}