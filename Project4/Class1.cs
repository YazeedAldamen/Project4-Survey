using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_4
{
    public class Employee
    {
        string email;
        string  id;
        string name;
        bool hadSurvey;



        public string Email { get => email; set => email = value; }
        public string Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public bool HadSurvey { get => hadSurvey; set => hadSurvey = value; }

        public Employee()
        {
        }

        public Employee(string email, string id, string name , bool hadSurvey)
        {
            Email = email;
            Id = id;
            Name = name;
            HadSurvey = hadSurvey;


        }
        public bool login(string email , string id )
        {
            if(this.Email==email && this.Id == id)
            {
                return true;
            }
                return false;
        }
    }
    public class Question {
        string questionss;

        public Question(string question)
        {
            this.questionss = question;
        }
            public Question()
        {

        }
        public string Questionss { get => questionss; set => questionss = value; }

        
    }
}