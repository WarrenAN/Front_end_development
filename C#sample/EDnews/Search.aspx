<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="box">
        <div id="header"></div>
        <div class="splitDiv"></div>
        <div id="showLanmu">
             <%=Lanmu.getLanMu()%>
        </div>
        <div class="splitDiv"></div>
        <div id="main">
            <div id="left" style="width:400px;">
                
                <asp:GridView ID="SearchHotNews" runat="server" AutoGenerateColumns="False" 
                    ShowHeader="False" BorderStyle="None" CellPadding="0" GridLines ="None" 
                    Width="400px">
                    <Columns>
                        <asp:HyperLinkField 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            DataNavigateUrlFields="newid" Target="_blank">
                        <ItemStyle Width="420px" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="hitCount" HeaderText="点击量">
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:[yy-MM-dd]}" 
                            HeaderText="发布时间">
                        <ItemStyle Width="120px" HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                
            </div>
            <div id="right" style="width:580px;">
                <asp:GridView ID="SearchNews" runat="server" AutoGenerateColumns="False" 
                    ShowHeader="False" BorderStyle="None" CellPadding="0" GridLines ="None" 
                    Width="580px">
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
