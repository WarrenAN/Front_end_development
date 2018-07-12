<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editUser.aspx.cs" Inherits="yf_editUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
         body{ background-image:url('backgroundimgs/bg003.jpg');background-size: cover;}
         #backto,#submitEditUser
         {
              margin: 30px 20px;
              padding: 15px 20px;
              border-radius: 10px;
              border: 2px solid;
              font: 16px 'Open Sans', sans-serif;
              text-transform: uppercase;
              background: none;
              outline: none;
              cursor: pointer;
              -webkit-transition: all .5s;
              transition: all .5s;
          }
          
          #submitEditUser {
              color: #A3F7BF;
              border-color: #A3F7BF;
              background: -webkit-linear-gradient(left, #a3f7bf, #a3f7bf) no-repeat;
              background: linear-gradient(to right, #a3f7bf, #a3f7bf) no-repeat;
              background-size: 0% 100%;
            }
          #submitEditUser:hover {background-size: 100% 100%; color: #27323A;}

          #backto {color: #E4F68F;
              border-color: #E4F68F;
              background: -webkit-linear-gradient(left, #e4f68f, #e4f68f) no-repeat;
              background: linear-gradient(to right, #e4f68f, #e4f68f) no-repeat;
              background-size: 100% 0%;
            }
          #backto:hover {background-size: 100% 100%; color: #27323A;}
          
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div id="editUserDiv">
            <div style=" text-align:center; color:White;">编辑用户</div>
            <div class="addUserClass">
                <img src="loginimages/user_icon_copy.png" />
                <asp:TextBox ID="editUserName" runat="server" style="background-color: transparent;width:150px;  border:0px"></asp:TextBox>
            </div>
            <br />
            <div class="addUserClass">
                <img src="loginimages/lock_icon_copy.png" />
                <asp:TextBox ID="editUserPwd" runat="server" style="background-color: transparent;width:150px;  border:0px"></asp:TextBox>
            </div>
            <asp:Button Text="确定" runat="server" ID="submitEditUser" onclick="submitEditUser_Click"/>
       
            <asp:Button ID="backto" runat="server" onclick="back_Click" Text="返回" />
        </div>
    </div>
    </form>
</body>
</html>
