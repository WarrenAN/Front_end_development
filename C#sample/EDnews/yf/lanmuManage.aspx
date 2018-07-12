<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lanmuManage.aspx.cs" Inherits="yf_LanMumanage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{ background-image:url('backgroundimgs/bg003.jpg');background-size: cover;}
        #addLanMu,#backtomanage
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
        #addLanMu {box-shadow: 0.3em 0.3em 0 0 var(--color), inset 0.3em 0.3em 0 0 var(--color);}
        #addLanMu:hover, #addLanMu:focus {box-shadow: 0 0 0 0 var(--hover), inset 6em 3.5em 0 0 var(--hover);}
        #addLanMu {--color: #19bc8b;--hover: #1973bc;}
        
        #backtomanage:hover,#backtomanage:focus{box-shadow: inset 0 -3.25em 0 0 var(--hover);}
        #backtomanage{  --color: #000000;  --hover: #94e458;}

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="addLanMuHeader" style=" height:50px; border:0">
            <div style="float:left">
                <asp:Label ID="bigUser" runat="server"></asp:Label>
            </div>
            <div style="float:right">
                <asp:Button ID="addLanMu" runat="server" Text="添加栏目" onclick="addLanMu_Click" />
            </div>
        </div>
        <div id="showLanMu">
            <div>
                <asp:GridView ID="gvLanMu" runat="server" AutoGenerateColumns="False" 
                    Width="500px" BorderStyle="None">
                    <Columns>
                        <asp:BoundField DataField="lanMuId" HeaderText="栏目ID">
                        <ItemStyle HorizontalAlign="Center" Width="100px" BorderStyle="None" />
                        </asp:BoundField>
                        <asp:BoundField DataField="lanMuName" HeaderText="栏目名称">
                        <ItemStyle HorizontalAlign="Center" Width="100px" BorderStyle="None" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="修改">
                            <ItemTemplate>
                                <asp:LinkButton ID="editLanMu" runat="server" onclick="editLanMu_Click">编辑栏目</asp:LinkButton>
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="delLanMu" runat="server" onclick="delLanMu_Click">删除</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="150px" BorderStyle="None" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="管理">
                            <ItemTemplate>
                                <asp:LinkButton ID="setManage" runat="server" onclick="setManage_Click">设置管理员</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="100px" BorderStyle="None" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
    </div>
        <asp:Button ID="backtomanage" runat="server" onclick="backtomanage_Click" Text="返回" style=" float:right; position:absolute; right:110px" />
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
