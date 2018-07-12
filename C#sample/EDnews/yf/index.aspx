<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="yf_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EDnews</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="loginCss/component.css" rel="stylesheet" type="text/css" />
    <link href="loginCss/normalize.css" rel="stylesheet" type="text/css" />
</head>
<body id="btnLogin">
 <div id="large-header" class="large-header">
 <canvas id="demo-canvas"></canvas>
    <form id="form1" runat="server">
        
            <div class="logo_box">
                <h3>欢迎登录EDnews新闻管理</h3>
                <div class="input_outer">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="txtUserName" runat="server" Width="72px" style="background-color: transparent;width:243px; "></asp:TextBox>
                </div>
                <div class="input_outer">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtPassWord" runat="server" Width="72px" TextMode="Password" style="background-color: transparent;width:243px;" ></asp:TextBox>
                </div>
        
                <div class="mb2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" />
                </div>
            </div>
    </form>
</div>
    <script type="text/javascript" src="loginJavascript/TweenLite.min.js"></script>
    <script type="text/javascript" src="loginJavascript/EasePack.min.js"></script>
	<script type="text/javascript" src="loginJavascript/rAF.js"></script>
	<script type="text/javascript" src="loginJavascript/demo-1.js"></script>
</body>
</html>