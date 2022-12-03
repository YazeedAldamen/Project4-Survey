<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="questions.aspx.cs" Inherits="Project_4.questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
      <h1>Welcome Haya! </h1>
    <div class="container">
    <div class="row">
    <form id="form1" runat="server">
        
            <div class="col-8">
                <div class="form-floating">
           
                    <%
                        for (int i = 1; i <=10; i++)
                        {
                        %>
                            <input type="email" name="<%=i%>" placeholder="Email"  class="form-control" id="question<%=i%>" runat="server"/>
                            <label for="question<%=i%>" class="form-label">Question<%=i%></label> <br/>

                    <% }%>
                </div>

            </div>
               
       
    </form>
     <div class="col-4">

      </div>
      </div>
       </div>
</body>
</html>
