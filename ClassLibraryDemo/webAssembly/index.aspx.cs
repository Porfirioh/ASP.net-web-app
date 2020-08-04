using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryDemo;

namespace webAssembly
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            ClassLibraryDemo.PRIVATEASSEMBLY _pvt = new ClassLibraryDemo.PRIVATEASSEMBLY();
            ans.Text = Convert.ToString(_pvt.Addition(Convert.ToInt16(num1.Text), Convert.ToInt16(num2.Text)));
        }

        protected void sub_Click(object sender, EventArgs e)
        {
            ClassLibraryDemo.PRIVATEASSEMBLY _pvt = new ClassLibraryDemo.PRIVATEASSEMBLY();
            ans.Text = Convert.ToString(_pvt.Subtraction(Convert.ToInt16(num1.Text), Convert.ToInt16(num2.Text)));
        }
    }
}