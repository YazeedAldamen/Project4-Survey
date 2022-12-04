using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Project_4
{
    public partial class survey : System.Web.UI.Page
    {
        Employee ee;
        protected void Page_Load(object sender, EventArgs e)
        {
           ee = (Employee)Session["emp"];

            Response.Write(ee.Name);
            addQuestions();
        }

        private void addQuestions() {

            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\questionfile.txt";
            string[] questions = File.ReadAllLines(path);

            

            //div for every question
            PlaceHolder[] ph = new PlaceHolder[10];
            
            

            //radio buttons to hold choises 
            RadioButtonList[] rbl = new RadioButtonList[10];
            ListItem[] poor = new ListItem[10];
            ListItem[] good = new ListItem[10];
            ListItem[] vgood = new ListItem[10];
            ListItem[] excellent = new ListItem[10];

            for (int i = 0; i < 10; i++) {
                poor[i] = new ListItem();
                poor[i].Text = "poor";
                good[i] = new ListItem();
                good[i].Text = "good";
                vgood[i] = new ListItem();
                vgood[i].Text = "very good";
                excellent[i] = new ListItem();
                excellent[i].Text = "Excellent";
            }
            

            //label to hold the questions
            Label[] labels = new Label[questions.Length];
            PlaceHolder[] phs = new PlaceHolder[questions.Length];
            
            HtmlGenericControl[] divs = new HtmlGenericControl[10];
            for (int i = 0; i < labels.Length; i++) {

                phs[i] = new PlaceHolder();

                labels[i] = new Label();
                labels[i].Text = questions[i];
                labels[i].Attributes.Add("class", "questionTitle");

                rbl[i] = new RadioButtonList();
                rbl[i].ID = $"{i}";
                rbl[i].Items.Add(poor[i]);
                rbl[i].Items.Add(good[i]);
                rbl[i].Items.Add(vgood[i]);
                rbl[i].Items.Add(excellent[i]);



                phs[i].Controls.Add(rbl[i]);
                phs[i].Controls.Add(rbl[i]);
                divs[i] = new HtmlGenericControl();
                divs[i].Attributes.Add("class", "div");
                divs[i].Controls.Add(labels[i]);
                divs[i].Controls.Add(rbl[i]);
                questionsContainer.Controls.Add(divs[i]);
            }



        }

        protected void btnSubmmit_Click(object sender, EventArgs e)
        {

            for (int i = 0; i < 10; i++) {
                RadioButtonList l = (RadioButtonList)questionsContainer.FindControl($"{i}");
                Response.Write(l.Text);
            }
        }
    }
}