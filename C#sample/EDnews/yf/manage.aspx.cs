using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_manage : System.Web.UI.Page
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
            Users u =(Users)Session["user"];
            lblUser.Text = "Welcome " + u.userName;
            if (u.uid != 1)
            {
                userManager.Visible = false;
                btnMannageLanMu.Visible = false;
                showManageNewsList(u.uid.ToString());
            }
            else
            {
                showNewsList();
            }
        }
    }

    public void showManageNewsList(string id)
    {
        gvNews.DataSource = News.getNewsBymanageId(id);
        gvNews.DataBind();
    }

    public void showNewsList()
    {
        gvNews.DataSource = News.getNewsList();
        gvNews.DataBind();
    }

    protected void btnExit_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Write("<script>window.close()</script>");
    }
    protected void btnAddNews_Click(object sender, EventArgs e)
    {
        Response.Redirect("addNews.aspx");
    }
    protected void lbtnEditNews_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        Response.Redirect("editeNews.aspx?id="+id);
    }
    protected void lbtnDeleteNews_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        if (News.delNews(id)==true)
        {
            Response.Write("<script>alert('删除成功！')</script>");
            showNewsList();
        }
        else
        {
            Response.Write("<script>alert('删除失败！')</script>");
        }
    }
    protected void userManager_Click(object sender, EventArgs e)
    {
        Users u =(Users)Session["user"];
        if (u.uid == 1)
            Response.Redirect("userManage.aspx");
        else 
            Response.Write("<script>alert('您非最高管理员,无权更改！')</script>");
    }
    protected void btnMannageLanMu_Click(object sender, EventArgs e)
    {
        Users u = (Users)Session["user"];
        if (u.uid == 1)
            Response.Redirect("lanmuManage.aspx");
        else 
            Response.Write("<script>alert('您非最高管理员,无权更改！')</script>");
    }
    protected void editpwd_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        Response.Redirect("editUser.aspx?id=" + id);
    }
}