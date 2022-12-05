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
            
            string[] questions = new string[10];
            questions[0] = TextBox1.Text;
            questions[1] = TextBox2.Text;
            questions[2] = TextBox3.Text;
            questions[3] = TextBox4.Text;
            questions[4] = TextBox5.Text;
            questions[5] = TextBox6.Text;
            questions[6] = TextBox7.Text;
            questions[7] = TextBox8.Text;
            questions[8] = TextBox9.Text;
            questions[9] = TextBox10.Text;


            
          

            StreamWriter sw = new StreamWriter(path);
            foreach (string question in questions) { 
                sw.WriteLine(question);

            }

            sw.Flush();
            sw.Close();

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;
            TextBox10.Text = string.Empty;

            Response.Redirect("Dashboard.aspx");

        }

    }
}