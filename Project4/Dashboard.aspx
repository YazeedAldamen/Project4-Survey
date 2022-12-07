<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project_4.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml%22%3E%22%3E">
<head runat="server">
    <link href="dash.css" rel="stylesheet" />
    <title>Dashboard</title>
    <link href="navbar.css" rel="stylesheet" />
    <style>
        
        #Button1 {
            border: 2px solid var(--mainColor);
            padding: 8px 20px;
            border-radius: 5px;
            color: var(--mainColor);
            transition: 0.4s;
            margin-top: 15px;
            background-color: white;
            font-weight:bold;
            text-decoration:none;

}

    #Button1:hover {
        color: white;
        background-color: var(--mainColor);
    }
    #create{
        display:flex;
        justify-content:center;
        align-items:center;
        
    }
       
    </style>
</head>
<body>
    <nav>
        <div class="logo">
            <a href="home.html"><img src="img/logo.png" alt="Alternate Text" style="width:200px" /></a>
        </div>
        <a href="home.html"><div class="log">Log Out</div></a>
    </nav>
        <div class="backimg">
           <div class="container"> 
                <img class="firstimg" src="\img\first.png" />
            </div>
        </div>
    <div id="create">
    <a href="questions.aspx" id="Button1">Create A Survey</a>
        </div>
    <div class="container" runat="server"> 
        <div class="card">
            <h1 class="tex">Employee List</h1>
        </div>
        <br />
        <div class="info">
             <div class="all"> #ID </div>
             <div class="all"> Name </div>
             <div class="all"> Email </div>
             <div class="all"> Date </div>
        </div>
        <br />
        <%
            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\surveyTakers.txt";

            string[] lines = System.IO.File.ReadAllLines(path);




            for (int i = 0; i < lines.Length; i++)
            {
                string[] info = lines[i].Split(',');

                HyperLink h = new HyperLink();

                h.Text = info[2];

                h.NavigateUrl = info[1] + ".txt";
                hype.Controls.Add(h);



              %>
        <div class="data">
            <div><%=info[0]%></div>
            <div><%=info[1]%></div>
            <div id="hype" runat="server"></div>
            <div><%=info[3]%></div>
        </div><br>
            <%h.Text = "";
                    }
               %>
        <br />
        <div class="details">
        </div>
      </div>
   
</body>
</html>
