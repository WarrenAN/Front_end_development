using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_setManage : System.Web.UI.Page
{
    Users u;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            u = (Users)Session["user"];
        }
       // userList.DataSource = Users.getUserList();
       // userList.DataTextField = "userName";
       // userList.DataValueField = "uid";
       // userList.DataBind();
        if (!IsPostBack)//防止没有正确取到下拉菜单里的值
        {
            userList.DataSource = Users.getUserList();
            userList.DataTextField = "userName";
            userList.DataValueField = "uid";
            userList.DataBind();
            if (Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"].ToString();
                Users n = Users.getUserById(id);
                
                foreach (ListItem x in userList.Items)
                {
                    if (x.Value == n.manageLanmuid.ToString())
                    {
                        x.Selected = true;
                    }
                }
            }
        }


    }
    protected void setManage_Click(object sender, EventArgs e)
    {
        Users n = new Users();
        n.manageLanmuid = Convert.ToInt32(Request.QueryString["id"].ToString());//获取栏目id，根据传的参数id
        int id = Convert.ToInt32(userList.SelectedValue);//得到选择的栏目
        Users p = Users.getUserById(id.ToString());//根据栏目id找user

        n.uid = p.uid;
        n.userName = p.userName;
        n.passWord = p.passWord;

        if (Users.giveUseraddlanmu(n) == true)
            Response.Write("<script>alert('发布成功！')</script>");
        else
            Response.Write("<script>alert('发布失败！')</script>");
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("lanmuManage.aspx");
    }
}