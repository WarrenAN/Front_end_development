<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editLanMu.aspx.cs" Inherits="yf_editLanMu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
         body{ background-image:url('backgroundimgs/bg003.jpg');background-size: cover;}
         #submitEditLanMu,#backtolanmu
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
          
          #submitEditLanMu,#backtolanmu {color: #CEFFF1;border-color: #CEFFF1; overflow: hidden; position: relative;}
          #submitEditLanMu:hover,#backtolanmu:hover {color: #27323A;}
          
         
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div id="editLanMuDiv" style=" height:150px; border:0">
            <div style=" text-align:center; color:White">编辑栏目</div>
            <div class="addUserClass">
                <asp:Label ID="Label1" Text="栏目名：" runat="server" />
                <asp:TextBox ID="editLanMu" runat="server" style="background-color: transparent;width:150px;  border:0px"></asp:TextBox>
            </div>
            
            <asp:Button Text="确定" runat="server" ID="submitEditLanMu" onclick="submitEditLanMu_Click" />
            <asp:Button ID="backtolanmu" runat="server" Text="返回" onclick="back_Click" />
        </div>
    </div>
    </form>
</body>
</html>
