<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="questions.aspx.cs" Inherits="Project_4.questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
     <br /><br />
    <div class="container">
         <div class="row">  <h1><b style="color:#B62828">Welcome</b>  Haya! </h1> </div><br /><br />
    <div class="row">
    <form id="form1" runat="server">
        
            <div class="col-8">
                
                   
                <div class="form-floating">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Question1"  class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question1</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Question2" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question2</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Question3" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question3</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Question4" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question4</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Question5" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question5</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Question6" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question6</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Question7" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question7</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox8" runat="server" placeholder="Question8" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question8</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox9" runat="server" placeholder="Question9" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question9</label> <br/>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Question10" class="form-control form-control-success" style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"></asp:TextBox>
                    <label for="question1" class="form-label">Question10</label> <br/>
                </div>
            </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
       
    </form>
     <div class="col-4">
                         <img src="img/login.gif" alt="Alternate Text" />

      </div>
      </div>
       </div>
</body>
</html>
