using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["text"] != null)
        {
            string search = Request.QueryString["text"];
            SearchHotNews.DataSource = sqlhelper.excuteDataSet("select * from t_news where title like  '%" + search + "%' or contents like '%" + search + "%' order by hitCount DESC");
            SearchHotNews.DataBind();

            SearchNews.DataSource = sqlhelper.excuteDataSet("select * from t_news where title like  '%" + search + "%' or contents like '%" + search + "%' order by addTime DESC");
            SearchNews.DataBind();
        }
        else
        {
            
        }
    }
}