<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Project_4.survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        span {
            display:block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:PlaceHolder ID="questionsContainer" runat="server">

                <asp:RadioButtonList ID="RadioButtonList1" runat="server">

                </asp:RadioButtonList>
            </asp:PlaceHolder>
        </div>
        
    </form>
</body>
</html>
