using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_4
{
    public partial class survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            addQuestions();


        }

        private void addQuestions() {

            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\questionfile.txt";
            string[] questions = File.ReadAllLines(path);

            //ListItem li = new ListItem();
            //li.Text = 
            //RadioButtonList tbl = new RadioButtonList();
            //tbl.Items.Add

            RadioButtonList[] rbl = new RadioButtonList[10];

            ListItem poor = new ListItem();
            ListItem good = new ListItem();
            ListItem vgood = new ListItem();
            ListItem excellent = new ListItem();
            poor.Text = "Poor";
            good.Text = "Good";
            vgood.Text = "Very Good";
            excellent.Text = "Excellent";

            Label[] labels = new Label[questions.Length];

            for (int i = 0; i < labels.Length; i++) {
                labels[i] = new Label();
                labels[i].Text = questions[i];
                questionsContainer.Controls.Add(labels[i]);

                rbl[i] = new RadioButtonList();
                rbl[i].Items.Add(poor);
                rbl[i].Items.Add(good);
                rbl[i].Items.Add(vgood);
                rbl[i].Items.Add(excellent);

                questionsContainer.Controls.Add(rbl[i]);
            }



        }
    }
}