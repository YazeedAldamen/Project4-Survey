<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Project_4.survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Survey</title>
    <script src="https://kit.fontawesome.com/cd43dd9542.js" crossorigin="anonymous"></script>
    <link href="navbar.css" rel="stylesheet" />
    <style>
        * {
    margin:0;
    padding:0;
    box-sizing: border-box;
    font-size:20px;

}
        :root {
    --mainColor: #B62828;
}
        body {
         padding:0px;
         margin:0px;
        }

        table {
           margin-top:30px;
        }
        .div {
            display:block;
           
           margin-top:10px;
           padding:40px;
           border-radius:20px;
           box-shadow:5px 5px 10px gray;
           
        }
        img {
          width:100%; 
        }
        .div label {
           font-weight:800;
           color:#bb283a;
        }
        .question {
           width:80%;
           margin:0px auto;
        }
        
        .questionTitle {
          margin-bottom:40px;
          font-size:25px;
          font-weight:800;
          text-align:left;
        }

        #btnSubmmit {
            background-color:white;
            width:150px;
            height:60px;
            margin-top:20px;
            float:right;
            margin-bottom:30px;
            border-radius:10px;
            border:2px solid #bb283a  ;
            color:#bb283a;
            font-weight:800;
            font-size:20px;
            transition:.8s;
            cursor:pointer;

        }
        #btnSubmmit:hover {
           transform:scale(104%); 
           background-color:#bb283a;
           color:white;
        }

        .header {
            width:80%;
           margin:0px auto;
          display:flex;
          justify-content:space-between;
          align-items:center;
        }

        .header .text {
            width:50%; 
            
         }
            .header .text h1 {
              font-size:41px;
            }
            .header .text p {
              font-size:20px;
            }
        .header .image {
            width:40%;
          }

        #footer1 {
            background-color: #B62828;
            height: 60px;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            bottom: 0px;
        }

        #rights {
            color: #FFFFFF;
            font-size: 15px;
        }
        .errorMessage{
            color:grey;
            position:relative;
            top:15px;
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
    <form id="form1" runat="server">
        <div class="cont">

            <div class="header">                
                <div class="text">
                    <h1>About Survey</h1>
                    <br />
                    <p>To the employee survey! This survey contains 1 page, and will take approximately 2 minutes to fill out.
                The purpose of this survey is to gather information about overall work environment.to the employee survey! This survey contains 1 page, and will take approximately 2 minutes to fill out.
                The purpose of this survey is to gather information about overall work environment.</p>
                </div>   
                <div class="image"><img src="img\good.gif"/></div>
            </div>

            <div class="question">
                <asp:PlaceHolder ID="questionsContainer"  runat="server" >
                
                </asp:PlaceHolder>
                <asp:Button ID="btnSubmmit" runat="server" Text="Submit" OnClick="btnSubmmit_Click" />
            </div>
            


            
        
    </div>
    </form>
            <footer id="footer1">

        <div class="social">
            <p id="rights">© 2022 Social Hawk. All Rights Reserved</p>
            <div class="inst" style="display:flex; justify-content:center; gap:10px; margin-top:10px;">
                <a class="icons" href="https://web.facebook.com/musab.alghannam.37/" target="_blank" style="text-decoration:none; color:white;"> <i class="fa-brands fa-facebook-f"></i></a>
                <a class="icons" href="https://www.linkedin.com/in/musab-ghannam-0a8284253/" target="_blank" style="text-decoration:none; color:white;"> <i class="fa-brands fa-linkedin-in"></i></a>
                <a class="icons" href=""> <i class="fa-brands fa-twitter" style="text-decoration:none; color:white;"></i></a>
                <a class="icons" href="https://www.instagram.com/musab_ghannam/" target="_blank" style="text-decoration:none; color:white;"> <i class="fa-brands fa-square-instagram"></i></a>
            </div>
        </div>

    </footer>

</body>
</html>
