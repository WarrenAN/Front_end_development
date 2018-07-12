using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
///Lanmu 的摘要说明
/// </summary>
public class Lanmu
{
	public Lanmu()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public int lanMuId;
    public string lanMuName;

    public static DataSet getLanMuList()//获取用户列表
    {
        string sqlString = "select * from t_lanMu";
        return sqlhelper.excuteDataSet(sqlString);
    }

    public static string getLanMu()//获取动态栏目
    {
        string result = "";
        string sql = "select * from t_lanMu";
        System.Data.SqlClient.SqlDataReader sdr = sqlhelper.ExcuteSqlDataReader(sql, null);
        while (sdr.Read())
        {
            result += "<li><a href='showlist.aspx?id=" + sdr["lanMuId"] + "'>";
            result += sdr["lanMuName"].ToString() + "</a>" + "</li>";
        }
        sdr.Close();
        return result;
    }

    public static bool addLanMu(Lanmu l)
    {
        string sqlString = "insert into t_lanMu (lanMuName) values('" + l.lanMuName + "')";
        return sqlhelper.excuteBool(sqlString);
    }

    public static bool delLanMu(string id)
    {
        string sqlString = "delete from t_lanMu where lanMuId=" + id;
        return sqlhelper.excuteBool(sqlString);
    }

    public static bool editLanMu(Lanmu l)
    {
        string sqlString = "update t_lanMu set lanMuName='" + l.lanMuName + "'  where lanMuId=" + l.lanMuId;
        return sqlhelper.excuteBool(sqlString);
    }
}