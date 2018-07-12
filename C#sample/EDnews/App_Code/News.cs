using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
///News 的摘要说明
/// </summary>
public class News
{
	public News()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public int newid;
    public string title;
    public string contents;
    public int uid;
    public DateTime addTime;
    public int lanMuId;
    public int hitCount;
    public string img;

    public static void getPics(ref string pics,ref string texts,ref string links)
    {
        string sqlString = "select top 5 newid,title,img from t_news where img<>'' order by addTime DESC";
        SqlConnection con = sqlhelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        int k=0;
        while (sdr.Read())
        {
            pics += sdr[2].ToString()+"|";
            texts += sdr[1].ToString() + "|";
            links += "showNews.aspx?id=" +sdr[0].ToString()+ "|";
        }
        pics = pics.Substring(0, pics.Length - 1);
        texts = texts.Substring(0, texts.Length - 1);
        links = links.Substring(0, links.Length - 1);
    }

    /*public static string getLanMu()
    {
        string result = "";
        string sql = "select * from t_lanMu";
        System.Data.SqlClient.SqlDataReader sdr = sqlhelper.ExcuteSqlDataReader(sql, null);
        while (sdr.Read())
        {
            result += "<li><a href='showlist.aspx?id=" + sdr["lanMuId"] + "'>";
            result += sdr["lanMuName"].ToString() + "</a>"+"</li>";
        }
        sdr.Close();
        return result;
    }*/

   /* public static string getManage()//Get Manager To Manage Lanmu
    {
        string result = "";
        string sql = "select * from t_user";
        System.Data.SqlClient.SqlDataReader sdr = sqlhelper.ExcuteSqlDataReader(sql, null);
        while (sdr.Read())
        {
            result += "<li><a  href='../showlist.aspx?id=" + sdr["uid"] + "'>";
            result += sdr["userName"].ToString() + "</a>" + "</li>";
        }
        sdr.Close();
        return result;
    }*/

    public static News getNewsByText(string text)
    {
        News news = new News();
        string sqlString = "select * from news where title like  '%" + text + "%' order by addTime DESC";
        SqlConnection con = sqlhelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            news.newid = Convert.ToInt32(sdr[0]);
            news.title = Convert.ToString(sdr[1]);
            news.contents = Convert.ToString(sdr[2]);
            news.newid = Convert.ToInt32(sdr[3]);
            news.addTime = Convert.ToDateTime(sdr[4]);
            news.lanMuId = Convert.ToInt32(sdr[5]);
            news.hitCount = Convert.ToInt32(sdr[6]);
        }
        con.Close();
        return news;
    }


    public static News getNewsById(string id)
    {
        News news = new News();
        string sqlString="select * from t_news where newid="+id;
        SqlConnection con = sqlhelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString,con);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            news.newid = Convert.ToInt32(sdr[0]);
            news.title = Convert.ToString(sdr[1]);
            news.contents = Convert.ToString(sdr[2]);
            news.newid = Convert.ToInt32(sdr[3]);
            news.addTime =Convert.ToDateTime(sdr[4]);
            news.lanMuId = Convert.ToInt32(sdr[5]);
            news.hitCount = Convert.ToInt32(sdr[6]);
        }
        con.Close();
        return news;
    }

    public static void addHitCount(string id)
    {
        string sqlString = "update t_news set hitCount=hitCount+1 where newid="+id;
        sqlhelper.excuteSql(sqlString);
    }

   /*public static DataSet getLanMuList()
    {
        string sqlString = "select * from t_lanMu";
        return sqlhelper.excuteDataSet(sqlString);
    }*/

    /*public static DataSet getUserList()
    {
        string sqlString = "select * from t_user";
        return sqlhelper.excuteDataSet(sqlString);
    }*/

    public static DataSet getNewsList()
    {
        string sqlString = "select * from View_News order by addTime DESC";
        return sqlhelper.excuteDataSet(sqlString);
    }

    public static DataSet getNewsBymanageId(string id)//管理员管理的页面显示相应栏目的新闻
    {
        string sqlString = "select * from t_user,t_news,t_lanMu where t_user.manageLanmuid=t_news.lanMuId and t_news.lanMuId=t_lanMu.lanMuId and t_user.uid="+id;
        return sqlhelper.excuteDataSet(sqlString);
    }

    public static bool addNews(News n)
    {
        string sqlString = "insert into t_news (title,contents,uid,addTime,lanMuId,hitCount,img) values('"+n.title+"','"+n.contents+"',"+n.uid+",'"+n.addTime+"',"+n.lanMuId+","+n.hitCount+",'"+n.img+"')";
        return sqlhelper.excuteBool(sqlString);
    }

    public static bool editNews(News n)
    {
        string sqlString = "update t_news set title='" + n.title + "', contents='" + n.contents + "', uid=" + n.uid + ", lanMuId=" + n.lanMuId+",img='"+n.img+"' where newid=" +n.newid; 
        return sqlhelper.excuteBool(sqlString);
    }

    public static bool delNews(string id)
    {
        string sqlString = "delete from t_news where newid=" + id;
        return sqlhelper.excuteBool(sqlString);
    }


}