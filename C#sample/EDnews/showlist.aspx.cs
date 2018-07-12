using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class showlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            //将栏目id作为参数，根据传递的栏目id值显示
            string id = Request.QueryString["id"].ToString();
            SqlConnection con = sqlhelper.createCon();
            con.Open();
            string sql = "select * from t_news where lanMuId=@lanMuId order by hitCount DESC";
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = sql;
            cmd.Parameters.Add(new SqlParameter("@lanMuId", id));
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            con.Close();

            gvHotNews.DataSource = ds;
            gvHotNews.DataBind();

            gvNews.DataSource = sqlhelper.excuteDataSet("select * from t_news order by addTime DESC");
            gvNews.DataBind();
            //gvHotNews.DataSource = sqlhelper.excuteDataSet();
           // gvHotNews.DataBind();
        }
    }
}