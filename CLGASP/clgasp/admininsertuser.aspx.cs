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
    public partial class admininsertuser : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Data Source = .\\sqlexpress; Initial Catalog= clgasp; Integrated Security= true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string dob = year.SelectedValue.ToString() + "-" + month.SelectedValue.ToString() + "-" + date.SelectedValue.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into detail values('" + tbid.Text + "', '" + tbname.Text + "', '" + tbemail.Text + "', '" + tbmbl.Text + "', '" + dob + "', '" + tbpadd.Text + "', '" + tbradd.Text + "', '" + tbusr.Text + "', '" + tbpass.Text + "', '" + tbatt.Text + "', '" + tbfthr.Text + "', '" + tbmthr.Text + "', '" + tbfthrn.Text + "', '" + tbreg.Text + "')";
            cmd.Connection = con;
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}