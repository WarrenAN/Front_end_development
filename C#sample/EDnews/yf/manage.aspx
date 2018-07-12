<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="yf_manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理主页面</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="loginCss/birdbg.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{  background-image:url('backgroundimgs/bg003.jpg');}
        #btnExit,#btnAddNews,#btnMannageLanMu,#userManager,#editpwd
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
        #btnMannageLanMu:hover
        {
             background-color:#75faff;
             color:Black;    
        }
        #editpwd:hover,#editpwd:focus,#btnExit:hover,#btnExit:focus{box-shadow: inset 0 0 0 2em var(--hover);}
        #editpwd,#btnExit{--color: #a972cb;--hover: #cb72aa;}
        
        #btnAddNews:hover,#btnAddNews:focus {-webkit-animation: pulse 1s;animation: pulse 1s;box-shadow: 0 0 0 2em rgba(255, 255, 255, 0);}
        #btnAddNews {--color: #ef6eae;--hover: #ef8f6e;}
        @-webkit-keyframes pulse {0% {box-shadow: 0 0 0 0 var(--hover);}}
        @keyframes pulse {0% {box-shadow: 0 0 0 0 var(--hover);}}
        
        #userManager:hover,#userManager:focus {box-shadow: inset -3.5em 0 0 0 var(--hover), inset 3.5em 0 0 0 var(--hover);}
        #userManager{--color: #ff7f82; --hover: #ffdc7f;}
        
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div id="box" style="padding:10px">
        <div id="adminHeaher">
            <div style="float:left">
                <asp:Label ID="lblUser" runat="server" style="color:White;"></asp:Label>
            </div>
            <div style="float:right">
                <asp:Button ID="btnExit" runat="server" Text="退出系统" onclick="btnExit_Click" />
                <asp:Button ID="editpwd" runat="server" Text="修改密码" onclick="editpwd_Click" />
            </div>
        </div>
        <div class="splitDiv"></div>
        <div id="adminMenu" style=" height:50px;">
    
            <asp:Button ID="btnAddNews" runat="server"  onclick="btnAddNews_Click" Text="发布信息" />

            <asp:Button ID="btnMannageLanMu" runat="server" Text="栏目管理"  onclick="btnMannageLanMu_Click" />
        
            <asp:Button ID="userManager" runat="server" onclick="userManager_Click" Text="用户管理" />
        
        </div>
        <div class="splitDiv">
            
        </div>
        <div id="adminContent">

            <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" 
                Width="1000px" BorderStyle="None"   >
                <Columns>
                    <asp:BoundField DataField="newid" HeaderText="编号">
                    <ControlStyle BorderStyle="None" />
                    <ItemStyle HorizontalAlign="Center" Width="50px" BorderStyle="None" 
                        />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="newid" 
                        DataNavigateUrlFormatString="../shownews.aspx?id={0}" DataTextField="title" 
                        HeaderText="新闻标题" Target="_blank" >
                    <ItemStyle BorderStyle="None" ForeColor="Yellow" />
                    </asp:HyperLinkField>
                    <asp:BoundField DataField="userName" HeaderText="发布者">
                    <ItemStyle HorizontalAlign="Center" Width="60px" BorderStyle="None"  />
                    </asp:BoundField>
                    <asp:BoundField DataField="lanMuName" HeaderText="栏目">
                    <ItemStyle HorizontalAlign="Center" Width="60px" BorderStyle="None"  />
                    </asp:BoundField>
                    <asp:BoundField DataField="hitCount" HeaderText="点击数">
                    <ItemStyle HorizontalAlign="Center" Width="60px" BorderStyle="None"  />
                    </asp:BoundField>
                    <asp:BoundField DataField="addTime" HeaderText="发布时间">
                    <ItemStyle HorizontalAlign="Center" Width="160px" BorderStyle="None"  />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="修改">
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnEditNews" runat="server" onclick="lbtnEditNews_Click">编辑</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="lbtnDeleteNews" runat="server" 
                                onclick="lbtnDeleteNews_Click">删除</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="100px" BorderStyle="None"  />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <canvas></canvas>
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
    <script src="loginJavascript/birdbg.js" type="text/javascript"></script>
    
</body>
</html>
