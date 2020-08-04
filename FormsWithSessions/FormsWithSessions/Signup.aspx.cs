using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormsWithSessions
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupbtn_Click(object sender, EventArgs e)
        {

            System.Diagnostics.Debug.WriteLine("pressed");
            SessionsTbl values = new SessionsTbl()
            {
                name = inputname.Text,
                age = int.Parse(inputage.Text),
                email = inputemail.Text,
                password = inputpassword.Text
            };

            DBConnectivity connectivity = new DBConnectivity();
            bool response = connectivity.insertRecord(values);
            System.Diagnostics.Debug.WriteLine("added");




            if (response)
            {
                Session["email"] = values.email;
                Session["name"] = values.name;
                Response.Redirect("~/Dashboard.aspx");
            }
            


        }

    }
}