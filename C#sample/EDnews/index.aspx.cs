using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    public string pics;
    public string texts;
    public string links;
    protected void Page_Load(object sender, EventArgs e)
    {
        News.getPics(ref pics,ref texts,ref links);
        gvNews.DataSource = sqlhelper.excuteDataSet("select * from t_news order by addTime DESC");
        gvNews.DataBind();
        gvNews1.DataSource = sqlhelper.excuteDataSet("select * from t_news where lanMuId=1 order by addTime DESC");
        gvNews1.DataBind();
        gvNews2.DataSource = sqlhelper.excuteDataSet("select * from t_news where lanMuId=2 order by addTime DESC");
        gvNews2.DataBind();
        gvNews3.DataSource = sqlhelper.excuteDataSet("select * from t_news where lanMuId=3 order by addTime DESC");
        gvNews3.DataBind();
    }

    protected void sure_Click(object sender, EventArgs e)
    {
        if (Search.Text.Trim() == "")
        {
            Response.Write("<script>alert('输入为空！')</script>");
        }
        else 
        {
            Response.Redirect("Search.aspx?text="+Search.Text);
        }
    }
}