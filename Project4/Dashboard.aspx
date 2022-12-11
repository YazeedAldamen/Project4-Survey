<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project_4.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml%22%3E%22%3E">
<head runat="server">
    <link href="dash.css" rel="stylesheet" />
    <title>Dashboard</title>
    <link href="navbar.css" rel="stylesheet" />
    <style>
        
    
       

    </style>
</head>
<body>
    <% Project_4.Employee emp = (Project_4.Employee)Session["emp"]; %>
    <nav>
        <div class="logo">
            <a href="home.html"><img src="img/logo.png" alt="Alternate Text" style="width:200px" /></a>
        </div>
         <div id="create">
             <a href="questions.aspx" id="Button1">Create A Survey</a>
             <a href="home.html"><div class="log">Log Out</div></a>
        </div>
        
    </nav>
       <%-- <div class="backimg">
           <div class="container"> 
                <img class="firstimg" src="\img\first.png" />
            </div>
        </div>--%>
   
    <div class="container" runat="server"> 
        <h2>Welcome Ahmad</h2>
        <br>
                        
        <div class="card">
            <h3 class="tex">Employee List</h3>
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
            string path = "C:\\Users\\Dell\\Project4-Survey\\Project4\\Texts\\surveyTakers.txt";

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
            <div ><%=info[0]%></div>
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
