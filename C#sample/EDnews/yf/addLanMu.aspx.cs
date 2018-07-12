using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_addLanMu : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitUser_Click(object sender, EventArgs e)
    {
        Lanmu l = new Lanmu();
        l.lanMuName = addLanMuName.Text;
        if (Lanmu.addLanMu(l) == true )
            Response.Write("<script>alert('添加成功！')</script>");
        else
            Response.Write("<script>alert('添加失败！')</script>");
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("lanmuManage.aspx");
    }
}