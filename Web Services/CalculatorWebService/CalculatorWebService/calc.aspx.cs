using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatorWebService
{
    public partial class calc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            localhost.Calculator calc = new localhost.Calculator();
            double a = calc.add(double.Parse(num1.Text.ToString()), double.Parse(num2.Text.ToString()));
            ans.Text = a.ToString();
        }

        protected void sub_Click(object sender, EventArgs e)
        {
            localhost.Calculator calc = new localhost.Calculator();
            double a = calc.sub(double.Parse(num1.Text.ToString()), double.Parse(num2.Text.ToString()));
            ans.Text = a.ToString();
        }

        protected void mul_Click(object sender, EventArgs e)
        {
            localhost.Calculator calc = new localhost.Calculator();
            double a = calc.mul(double.Parse(num1.Text.ToString()), double.Parse(num2.Text.ToString()));
            ans.Text = a.ToString();
        }

        protected void div_Click(object sender, EventArgs e)
        {
            localhost.Calculator calc = new localhost.Calculator();
            double a = calc.div(double.Parse(num1.Text.ToString()), double.Parse(num2.Text.ToString()));
            ans.Text = a.ToString();
        }
    }
}