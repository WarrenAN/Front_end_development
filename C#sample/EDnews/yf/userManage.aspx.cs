using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_userManage : System.Web.UI.Page
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
        showUserList();
    }
    public void showUserList()
    {
        gvUser.DataSource = Users.getUserList();
        gvUser.DataBind();
    }
    protected void editUser_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        Response.Redirect("editUser.aspx?id=" + id);
    }
    protected void deleteUser_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        if (Users.delUser(id) == true&&(Convert.ToInt32(id)!=1))
        {
            Response.Write("<script>alert('删除成功！')</script>");
            showUserList();
        }
        else
        {
            Response.Write("<script>alert('删除失败！')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addUser.aspx");
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}