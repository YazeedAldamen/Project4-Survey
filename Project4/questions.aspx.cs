using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Project_4
{
    public partial class questions : System.Web.UI.Page
    {
        Question[] questionss = new Question[10];
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            writeFileAdmin();
        }
        public void writeFileAdmin()
        {
            string path = "C:\\Users\\dell\\Project4-Survey\\Project4\\questionfile.txt";
            string[] questionAdmain;
            //for (int i = 0; i < questionss.Length; i++)
            //{
            //    //questionAdmain = File.WriteAllLines(path);

            //    questionss[i] = new Question();
            //    string[] info = questionAdmain[i].Split(',');



            //}
        }
    }
}