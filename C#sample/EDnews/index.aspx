<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>欢迎访问EDnews新闻网</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #sure{color:White;
            width:100px;
            height: 43px;
	       
	        border: 1px solid bule;
	       
	        line-height: 43px;
	        border-radius: 50px;
	        position: relative;
	        border: rgba(255,255,255,0.2) 2px solid ;
	        color: var(--color);
            -webkit-transition: 0.25s;
            transition: 0.25s;
            }
        #sure:hover,#sure:focus {-webkit-animation: pulse 1s;animation: pulse 1s;box-shadow: 0 0 0 2em rgba(255, 255, 255, 0);}
        #sure {--color: #ef6eae;--hover: #ef8f6e;}
        @-webkit-keyframes pulse {0% {box-shadow: 0 0 0 0 var(--hover);}}
        @keyframes pulse {0% {box-shadow: 0 0 0 0 var(--hover);}}
            
    </style>
</head>
<body>
            
    <form id="form1" runat="server">
    <div id="box">
        <div id="header"></div>
        <div class="splitDiv">
        </div>
        
        <div id="showLanmu">
            <div id="lanMuList" >
                <%=Lanmu.getLanMu()%>
                <asp:Button ID="sure" runat="server" Text="搜索" onclick="sure_Click" />
                <asp:TextBox ID="Search" runat="server" style="background-color: transparent;width:200px; border:1px solid  black; border-radius: 50px; text-align:center"></asp:TextBox>
                
            </div>
        </div>
        <div class="splitDiv"></div>
        <div id="main">
            <div id="left">
                <script type="text/javascript" language="JavaScript">
                    var focus_width = 490
                    var focus_height = 280
                    var text_height = 20
                    var swf_height = focus_height + text_height
                    var pics = "<%=pics %>";
                    var links = "<%=links %>";
                    var texts = "<%=texts %>";
                    document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="' + focus_width + '" height="' + swf_height + '">');
                    document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/playswf.swf"><param name="quality" value="high"><param name="bgcolor" value="#FFFFFF">');
                    document.write('<param name="menu" value="false"/><param name=wmode value="opaque"/>');
                    document.write('<param name="FlashVars" value="pics=' + pics + '&links=' + links + '&texts=' + texts + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '">');
                    document.write('<embed src="images/playswf.swf" wmode="opaque" FlashVars="pics=' + pics + '&links=' + links + '&texts=' + texts + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '" menu="false" bgcolor="#FFFFFF" quality="high" width="' + focus_width + '" height="' + swf_height + '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
                    document.write('</object>');       
                </script>
            </div>
            <div id="right">
                <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" 
                    ShowHeader="False" BorderStyle="None" CellPadding="0" GridLines ="None">
                    <Columns>
                        <asp:HyperLinkField 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            DataNavigateUrlFields="newid" Target="_blank">
                        <ItemStyle Width="420px" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:[yy-MM-dd]}">
                        <ItemStyle Width="100px" HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div class="splitDiv"></div>
        <div id="divLeft">

            <div class="smallTitle" style="border-radius: 50px; background-color:#75faff">娱乐</div>
            <br />
                <asp:GridView ID="gvNews1" runat="server" AutoGenerateColumns="False" 
                    ShowHeader="False" BorderStyle="None" CellPadding="0" 
                GridLines ="None" Width="320px">
                    <Columns>
                        <asp:HyperLinkField 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            DataNavigateUrlFields="newid" Target="_blank">
                        <ItemStyle Width="230px" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:[yy-MM-dd]}">
                        <ItemStyle Width="100px" HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        <div id="divMiddle">
            <div class="smallTitle" style="border-radius: 50px; background-color:#75faff">文化</div>
            <br />
                <asp:GridView ID="gvNews2" runat="server" AutoGenerateColumns="False" 
                    ShowHeader="False" BorderStyle="None" CellPadding="0" 
                GridLines ="None" Width="320px">
                    <Columns>
                        <asp:HyperLinkField 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            DataNavigateUrlFields="newid" Target="_blank">
                        <ItemStyle Width="200px" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:[yy-MM-dd]}">
                        <ItemStyle Width="100px" HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        <div id="divRight">
            <div class="smallTitle" style="border-radius: 50px; background-color:#75faff">体育</div>
            <br />
                <asp:GridView ID="gvNews3" runat="server" AutoGenerateColumns="False" 
                    ShowHeader="False" BorderStyle="None" CellPadding="0" 
                GridLines ="None" Width="320px">
                    <Columns>
                        <asp:HyperLinkField 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            DataNavigateUrlFields="newid" Target="_blank">
                        <ItemStyle Width="200px" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:[yy-MM-dd]}">
                        <ItemStyle Width="100px" HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
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
