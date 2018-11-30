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
    public partial class _Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data source = .\\sqlexpress; Initial Catalog= clgasp; Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from detail where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            cmd.Connection = con;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Response.Redirect("sukansingh.aspx");
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Incorrect";
            }
        }
        public void nonquery()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into detail values('" + TextBox1.Text + "' '" + TextBox2.Text + "')";
            cmd.Connection = con;
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}