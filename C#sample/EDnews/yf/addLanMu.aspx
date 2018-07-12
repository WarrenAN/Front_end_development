<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addLanMu.aspx.cs" Inherits="yf_addLanMu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
    body{ background-image:url('backgroundimgs/bg003.jpg');background-size: cover;}
        #submitLanMu,#backlanmu
        {
            color:White;
            width:100px;
            height: 35px;
	        outline: none;
	        margin:10px 50px;
	        border: none;
	        background-color:   transparent;
	        line-height: 35px;
	        border-radius: 50px;
	        position: relative;
	        border: rgba(255,255,255,0.2) 2px solid ;
	        color: var(--color);
            -webkit-transition: 0.25s;
            transition: 0.25s;
          }
          
        #submitLanMu:hover,#submitLanMu:focus{box-shadow: inset 0 0 0 2em var(--hover);}
        #submitLanMu{--color: #a972cb;--hover: #cb72aa;}
        
        #backlanmu:hover,#backlanmu:focus {box-shadow: inset -3.5em 0 0 0 var(--hover), inset 3.5em 0 0 0 var(--hover);}
        #backlanmu{--color: #ff7f82; --hover: #ffdc7f;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div id="addLanMuDiv">
            <div style=" text-align:center">增加栏目</div>
            <div class="addUserClass">
                <asp:Label ID="Label1" Text="栏目名：" runat="server" />
                <asp:TextBox ID="addLanMuName" runat="server" style="background-color: transparent;width:150px;  border:0px"></asp:TextBox>
            </div>
            <br />
            <asp:Button Text="确定" runat="server" ID="submitLanMu" 
                onclick="submitUser_Click" />
             <asp:Button ID="backlanmu" runat="server" onclick="back_Click" Text="返回" />
        </div>
    </div>
    </form>
</body>
</html>
