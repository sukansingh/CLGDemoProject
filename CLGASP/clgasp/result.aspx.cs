using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace clgasp
{
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sem = dlsem.SelectedValue.ToString();
            DataTable dt = _DataConnectivity._ExQ("select * from results where rollno = '"+TextBox1.Text+"'and semester = '"+ sem +"'");
            if (dt.Rows.Count == 1)
            {
                DetailsView1.DataSource = dt;
                DetailsView1.DataBind();
            }
            else
            {
                Response.Write("Not Found!!!!!");
            }
        }
    }
}