using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Service_Demo
{
    public partial class WebServiceForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            localhost.daytodays age = new localhost.daytodays();
            int d = int.Parse(TextBox1.Text.ToString());
            int m = int.Parse(TextBox2.Text.ToString());
            int y = int.Parse(TextBox3.Text.ToString());
            int a = age.converttodays(d, m, y);
            Label2.Text = "You are currently " + a + " days old";
        }
    }
}