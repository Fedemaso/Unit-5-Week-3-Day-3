<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pizzeria.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <title></title>
</head>
<body style="background-color: rgb(255, 217, 15)">
       <form id="form1" runat="server">
           
        <div class="text-center">
            <asp:TextBox ID="Username" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Accedi" OnClick="Button1_Click" />
        </div>
        <div id="DatiNonCorretti" class="alert alert-danger" runat="server">
            <p>Inserire Username e Password valide</p>
        </div>
    </form>
</body>
</html>

