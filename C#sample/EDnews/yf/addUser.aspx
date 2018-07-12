<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addUser.aspx.cs" Inherits="yf_addUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       html,body {padding:0;margin:0}
       canvas { display:block}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="addUserDiv">
            <div style=" text-align:center; color:White; ">增加用户</div>
            
            <div class="addUserClass">
                <img src="loginimages/user_icon_copy.png" />
                <asp:TextBox ID="addUserName" runat="server" style="background-color: transparent;width:150px;  border:0px; color: White;"></asp:TextBox>
            </div>
          
            <br />
            <div class="addUserClass">
                <img src="loginimages/lock_icon_copy.png" />
                &nbsp;<asp:TextBox ID="addUserPwd" runat="server" style="background-color: transparent;width:150px; border:0px; color: White;"></asp:TextBox>
            </div>
            <div class="mb2">
                <asp:Button  Text="确定" runat="server" ID="submitUser" onclick="submitUser_Click" />
            </div>
            <div class="mb2">
                <asp:Button ID="back" runat="server" onclick="back_Click" Text="返回" />
            </div>
        </div>
    </div>
    </form>
    <canvas></canvas>
    <script src="loginJavascript/hailang.js" type="text/javascript"></script>
</body>
</html>
