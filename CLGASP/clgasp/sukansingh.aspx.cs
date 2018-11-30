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
    public partial class sukansingh : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Data Source = .\\sqlexpress; Initial Catalog= clgasp; Integrated Security= true");
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = _DataConnectivity._ExQ("select id,name,[email id],[Reg. no], [Mobile No],dob,Username,Attendence,[Father Name], [Father No], [Mother Name],[parmanent Address],[Residential Address] from detail where username='sukan'");
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            if (TextBox3.Text == TextBox4.Text)
            {
                cmd.CommandText = "update detail set password = '" + TextBox3.Text + "' where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'";
                cmd.Connection = con;
                con.Open();
                int a = cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}