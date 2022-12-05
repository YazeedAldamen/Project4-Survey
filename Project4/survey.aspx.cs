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
        string[] questions;

        Employee emp;
        protected void Page_Load(object sender, EventArgs e)
        {
           emp = (Employee)Session["emp"];
            
                        //File.AppendText("C:\\Users\\Dell\\Project4-Survey\\Project4\\gg.txt");
            
            addQuestions();
        }


        private void addQuestions() {



            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\questionfile.txt";
             questions = File.ReadAllLines(path);





            //radio buttons to hold choises 
            RadioButtonList[] rbl = new RadioButtonList[10];
            ListItem[] poor = new ListItem[10];
            ListItem[] good = new ListItem[10];
            ListItem[] vgood = new ListItem[10];
            ListItem[] excellent = new ListItem[10];
            RequiredFieldValidator[] validators= new RequiredFieldValidator[10];

            for (int i = 0; i < 10; i++) {
                poor[i] = new ListItem();
                poor[i].Text = "Poor";
                good[i] = new ListItem();
                good[i].Text = "Good";
                vgood[i] = new ListItem();
                vgood[i].Text = "Very Good";
                excellent[i] = new ListItem();
                excellent[i].Text = "Excellent";
            }


            //label to hold the questions
            Label[] labels = new Label[questions.Length];

            //div for every question
            //PlaceHolder[] phs = new PlaceHolder[questions.Length];
            
            HtmlGenericControl[] divs = new HtmlGenericControl[10];
            for (int i = 0; i < labels.Length; i++) {

                //phs[i] = new PlaceHolder();

                labels[i] = new Label();
                labels[i].Text = questions[i];
                labels[i].Attributes.Add("class", "questionTitle");

                rbl[i] = new RadioButtonList();
                rbl[i].ID = i.ToString();
                rbl[i].Items.Add(poor[i]);
                rbl[i].Items.Add(good[i]);
                rbl[i].Items.Add(vgood[i]);
                rbl[i].Items.Add(excellent[i]);

                validators[i] = new RequiredFieldValidator();
                validators[i].ControlToValidate = i.ToString();
                validators[i].ErrorMessage = "*Required";
                validators[i].CssClass = "errorMessage";


                //phs[i].Controls.Add(rbl[i]);
                divs[i] = new HtmlGenericControl();
                divs[i].Attributes.Add("class", "div");
                divs[i].Controls.Add(labels[i]);
                divs[i].Controls.Add(rbl[i]);
                divs[i].Controls.Add(validators[i]);
                questionsContainer.Controls.Add(divs[i]);
            }



        }

        protected void btnSubmmit_Click(object sender, EventArgs e)
        {

            string[] answers = new string[10];
            for (int i = 0; i < 10; i++) {
                RadioButtonList l = (RadioButtonList)questionsContainer.FindControl($"{i}");
                answers[i] = l.Text;
            }

            saveEmpAns(answers);

            Response.Redirect("thankyou.html");

        }

         //saving employee answers in a file 
        private  void saveEmpAns(string[] answers) {


            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\" + emp.Name+ ".txt";



            string all = null;
            int i = 0;
            foreach (string answer in answers)
            {
                all += questions[i] + " " + answer + "\n";
                i++;
            }

            File.WriteAllText(path , all);

            surveyTakers();

        }

        private void surveyTakers() {
            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\surveyTakers.txt";
            string info = $"{emp.Id},{emp.Name},{emp.Email},{DateTime.Now}\n";

            File.AppendAllText(path,info);
            hadSurvey();
        }

        void hadSurvey()
        {


            emp.HadSurvey = true;

            Employee[] emps = (Employee[])Session["emps"];
            for (int i = 0; i < emps.Length; i++)
            {
                Response.Write(emps[i].HadSurvey);
            }


            //write the employees again to file 
            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\TextFile1.txt";
            string all = null;
            foreach (Employee emp in emps)
            {
                all += $"{emp.Name},{emp.Id},{emp.Email},{emp.HadSurvey}" + "\n";

            }

            File.WriteAllText(path, all);
        }
    }
}