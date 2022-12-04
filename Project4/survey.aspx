<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Project_4.survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>


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

        div {
           width:80%;
           margin:0px auto;
        }
        .questionTitle {
          margin-bottom:40px;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:PlaceHolder ID="questionsContainer"  runat="server" >

               
            </asp:PlaceHolder>
        </div>
        <asp:Button ID="btnSubmmit" runat="server" Text="Submit" OnClick="btnSubmmit_Click" />

        

    </form>
    
</body>
</html>
