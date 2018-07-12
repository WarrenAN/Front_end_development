using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_editLanMu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitEditLanMu_Click(object sender, EventArgs e)
    {
        Lanmu l = new Lanmu();
        l.lanMuName = editLanMu.Text;
        l.lanMuId = Convert.ToInt32(Request.QueryString["id"].ToString());
        if (Lanmu.editLanMu(l) == true)
            Response.Write("<script>alert('修改成功！')</script>");
        else
            Response.Write("<script>alert('修改失败！')</script>");
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("lanmuManage.aspx");
    }
}