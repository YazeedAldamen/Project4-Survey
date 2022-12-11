<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="questions.aspx.cs" Inherits="Project_4.questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Questoins</title>
    <link href="img/logo.png" rel="icon" />
    <script src="https://kit.fontawesome.com/cd43dd9542.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <link href="navbar.css" rel="stylesheet" />
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <style>
        
        .btnSubmmit {
            width:150px;
            height:40px;
            margin-top:20px;
            float:left;
            margin-bottom:30px;
            border-radius:10px;
            border:3px solid #bb283a;
            background-color:white;
            color:#bb283a;
            font-size:18px;
            transition:.8s;
            cursor:pointer;
        }
            .btnSubmmit:hover {
              transform:scale(104%); 
              color:white;
              background-color:#bb283a;
            }
            h1{
                margin-bottom:30px;
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
       img{
           position:fixed;

       }

        @media (max-width: 768px) {

            img {
                display: none ;
            }
        }
       
        

    </style>
</head>
<body>
    <nav>
        <div class="logo">
            <a href="home.html"><img src="img/logo.png" alt="Alternate Text" style="width:200px" /></a>
        </div>
        <a href="home.html"><div class="log" style="padding: 5px 20px; font-family:Arial;"> Log Out </div></a>
    </nav>
     <br /><br />
    <div class="container">
        <div class="row">
         <div class="row">  <h1><b style="color:#B62828">Welcome</b>  Ahmad! </h1> </div><br /><br />
        </div>
    <div class="row">
        <div class="col-lg-8 col-12">
    <form id="form1" runat="server">
        
            
                
                   
                <div class="form-floating">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Question1"  class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question1</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Question2" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question2</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Question3" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question3</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Question4" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question4</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Question5" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question5</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Question6" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox6" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question6</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Question7" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox7" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question7</label> <br/>
                
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox8" runat="server" placeholder="Question8" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox8" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question8</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox9" runat="server" placeholder="Question9" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox9" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question9</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Question10" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 3px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox10" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <label for="question1" class="form-label">Question10</label> <br/>
                </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btnSubmmit" />
       
    </form>
                    </div>

     <div class="col-lg-4 col-12 image" style="height:100%;">
                         <img src="img/Forms.gif" alt="Alternate Text"/>

      </div>
      
       
        </div>
            </div>
    
        <footer id="footer1">

        <div class="social">
            <p id="rights">© 2022 Survey Perfecto. All Rights Reserved</p>
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
