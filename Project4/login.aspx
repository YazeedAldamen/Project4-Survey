<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project_4.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="login.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/72467fec0a.js" crossorigin="anonymous"></script>
    <title>Log In</title>
    
</head>
<body>
    <div class="container-fluid">
        <nav>
            <div class="logo">
    <a href="home.html"><img src="img/logo.png" alt="Alternate Text" style="width:200px"/></a></div>
        </nav>
    </div>
    <br />
    <br />
    <div class="container"  >
        <div class="row">
            <div class="col-lg-6 col-12 ting" id="form" style= "box-shadow:  2px 2px 4px #B62828, 1px 2px 4px #B62828 ; height: calc(30.1rem + 30px);  margin:20px 0px ; border-radius:15px ;" >
                
                        <form id="form1" runat="server">
                            <div style="margin:28px 0px;" >
                                <h1 style="margin-bottom:12px; font-family:'Comic Sans MS'; color : #B62828 ;">Log In</h1>
                            
                            </div>
                            <div class="form-floating from-floating-sm">
                                <input type="email" name="email" placeholder="Email" id="email" class="form-control " style="width:100%; padding:10px;  height: calc(2.1rem + 30px); " runat="server"/>
                                <label class="form-label" for="email" >Email</label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <input type="password" name="password" placeholder="Password" id="password" class="form-control" style=" height: calc(2.1rem + 30px); " runat="server" />
                                <label class="form-label" for="password">Password</label>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click"  style="width:500px;"/>
                            <br />
                            
                            <br />
                            <asp:Label Visible="false" Text=" wrong email or password !" runat="server" class="alert alert-danger" role="alert" style="margin:10px 10px;"  ID="myDIV" />
                        </form>
                  
            </div>
            <div class="col-lg-6 col-12 ting">
                <img src="img/login.gif" alt="Alternate Text"  id="img"/>
            </div>
        </div>
    </div>
    <script src="JavaScript.js"></script>
</body>
</html>
