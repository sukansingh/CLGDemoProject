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
    public partial class admin : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Data Source = .\\sqlexpress; Initial Catalog= clgasp; Integrated Security= true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select id,name,[reg. no],[email id],username,password from detail where username = '" + TextBox1.Text + "' or password = '" + TextBox2.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            cmd.Connection = con;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "Not Found!!!";
                Label1.Visible = !Label1.Visible;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            DataTable dt = _DataConnectivity._ExQ("select * from detail");
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            _DataConnectivity._ExNonQ("delete from detail where [Reg. No] = '" + TextBox5.Text + "'");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = !TextBox1.Visible;
            TextBox2.Visible = !TextBox2.Visible;
            Button1.Visible = !Button1.Visible;
        }



        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            TextBox5.Visible = !TextBox5.Visible;
            Button3.Visible = !Button3.Visible;
        }






        protected void btnReg_Click1(object sender, EventArgs e)
        {
            try
            {

                DataTable dt = _DataConnectivity._ExQ("select * from detail where [Reg. No] = '" + tbreg.Text + "'");
                tbmdfyid.Text = dt.Rows[0]["id"].ToString();
                tbmdfyname.Text = dt.Rows[0]["Name"].ToString();
                tbmdfyemail.Text = dt.Rows[0]["Email Id"].ToString();
                tbmdfymbl.Text = dt.Rows[0]["Mobile No"].ToString();
                tbmdfydob.Text = dt.Rows[0]["dob"].ToString();
                tbmdfypadd.Text = dt.Rows[0]["Parmanent Address"].ToString();
                tbmdfyradd.Text = dt.Rows[0]["Residential Address"].ToString();
                tbmdfyusr.Text = dt.Rows[0]["Username"].ToString();
                tbmdfypass.Text = dt.Rows[0]["Password"].ToString();
                tbmdfyatt.Text = dt.Rows[0]["Attendence"].ToString();
                tbmdfyfthr.Text = dt.Rows[0]["Father Name"].ToString();
                tbmdfymthr.Text = dt.Rows[0]["Mother Name"].ToString();
                tbmdfyfthrn.Text = dt.Rows[0]["Father No"].ToString();
                tbmdfyreg.Text = dt.Rows[0]["Reg. No"].ToString();
            }
            catch { }


        }

        protected void btnmdfy_Click(object sender, EventArgs e)
        {
            _DataConnectivity._ExNonQ("update detail set id = '" + tbmdfyid.Text + "', Name = '" + tbmdfyname.Text + "', [email Id] = '" + tbmdfyemail.Text + "', [Mobile No] = '" + tbmdfymbl.Text + "', dob = '" + tbmdfydob.Text + "', [Parmanent Address] = '" + tbmdfypadd.Text + "', [Residential Address] = '" + tbmdfyradd.Text + "', Username = '" + tbmdfyusr.Text + "', Password = '" + tbmdfypass.Text + "', Attendence = '" + tbmdfyatt.Text + "', [Father Name] = '" + tbmdfyfthr.Text + "', [Mother Name] = '" + tbmdfymthr.Text + "', [Father No] = '" + tbmdfyfthrn.Text + "', [Reg. No] = '" + tbmdfyreg.Text + "' where [Reg. No] ='" + tbmdfyreg.Text + "'");

        }

        protected void lbtninsert_Click(object sender, EventArgs e)
        {
            tbinsertid.Visible = !tbinsertid.Visible;
            tbinsertreg.Visible = !tbinsertreg.Visible;
            tbinsert.Visible = !tbinsert.Visible;
            tbinsertval.Visible = !tbinsertval.Visible;
            btninsert.Visible = !btninsert.Visible;
        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            _DataConnectivity._ExNonQ("update detail set " + tbinsert.Text + " = '" + tbinsertval.Text + "' where Id = '" + tbinsertid.Text + "' and [Reg. No] = '" + tbinsertreg.Text + "'");
        }



    }
}