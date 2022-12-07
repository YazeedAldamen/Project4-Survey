using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_4
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string path = Server.MapPath("img");
            //path += "qusetions.txt";
            //Response.Write(path);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("questoins.aspx");
        }
    }
}