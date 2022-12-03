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
                
                    <%
                        for (int i = 1; i <=10; i++)
                        {
                        %>
                <div class="form-floating">
           
                            <input type="text" name="<%=i%>" placeholder="Email"  class="form-control form-control-success" id="question<%=i%>"  style= "box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(255, 0, 0, 0.6);"/>
                            <label for="question<%=i%>" class="form-label">Question<%=i%></label> <br/>

                  
                </div>
                  <% }%>
            </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
       
    </form>
     <div class="col-4">

      </div>
      </div>
       </div>
</body>
</html>
