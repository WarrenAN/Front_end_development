<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shownews.aspx.cs" Inherits="shownews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>查看新闻页面</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #shownewssure{color:White;
            width:100px;
            height: 43px;
	        outline: none;
	        
	        line-height: 43px;
	        border-radius: 50px;
	        border:  1px solid #000;
	        position: relative;
	        border: rgba(255,255,255,0.2) 2px solid ;
	        color: var(--color);
            -webkit-transition: 0.25s;
            transition: 0.25s;
            }
        #shownewssure:hover,#shownewssure:focus {-webkit-animation: pulse 1s;animation: pulse 1s;box-shadow: 0 0 0 2em rgba(255, 255, 255, 0);}
        #shownewssure {--color: #ef6eae;--hover: #ef8f6e;}
        @-webkit-keyframes pulse {0% {box-shadow: 0 0 0 0 var(--hover);}}
        @keyframes pulse {0% {box-shadow: 0 0 0 0 var(--hover);}}
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="box">
        <div id="header"></div>
        <div class="splitDiv"></div>

        <div id="showLanmu">
            <div id="lanMuList" >
                <%=Lanmu.getLanMu()%>
                <asp:Button ID="shownewssure" runat="server" Text="搜索" 
                    onclick="shownewssure_Click" />
                <asp:TextBox ID="shownewsSearch" runat="server" style="background-color: transparent;width:200px; border:1px solid  black; border-radius: 50px; text-align:center"></asp:TextBox>
                 
            </div>
        </div>
        <div class="splitDiv"></div>

        <div id="main">
            <div id="newsTitle">
                <asp:Label ID="lblTitle" runat="server"></asp:Label>
            </div>
            <div class="line"></div>
            <div id="newsInfo">
                <asp:Label ID="lblAddTime" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblHitCount" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblAuthor" runat="server"></asp:Label>
            </div>
            <div id="newsContent">
                <asp:Label ID="lblContent" runat="server"></asp:Label>
            </div>
        <div class="splitDiv"></div>
        <div id="divLinks">友情链接</div>
        <span id="QLinks">
              <ul style=" border:1px solid #ccc;  margin-top:10px; height:70px">
                <li><a href='http://rsc.cslg.cn/rsc/' target='_blank'><img src="yf/backgroundimgs/rsc.jpg"  border='0' width='106px' height='46px'></a></li>
                <li><a href='http://www.hep.com.cn/service/xuanshu' target='_blank'><img src='yf/backgroundimgs/gdjycbs.jpg' border='0' width='106px' height='46px'></a></li>
                <li><a href='http://kjc.cslg.edu.cn/' target='_blank'><img src='yf/backgroundimgs/kxjs.jpg' border='0' width='106px' height='46px'></a></li>
                <li><a href='http://jwc.cslg.cn/jwc/' target='_blank'><img src='yf/backgroundimgs/jwc.jpg' border='0' width='106px' height='46px'></a></li>
                <li><a href='http://www.icourses.cn/' target='_blank'><img src='yf/backgroundimgs/akc.jpg' border='0' width='106px' height='46px'></a></li>
                <li><a href='http://ctl.nju.edu.cn/yanjiuhui/' target='_blank'><img src='yf/backgroundimgs/jsgx.jpg' border='0' width='106px' height='46px'></a></li>
              </ul>
         </span>
         <div class="splitDiv"></div>
           
        <a href="#top"><img src="images/backTop.png" alt="Alternate Text" id="backTop" title="回到顶部" /></a>
        <div id="footer">
        <div >
                版权所有：@ 2018 姚锋 地址：江苏省常熟市南三环路99号 <br />
                联系电话：188xxxxxxxx 邮政编码：215500 <br />
            [<a href="yf/index.aspx" target="_blank">后台管理</a>]
        </div>
    </div>
    </form>
</body>
</html>
