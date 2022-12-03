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
            <div class="logo">Survey</div>
        </nav>
    </div>
    <div class="container" >
        <div class="row">
            <div class="col-6 ting" id="form" >
                <form id="form1" runat="server">
                     <h1>Log In</h1>
                  <div class="form-floating">
                        <input type="email" name="email" placeholder="Email" id="email" class="form-control"  runat="server"/>
                        <label class="form-label" for="email">Email</label>
                    </div>
                    <br />
                    <div class="form-floating">
                        <input type="password" name="password" placeholder="Password" id="password" class="form-control"  runat="server" />
                        <label class="form-label" for="password">Password</label>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
                </form>
            </div>
            <div class="col-6 ting">
                <img src="img/login.gif" alt="Alternate Text" />
            </div>
        </div>
    </div>
    <script src="JavaScript.js"></script>
</body>
</html>
