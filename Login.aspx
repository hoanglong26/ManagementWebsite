<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/datepicker3.css" rel="stylesheet">
    <link href="resources/css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1>Admin Panel </h1>

    <!-- Login Container -->
    <section class="login">
        <form id="form1" runat="server" method="put">

            <!-- The Username Field -->
            <label for="username">
                Username
                                                   
                <asp:TextBox runat="server" ID="uname" placeholder="Username" class="form-control"></asp:TextBox>

                <%--<input type="text" name="username" id="username" />--%>
            </label>

            <!-- The Password Field -->
            <label for="password">
                Password
                                                   
                <asp:TextBox runat="server" ID="pass" placeholder="Password" TextMode="Password" class="form-control"></asp:TextBox>

                <%--<input type="password" name="password" id="password" />--%>
            </label>


            <!-- Clearn both sides -->
            <div class="clear"></div>

            <!-- Recover Button -->
            <a href="Login.aspx"><input type="button" value="Reset" /></a>
            <%--<asp:Button ID="Button2" runat="server"  Text="Reset"/>--%>
            <!-- The Login Button -->
            <asp:Button ID="Button1" runat="server"  Text="Login" OnClick="submit_Click" />

            <%--        <input type="submit" value="Login" />--%>
        </form>
    </section>

</body>
</html>
