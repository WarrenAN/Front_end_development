using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shownews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!=null)
        {
            string id=Request.QueryString["id"].ToString();
            News.addHitCount(id);
            News n = News.getNewsById(id);
            lblTitle.Text = n.title;
            lblContent.Text = n.contents;
            lblAddTime.Text = "发布时间："+n.addTime.ToString();
            lblAuthor.Text ="发布者："+ n.uid.ToString();
            lblHitCount.Text ="点击次数"+ n.hitCount;
        }
    }
    protected void shownewssure_Click(object sender, EventArgs e)
    {
        if (shownewssure.Text.Trim() == "")
        {
            Response.Write("<script>alert('输入为空！')</script>");
        }
        else
        {
            Response.Redirect("Search.aspx?text=" + shownewsSearch.Text);
        }
    }
}