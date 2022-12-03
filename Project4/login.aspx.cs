using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_4
{
    public partial class login : System.Web.UI.Page
    {
        Employee[] employees = new Employee[10];
        protected void Page_Load(object sender, EventArgs e)
        {
            readFile();
          
        }
        
        protected void Button_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string em = email.Value;
            string pass =  password.Value;
             for( int i=0; i<employees.Length;i++)
            {
                if (em=="haya@gmail.com"&&pass== "5896")

                {
                    Response.Redirect("admin.aspx");
                }
               else if (employees[i].login( em , pass) ){

                    Response.Redirect("survey.aspx");
                }
                
                
            }
            Response.Write("<script> alert('wrong email or password ') </script>");
        }

        public void readFile()
        {
            string path = "C:\\Users\\dell\\Project4-Survey\\Project4\\TextFile1.txt";
            string[] lines = File.ReadAllLines(path);
            for(int i=0; i<lines.Length; i++) 
            {
                employees[i] = new Employee();  
                string [] info = lines[i].Split(',');
                employees[i].Name = info[0];
                employees[i].Id =  info[1];
                employees [i].Email= info[2];
                employees[i].HadSurvey = Convert.ToBoolean(info[3]);
              
             
            
            }


        }
    }
}