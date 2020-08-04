using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormsWithSessions
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string email = inputemail.Text;
            string password = inputpassword.Text;
            DBConnectivity connectivity = new DBConnectivity();
            SessionsTbl valuesFromDb = connectivity.getOneRecord(email);

            if (valuesFromDb.email.Equals(email) && valuesFromDb.password.Equals(password))
            {
                Session["email"] = valuesFromDb.email;
                Session["name"] = valuesFromDb.name;
                Response.Redirect("~/Dashboard.aspx");
            }
        }
    }
}