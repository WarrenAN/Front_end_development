using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_LanMumanage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Write("<script>alert('您尚未登录！')</script>");
            Response.Redirect("index.aspx");
        }
        else
        {
            Users u = (Users)Session["user"];
            bigUser.Text = "欢迎" + u.userName;
        }
        showLanMuList();
    }

    public void showLanMuList()
    {
        gvLanMu.DataSource = Lanmu.getLanMuList();
        gvLanMu.DataBind();
    }
    protected void delLanMu_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        if (Lanmu.delLanMu(id) == true && (Convert.ToInt32(id) != 1))
        {
            Response.Write("<script>alert('删除成功！')</script>");
            showLanMuList();
        }
        else
            Response.Write("<script>alert('删除失败！')</script>");
    }
    protected void editLanMu_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        Response.Redirect("editLanMu.aspx?id=" + id);
    }

    protected void addLanMu_Click(object sender, EventArgs e)
    {
        Response.Redirect("addLanMu.aspx");
    }
    protected void backtomanage_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
    protected void setManage_Click(object sender, EventArgs e)
    {
        //Response.Redirect("setManage.aspx");
       /* LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        Response.Redirect("editUser.aspx?id=" + id);*/
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;//去除点击列的用户id
        Response.Redirect("setManage.aspx?id=" + id);
    }

   
}