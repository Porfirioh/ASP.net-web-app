using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Web_Service_Demo
{
    /// <summary>
    /// Summary description for daytodays
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class daytodays : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public int converttodays(int day, int month, int year)
        {
            DateTime dt = new DateTime(year, month, day);
            int datetodays = DateTime.Now.Subtract(dt).Days;
            return datetodays;
        }
    }
}
