<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userManage.aspx.cs" Inherits="yf_userManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理系统</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{ background-image:url('backgroundimgs/bg003.jpg'); background-size: cover;}
        #Button1
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
        #Button1:hover,#Button1:focus {box-shadow: inset 6.5em 0 0 0 var(--hover);}
        #Button1 {--color: #8fc866;--hover: #66c887;}

        #back:hover{ color:Black; background-color:#75faff}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="addUserHeader" style=" height:50px; border:0">
            <div style="float:left">
                <asp:Label ID="bigUser" runat="server" style=" color:White;"></asp:Label>
            </div>
            <div style="float:right">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加用户" />
            </div>
        </div>
    </div>
    <div id="showUser">
            <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" 
        Width="1000px" BorderStyle="None"  >
        <Columns>
            <asp:BoundField DataField="uid" HeaderText="用户编号">
            <ItemStyle HorizontalAlign="Center" Width="100px" BorderStyle="None" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="uid" DataTextField="userName" 
                HeaderText="用户姓名">
            <ItemStyle HorizontalAlign="Center" Width="100px" BorderStyle="None" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="passWord" HeaderText="用户密码">
            <ItemStyle HorizontalAlign="Center" Width="100px" BorderStyle="None" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="修改">
                <ItemTemplate>  
                    <asp:LinkButton ID="editUser" runat="server" onclick="editUser_Click">编辑用户</asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="deleteUser" runat="server" onclick="deleteUser_Click">删除</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle Width="200px" HorizontalAlign="Center" BorderStyle="None" />

            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
    <asp:Button ID="back" runat="server" onclick="back_Click" Text="返回" style=" position:absolute; right:50px;"/>
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
