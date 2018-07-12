<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setManage.aspx.cs" Inherits="yf_setManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
            body{ background-image:url('backgroundimgs/bg003.jpg');}
            #setManage,#backTo
            {
              margin : 30px 20px;
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
               #setManage  {color: #A3F7BF;
              border-color: #A3F7BF;
              background: -webkit-linear-gradient(left, #a3f7bf, #a3f7bf) no-repeat;
              background: linear-gradient(to right, #a3f7bf, #a3f7bf) no-repeat;
              background-size: 0% 100%;}
             #setManage:hover {background-size: 100% 100%; color: #27323A;}
            
             #backTo{color: #E4F68F;
              border-color: #E4F68F;
              background: -webkit-linear-gradient(left, #e4f68f, #e4f68f) no-repeat;
              background: linear-gradient(to right, #e4f68f, #e4f68f) no-repeat;
              background-size: 100% 0%;}
             #backTo:hover,#backTo:focus {background-size: 100% 100%; color: #27323A;}
            
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="manageList">
             <div style=" text-align:center; color:White;">设置管理员</div></br>
             <asp:DropDownList ID="userList" runat="server" style="background-color: transparent;width:100px; height:30px ">
             </asp:DropDownList>

             </br>
             <asp:Button ID="setManage" runat="server" onclick="setManage_Click" Text="确认" />
             <asp:Button ID="backTo" runat="server" onclick="back_Click" Text="返回" />
        </div>
    </div>
    </form>
    <div id="backfooter">
        <div >
                版权所有：@ 2018 姚锋 地址：江苏省常熟市南三环路99号 <br />
                联系电话：188xxxxxxxx 邮政编码：215500 <br />
            [<a href="yf/index.aspx" target="_blank">后台管理</a>]
        </div>
    </div>
</body>
</html>
