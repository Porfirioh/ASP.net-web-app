using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assignment_Repeater
{
    public partial class RepeaterDemoCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addcomment_Click(object sender, EventArgs e)
        {
            string conn = @"data source=hp-folio-1040; initial catalog=comments; integrated security=true;";
            SqlConnection sqlconn = new SqlConnection(conn);

            string n = name.Text;
            string s = subject.Text;
            string c = comment.Text;

            sqlconn.Open();

            string query = "insert into tbl_add_comment(Name, Subject, Comment, Date) values('" + n + "', '" + s + "', '" + c + "', '" + DateTime.Now + "')";
            SqlCommand cmd = new SqlCommand(query, sqlconn);
            cmd.ExecuteNonQuery();
            sqlconn.Close();
            Response.Redirect(Request.RawUrl);
            name.Text = "";
            subject.Text = "";
            comment.Text = "";
        }
    }
}