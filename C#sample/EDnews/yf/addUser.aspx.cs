using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_addUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitUser_Click(object sender, EventArgs e)
    {
        if (addUserName.Text.Trim() == "" || addUserPwd.Text.Trim() == "")
        {
            Response.Write("<script>alert('用户名和密码不能为空。');</script>");
        }
        else
        {
            Users n = new Users();
            n.userName = addUserName.Text;
            n.passWord = addUserPwd.Text;
            if (Users.addUser(n) == true)
                Response.Write("<script>alert('添加成功！')</script>");
            else
                Response.Write("<script>alert('添加失败！')</script>");
        }
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("userManage.aspx");
    }
}