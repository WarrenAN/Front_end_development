using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtPassWord.Text.Trim() == "" || txtUserName.Text.Trim() == "")
            Response.Write("<script>alert('用户名或密码不能为空！')</script>");
        else
        {
            string sqlString="select count(*) from t_user where userName='"+txtUserName.Text.Trim()+"' and passWord='"+txtPassWord.Text.Trim()+"'";
            if (sqlhelper.excuteInt(sqlString) == 1)
            {
                Users u = new Users();
                u.userName = txtUserName.Text;
                u.uid = Users.getuidByName(u.userName);
                Session["user"] = u;
                Response.Redirect("manage.aspx?id="+u.uid);
            }
            else
            {
                Response.Write("<script>alert('用户名或密码不正确！')</script>");
            }
        }
    }
}