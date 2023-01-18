using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week7
{
    public partial class Position : System.Web.UI.Page
    {
        private SqlConnection conobj=null;
        private SqlCommand cmd=null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
           
            using (conobj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString))
            {
                using (cmd = new SqlCommand("IPD", conobj))
                {
                    cmd.Parameters.AddWithValue("@PositionCode", TxtPositionCode.Text);
                    cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
                    cmd.Parameters.AddWithValue("@Year", TxtYear.SelectedValue);
                    cmd.Parameters.AddWithValue("@BudgetStrength", TxtBudgetedStrength.Text);
                    cmd.Parameters.AddWithValue("CurrentStrength", TxtCurrentStrength.Text); if (conobj.State == ConnectionState.Closed)
                    {
                        conobj.Open();
                    }
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        LblMessage.Text = "Position Added Successfully";
                    }
                    else
                    {
                        LblMessage.Text = "Error";
                    }
                    cmd.Dispose();
                    conobj.Close();
                }
            }


        }

        protected void BtnRset_Click(object sender, EventArgs e)
        {
            TxtPositionCode.Text = "";
            TxtDescription.Text= "";
            TxtYear.Text = "";
            TxtBudgetedStrength.Text = "";
            TxtCurrentStrength.Text= "";
        }

    }
}