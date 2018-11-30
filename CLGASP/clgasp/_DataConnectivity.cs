using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


using System.Configuration;

using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



namespace GBVM_Churu
{
    public static class _DataConnectivity
    {
        public static SqlConnection con = new SqlConnection("Data Source = .\\sqlexpress; Initial Catalog=clgasp; Integrated Security = true;");

        public static int _ExNonQ(string str)
        {
            SqlCommand cmd = new SqlCommand(str);
            cmd.Connection = con;
            con.Close();
            con.Open();
            int a= cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        public static DataTable _ExQ(string str)
        {
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}