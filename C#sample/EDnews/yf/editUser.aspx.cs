using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_editUser : System.Web.UI.Page
{
    Users u;
    protected void Page_Load(object sender, EventArgs e) 
    {
        if (Session["user"] == null)
            Response.Redirect("index.aspx");
        else
            u = (Users)Session["user"];
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"].ToString();
                Users n = Users.getUserById(id);
                editUserName.Text = n.userName;
                editUserPwd.Text = n.passWord;
            }
        }
    }
    protected void submitEditUser_Click(object sender, EventArgs e)//修改密码
    {
        Users n = new Users();
        n.userName = editUserName.Text;
        n.passWord = editUserPwd.Text;
        n.uid = Convert.ToInt32(Request.QueryString["id"].ToString());
        if (Users.editUser(n) == true)
            Response.Write("<script>alert('修改成功！')</script>");
        else
            Response.Write("<script>alert('修改失败！')</script>");
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}