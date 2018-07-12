<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editeNews.aspx.cs" Inherits="yf_editeNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>编辑新闻页面</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="kde/themes/default/default.css" />
	<link rel="stylesheet" href="kde/plugins/code/prettify.css" />
	<script charset="utf-8" src="kde/kindeditor.js"></script>
	<script charset="utf-8" src="kde/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kde/plugins/code/prettify.js"></script>
	<script>
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content1', {
	            cssPath: 'kde/plugins/code/prettify.css',
	            uploadJson: 'kde/upload_json.ashx',
	            fileManagerJson: 'kde/file_manager_json.ashx',
	            allowFileManager: true,
	            afterCreate: function () {
	                var self = this;
	                K.ctrl(document, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	                K.ctrl(self.edit.doc, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	            }
	        });
	        prettyPrint();
	    });
	</script>
</head>
<body>
    <form id="example" runat="server">
    <div id="box">
        <div style="width:1000px;margin:10px 0;border:1px #ccc solid;">标题:<asp:TextBox 
                ID="txtTitle" runat="server"></asp:TextBox>
        </div>
        <div style="width:1000px;margin:10px 0;border:1px #ccc solid;">栏目:<asp:DropDownList 
                ID="ddlLanMu" runat="server">
            </asp:DropDownList>
        &nbsp; 主页图片:<asp:TextBox ID="txtImgUrl" runat="server" Width="475px"></asp:TextBox>
        </div>
        <div style="width:1000px;margin:10px 0;border:1px #ccc solid;">
            <textarea id="content1" cols="100" rows="8" style="width:1000px;height:500px;visibility:hidden;" runat="server"></textarea>
            <br />
            <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" Text="返回" />
&nbsp;<asp:Button ID="btnEdit" runat="server" Text="提交内容" onclick="btnEdit_Click" /> (提交快捷键: Ctrl + Enter)
        </div>
    </div>
    </form>
</body>
</html>
